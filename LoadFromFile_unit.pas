unit LoadFromFile_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, MemTableDataEh, DB, MemTableEh, GridsEh,
  DBGridEh, StdCtrls, ComCtrls, Math, DBCtrls, FMTBcd, SqlExpr, DataDriverEh,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TForm_LoadFromFile = class(TForm)
    Panel_LoadFromFile: TPanel;
    Panel_LoadDatasTableBack: TPanel;
    Panel_LoadDatasTable: TPanel;
    DBGrid_LoadDatas: TDBGridEh;
    DS_LoadDatas: TDataSource;
    MemTable_LoadDatas: TMemTableEh;
    MemTable_LoadDatasIDENTIFIKATOR: TStringField;
    MemTable_LoadDatasSHIROTA_STR: TStringField;
    MemTable_LoadDatasDOLGOTA_STR: TStringField;
    MemTable_LoadDatasBAROMETR_VISOTA: TFloatField;
    MemTable_LoadDatasGEOMETR_VISOTA: TFloatField;
    MemTable_LoadDatasVREMYA_ZAPISI: TDateTimeField;
    Panel_LoadState: TPanel;
    Panel_LoadStateInfo: TPanel;
    Label_LoadStateInfo: TLabel;
    PrBar_LoadState: TProgressBar;
    Panel_LoadDatasButtons: TPanel;
    Btn_Cancel: TButton;
    Shape_Split1: TShape;
    Btn_SaveDatasToDB: TButton;
    Shape_Split2: TShape;
    MemTable_LoadDatasSHIROTA_DEC: TFloatField;
    MemTable_LoadDatasDOLGOTA_DEC: TFloatField;
    MemTable_LoadDatasRAZNOST_BG_VISOT: TFloatField;
    Btn_Delete: TButton;
    DBNavigator_LoadDatas: TDBNavigator;
    Timer_LoadDatas: TTimer;
    Shape_Split3: TShape;
    MemTable_LoadDatasREYS: TStringField;
    MemTable_LoadDatasTIP_BORTA: TStringField;
    MemTable_LoadDatasDOSTOVERNOST: TIntegerField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    MemTable_LoadDatasAIR_SPEED: TFloatField;
    procedure Btn_DeleteClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Timer_LoadDatasTimer(Sender: TObject);
    procedure Btn_SaveDatasToDBClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadDatasFromFile(TypeLoad: integer; FileName: string);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  Form_LoadFromFile: TForm_LoadFromFile;
  FSPEC: string;
  UAP: record
    I021_010, I021_040, I021_161, I021_015, I021_071, I021_130, I021_131: string;
    I021_072, I021_150, I021_151, I021_080, I021_073, I021_074, I021_075: string;
    I021_076, I021_140, I021_090, I021_210, I021_070, I021_230, I021_145: string;
    I021_152, I021_200, I021_155, I021_157, I021_160, I021_165, I021_077: string;
    I021_170, I021_020, I021_220, I021_146, I021_148, I021_110, I021_016: string;
    I021_008, I021_271, I021_132, I021_250, I021_260, I021_400, I021_295: string;
  end;
  Target: record
    IDENTIFIKATOR, SHIROTA_STR, DOLGOTA_STR, REYS, TIP_BORTA: string;
    SHIROTA_DEC, DOLGOTA_DEC, BAROMETR_VISOTA, GEOMETR_VISOTA, RAZNOST_BG_VISOT,AIR_SPEED: double;
    VREMYA_ZAPISI: TDateTime;
    DOSTOVERNOST: integer;
  end;
  isLoadingFromFile, isSavingToDB, AfterSave: boolean;
  dDateDBegin: TDate;
  dTimeDBegin, dTimeDEnd: TTime;
  dDataTimeD, dDataTimeDBegin, dDataTimeDEnd: TDateTime;
  wYearDBegin, wMonthDBegin, wDayDBegin: word;
  wHoursDBegin, wMinutesDBegin, wSecondsDBegin, wMSecondsDBegin, wPeriod: word;
  wHoursDEnd, wMinutesDEnd, wSecondsDEnd, wMSecondsDEnd: word;

implementation

uses MonitoringRVSM_main_unit, ParamLoadFromFile_unit,
     DB_unit, DataBase_unit,
     DBTargets_unit, DBSessions_unit, ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_LoadFromFile.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_DataBase.Handle;
end;
//---- ������� �������� �����.��������� �� ��������� ������ � ���������� -------
function GeoCoordSToDec(s: string): double;
var
  grad, min, sec, dec: double;
  p: integer;
begin
  if (pos(#176, s)>0) and (pos(#39, s)>0) and (pos(#34, s)>0) then
  begin
    p:=pos(#176, s);

    grad:=StrToFloat(copy(s, 1, p-1));
    Delete(s, 1, p);
    p:=pos(#39, s);
    min:=StrToFloat(copy(s, 1, p-1));
    Delete(s, 1, p);
    p:=pos(#34, s);
    sec:=StrToFloat(copy(s, 1, p-1));
    Delete(s, 1, p);
    if (grad>=360) or (min>=60) or (sec>=60) then
    begin
      MessageDlg('�� ������ ������ ������ ���������.', mtWarning, [mbOK], 0);
      dec:=-1;
      result:=dec;
    end
    else
    begin
      dec:=grad+(min/60)+(sec/3600);
      result:=RoundTo(dec, -7);
    end;
  end
  else result:=StrToFloat(s);
end;
//---- ������� �������� �����.��������� �� ���������� ������ � ��������� -------
function GeoCoordDecToS(ex: double): string;
var
  mins, secs: string;
  grad, min, sec, dec: double;
begin
  dec:=ex;
  grad:=Trunc(dec);
  dec:=(dec-grad)*60;
  min:=Trunc(dec);
  dec:=(dec-min)*60;
  sec:=Round(dec);
  if sec=60 then
  begin
    sec:=0;
    min:=min+1;
  end;
  if min=60 then
  begin
    min:=0;
    grad:=grad+1;
  end;
  if grad=360 then grad:=0;

  if min<10 then mins:='0'+FloatToStr(min)
    else mins:=FloatToStr(min);
  if sec<10 then secs:='0'+FloatToStr(sec)
    else secs:=FloatToStr(sec);
  result:=FloatToStr(grad)+#176+mins+#39+secs+#34;
end;
//---- ������� �������� Bin � Hex ----------------------------------------------
function BinToHex(Bin: string): string;
var
   k: byte;
   s: string;
   Hex: string;
begin
   Hex:='';
   while Length(Bin) mod 4<>0 do Bin:='0'+Bin;
   for k:=0 to Length(Bin) div 4-1 do
   begin
      s:=Copy(Bin, k*4+1, 4);
      if s='0000' then s:='0'
        else if s='0001' then s:='1'
          else if s='0010' then s:='2'
            else if s='0011' then s:='3'
              else if s='0100' then s:='4'
                else if s='0101' then s:='5'
                  else if s='0110' then s:='6'
                    else if s='0111' then s:='7'
                      else if s='1000' then s:='8'
                        else if s='1001' then s:='9'
                          else if s='1010' then s:='A'
                            else if s='1011' then s:='B'
                              else if s='1100' then s:='C'
                                else if s='1101' then s:='D'
                                  else if s='1110' then s:='E'
                                    else if s='1111' then s:='F';
      Hex:=Hex+s;
   end;
   BinToHex:=Hex;
end;
//---- ������� �������� Hex � Bin ----------------------------------------------
function HexToBin(Hex: string): string;
var
   Bin: string;
   k: byte;
Begin
   Bin:='';
   For k:=1 to Length(Hex) do
      if Hex[k]='0' then Bin:=Bin+'0000'
        else if Hex[k]='1' then Bin:=Bin+'0001'
          else if Hex[k]='2' then Bin:=Bin+'0010'
            else if Hex[k]='3' then Bin:=Bin+'0011'
              else if Hex[k]='4' then Bin:=Bin+'0100'
                else if Hex[k]='5' then Bin:=Bin+'0101'
                  else if Hex[k]='6' then Bin:=Bin+'0110'
                    else if Hex[k]='7' then Bin:=Bin+'0111'
                      else if Hex[k]='8' then Bin:=Bin+'1000'
                        else if Hex[k]='9' then Bin:=Bin+'1001'
                          else if Hex[k]='A' then Bin:=Bin+'1010'
                            else if Hex[k]='B' then Bin:=Bin+'1011'
                              else if Hex[k]='C' then Bin:=Bin+'1100'
                                else if Hex[k]='D' then Bin:=Bin+'1101'
                                  else if Hex[k]='E' then Bin:=Bin+'1110'
                                    else if Hex[k]='F' then Bin:=Bin+'1111';
   HexToBin:=Bin;
end;
//---- ������� �������� Bin � Dec ----------------------------------------------
function BinToDec(Bin: string): Longint;
var
  j: Longint;
  Error: boolean;
  Dec: Longint;
begin
  Dec:=0;
  Error:=false;
  for j:=1 to Length(Bin) do
  begin
    if (Bin[j]<>'0') and (Bin[j]<>'1') then Error := True;
    if Bin[j]='1' then Dec:=Dec+(1 shl (Length(Bin)-j));
  end;
  if Error then BinToDec:=0
    else BinToDec:=Dec;
end;
//----
function GetDigit(ALetter: char): string;
begin
  case ALetter of
    '0'..'9': result:=ALetter;
    'A':result:='10';
    'B':result:='11';
    'C':result:='12';
    'D':result:='13';
    'E':result:='14';
    'F':result:='15';
  end;
end;

function HexToDec(Hex: string): integer;
var
  i, Num: integer;
begin
  Num:=0;
  for i:=Length(Hex) downto 1 do
  begin
    Num:=Num+trunc(power(16, Length(Hex)-i))*StrToInt(GetDigit(Hex[i]));
  end;
  result:=Num;
end;
//---- ������� ������ ������ �� ��������� --------------------------------------
function Read_ADS_B_Reports(Mess: string): boolean;
const
  IA_5: array [0..15, 0..3] of string =
    (('#', 'P', '_', '0'),
     ('A', 'Q', '#', '1'),
     ('B', 'R', '#', '2'),
     ('C', 'S', '#', '3'),
     ('D', 'T', '#', '4'),
     ('E', 'U', '#', '5'),
     ('F', 'V', '#', '6'),
     ('G', 'W', '#', '7'),
     ('H', 'X', '#', '8'),
     ('I', 'Y', '#', '9'),
     ('J', 'Z', '#', '#'),
     ('K', '#', '#', '#'),
     ('L', '#', '#', '#'),
     ('M', '#', '#', '#'),
     ('N', '#', '#', '#'),
     ('O', '#', '#', '#'));
  cLetter: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  cNumeral: string = '0123456789';
var
  s, sByte, sSeveralByte: string;
  Ch1, Ch2, Ch3, Ch4, Ch5, Ch6, Ch7, Ch8, Ch_b4_b1, Ch_b6_b5: string;
  iByte, i, j, iValue: integer;
  dTimeD: TTime;
  wHoursD, wMinutesD, wSecondsD, wMSecondsD, wDec: word;
  isLetter, isNumeral: boolean;
begin
  try
    Result:=false;
    if Pos('79 7F ', Mess)>0 then
    begin
      Delete(Mess, 1, Pos('79 7F ', Mess)+5);
      Delete(Mess, 1, 9);
      s:=Copy(Mess, 1, 2);
      Delete(Mess, 1, 3);
      if s='15' then
      begin
        Delete(Mess, 1, 6);

        sSeveralByte:='';
        s:=Copy(Mess, 1, 2);
        Delete(Mess, 1, 3);
        sByte:=HexToBin(s);
        if sByte<>'' then
        begin
          while sByte[8]='1' do
          begin
            sSeveralByte:=sSeveralByte+sByte;

            s:=Copy(Mess, 1, 2);
            Delete(Mess, 1, 3);
            sByte:=HexToBin(s);

            if sByte='' then
            begin
              Result:=false;
              Exit;
            end;
          end;
        end
        else
        begin
          Result:=false;
          Exit;
        end;
        sSeveralByte:=sSeveralByte+sByte;
        FSPEC:=sSeveralByte;
        //---- I021/010 ----
        if FSPEC[1]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_010:=s;
        end;
        //---- I021/040 ----
        if FSPEC[2]='1' then
        begin
          s:=Copy(Mess, 1, 2);
          Delete(Mess, 1, 3);
          sByte:=HexToBin(s);
          UAP.I021_040:=s;
          if sByte<>'' then
          begin
            if sByte[8]='1' then
            begin
              s:=Copy(Mess, 1, 2);
              Delete(Mess, 1, 3);
              sByte:=HexToBin(s);
              UAP.I021_040:=UAP.I021_040+s;
              if sByte<>'' then
              begin
                if sByte[8]='1' then
                begin
                  s:=Copy(Mess, 1, 2);
                  Delete(Mess, 1, 3);
                  sByte:=HexToBin(s);
                  UAP.I021_040:=UAP.I021_040+s;
                  if sByte<>'' then
                  begin
                    if sByte[8]='1' then
                    begin

                    end;
                  end
                  else
                  begin
                    Result:=false;
                    Exit;
                  end;
                end;
              end
              else
              begin
                Result:=false;
                Exit;
              end;
            end;
          end
          else
          begin
            Result:=false;
            Exit;
          end;
        end;
        //---- I021/161 ----
        if FSPEC[3]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_161:=s;
        end;
        //---- I021/015 ----
        if FSPEC[4]='1' then
        begin
          s:=Copy(Mess, 1, 2);
          Delete(Mess, 1, 3);
          sByte:=HexToBin(s);
          UAP.I021_015:=s;
        end;
        //---- I021/071 ----
        if FSPEC[5]='1' then
        begin
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_071:=s;
        end;
        //---- I021/130 ----
        if FSPEC[6]='1' then
        begin
          //---- ������ ----
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_130:=s;
          Target.SHIROTA_DEC:=iByte*2.145767/100000;
          Target.SHIROTA_STR:=GeoCoordDecToS(Target.SHIROTA_DEC);
          //---- ������� ----
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_130:=UAP.I021_130+s;
          Target.DOLGOTA_DEC:=iByte*2.145767/100000;
          Target.DOLGOTA_STR:=GeoCoordDecToS(Target.DOLGOTA_DEC);
        end;
        //---- I021/131 ----
        if FSPEC[7]='1' then
        begin
          //---- ������ ----
          s:=Copy(Mess, 1, 12);
          Delete(Mess, 1, 12);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_131:=s;
          Target.SHIROTA_DEC:=iByte*1.6764/10000000;
          Target.SHIROTA_STR:=GeoCoordDecToS(Target.SHIROTA_DEC);
          //---- ������� ----
          s:=Copy(Mess, 1, 12);
          Delete(Mess, 1, 12);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_131:=UAP.I021_131+s;
          Target.DOLGOTA_DEC:=iByte*1.6764/10000000;
          Target.DOLGOTA_STR:=GeoCoordDecToS(Target.DOLGOTA_DEC);
        end;
        //---- FX ----
        if FSPEC[8]='0' then
        begin
          Result:=true;
          Exit;
        end;
        //---- I021/072 ----
        if FSPEC[9]='1' then
        begin
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_072:=s;
        end;
        //---- I021/150 ----
        if FSPEC[10]='0' then
        begin
          s:=Copy(Mess, 1, 6);
      //    Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_150:=s;

          if sByte[1]='0' then
          begin
            sByte[1]:='0';
            s:=BinToHex(sByte);
            iByte:=HexToDec(s);
          //  Target.AIR_SPEED:=0.25;
          end
          else
          begin
            sByte[1]:='0';
            s:=BinToHex(sByte);
            iByte:=HexToDec(s);
         //   Target.AIR_SPEED:=0.25;
          end;
          Target.AIR_SPEED:=iByte;
          //40+StrToFloat(IntToStr(iByte));
        end;
        //---- I021/151 ----
        if FSPEC[11]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_151:=s;
          if sByte[1]='0' then
          begin
            sByte[1]:='0';
            s:=BinToHex(sByte);
            iByte:=HexToDec(s);
          end
          else
          begin
            sByte[1]:='0';
            s:=BinToHex(sByte);
            iByte:=HexToDec(s);
          end;
        end;
        //---- I021/080 ----
        if FSPEC[12]='1' then
        begin
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          UAP.I021_080:=s;
          iByte:=HexToDec(s);
          Target.IDENTIFIKATOR:=IntToStr(iByte);

          if (Target.IDENTIFIKATOR='') or ((Target.IDENTIFIKATOR='0')) then
          begin
            Result:=false;
            Exit;
          end;
        end;
        //---- I021/073 ----
        if FSPEC[13]='1' then
        begin
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_073:=s;

          iValue:=Trunc(iByte/128);
          wHoursD:=Trunc(iValue/3600);
          iValue:=iValue-wHoursD*3600;
          wMinutesD:=Trunc(iValue/60);
          iValue:=iValue-wMinutesD*60;
          wSecondsD:=Trunc(iValue);

          dTimeD:=EncodeTime(wHoursD, wMinutesD, wSecondsD, 0);
          dDataTimeD:=StrToDateTime(DateToStr(dDateDBegin)+' '+TimeToStr(dTimeD));

          Target.VREMYA_ZAPISI:=dDataTimeD;
        end;
        //---- I021/074 ----
        if FSPEC[14]='1' then
        begin
          s:=Copy(Mess, 1, 12);
          Delete(Mess, 1, 12);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_074:=s;
        end;
        //---- I021/075 ----
        if FSPEC[15]='1' then
        begin
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_075:=s;
        end;
        //---- FX ----
        if FSPEC[16]='0' then
        begin
          Result:=true;
          Exit;
        end;
        //---- I021/076 ----
        if FSPEC[17]='1' then
        begin
          s:=Copy(Mess, 1, 12);
          Delete(Mess, 1, 12);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_076:=s;
        end;
        //---- I021/140 ----
        if FSPEC[18]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_140:=s;
          Target.GEOMETR_VISOTA:=iByte*6.25*0.305;
          if (Target.GEOMETR_VISOTA>=-457.5) and (Target.GEOMETR_VISOTA<=45750) then Result:=true
          else
          begin
            Result:=false;
            Exit;
          end;
        end;

        if Target.GEOMETR_VISOTA=0 then
        begin
          Result:=false;
          Exit;
        end;
        //---- I021/090 ----
        if FSPEC[19]='1' then
        begin
          s:=Copy(Mess, 1, 2);
          Delete(Mess, 1, 3);
          sByte:=HexToBin(s);
          UAP.I021_090:=s;

          s:=Copy(sByte, 4, 4);
          s:='0000'+s;
          iByte:=BinToDec(s);
          Target.DOSTOVERNOST:=iByte;

          if sByte<>'' then
          begin
            if sByte[8]='1' then
            begin
              s:=Copy(Mess, 1, 2);
              Delete(Mess, 1, 3);
              sByte:=HexToBin(s);
              UAP.I021_090:=UAP.I021_090+s;
              if sByte<>'' then
              begin
                if sByte[8]='1' then
                begin

                end;
              end
              else
              begin
                Result:=false;
                Exit;
              end;
            end;
          end
          else
          begin
            Result:=false;
            Exit;
          end;
        end;
        //---- I021/210 ----
        if FSPEC[20]='1' then
        begin
          s:=Copy(Mess, 1, 2);
          Delete(Mess, 1, 3);
          sByte:=HexToBin(s);
          UAP.I021_210:=s;
        end;
        //---- I021/070 ----
        if FSPEC[21]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_070:=s;
        end;
        //---- I021/230 ----
        if FSPEC[22]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_230:=s;
        end;
        //---- I021/145 ----
        if FSPEC[23]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          iByte:=HexToDec(s);
          UAP.I021_145:=s;
          Target.BAROMETR_VISOTA:=iByte*25*0.305;

          if (Target.BAROMETR_VISOTA<9000) or (Target.BAROMETR_VISOTA>12000) then
          begin
            Result:=false;
            Exit;
          end;
        end;

        Target.RAZNOST_BG_VISOT:=Target.BAROMETR_VISOTA-Target.GEOMETR_VISOTA;
        //---- FX ----
        if FSPEC[24]='0' then
        begin
          Result:=true;
          Exit;
        end;
        //---- I021/152 ----
        if FSPEC[25]='0' then
        begin
          s:=Copy(Mess, 1, 6);
        //  Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_152:=s;
          Target.TIP_BORTA:=IntToStr(BinToDec(sByte))
        end;
        //---- I021/200 ----
        if FSPEC[26]='1' then
        begin
          s:=Copy(Mess, 1, 2);
          Delete(Mess, 1, 3);
          sByte:=HexToBin(s);
          UAP.I021_200:=s;
        end;
        //---- I021/155 ----
        if FSPEC[27]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_155:=s;
        end;
        //---- I021/157 ----
        if FSPEC[28]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_157:=s;
        end;
        //---- I021/160 ----
        if FSPEC[29]='1' then
        begin
          s:=Copy(Mess, 1, 12);
          Delete(Mess, 1, 12);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_160:=s;
        end;
        //---- I021/165 ----
        if FSPEC[30]='1' then
        begin
          s:=Copy(Mess, 1, 6);
          Delete(Mess, 1, 6);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_165:=s;
        end;
        //---- I021/077 ----
        if FSPEC[31]='1' then
        begin
          s:=Copy(Mess, 1, 9);
          Delete(Mess, 1, 9);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_077:=s;
        end;
        //---- FX ----
        if FSPEC[32]='0' then
        begin
          Result:=true;
          Exit;
        end;
        //---- I021/170 ----
        isLetter:=false;
        isNumeral:=false;
        if FSPEC[31]='1' then
        begin
          s:=Copy(Mess, 1, 18);
          Delete(Mess, 1, 18);
          while pos(' ', s)>0 do Delete(s, pos(' ', s), 1);
          sByte:=HexToBin(s);
          UAP.I021_170:=s;

          Ch1:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch1, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch1, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch1:=IA_5[i, j];
          Delete(sByte, 1, 6);

          for i:=1 to 26 do
          begin
            if Ch1=cLetter[i] then
            begin
              isLetter:=true;
              Break;
            end;
          end;
          for i:=1 to 10 do
          begin
            if Ch1=cNumeral[i] then
            begin
              isNumeral:=true;
              Break;
            end;
          end;
          //----
          Ch2:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch2, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch2, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch2:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch2=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch2=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          Ch3:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch3, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch3, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch3:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch3=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch3=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          Ch4:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch4, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch4, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch4:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch4=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch4=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          Ch5:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch5, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch5, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch5:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch5=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch5=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          Ch6:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch6, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch6, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch6:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch6=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch6=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          Ch7:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch7, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch7, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch7:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch7=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch7=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          Ch8:=Copy(sByte, 1, 6);
          Ch_b6_b5:=Copy(Ch8, 1, 2);
          j:=BinToDec(Ch_b6_b5);
          Ch_b4_b1:=Copy(Ch8, 3, 4);
          i:=BinToDec(Ch_b4_b1);
          Ch8:=IA_5[i, j];
          Delete(sByte, 1, 6);

          if isLetter=false then
          begin
            for i:=1 to 26 do
            begin
              if Ch8=cLetter[i] then
              begin
                isLetter:=true;
                Break;
              end;
            end;
          end;
          if isNumeral=false then
          begin
            for i:=1 to 10 do
            begin
              if Ch8=cNumeral[i] then
              begin
                isNumeral:=true;
                Break;
              end;
            end;
          end;
          //----
          if (Ch1='#') or (Ch2='#') or (Ch3='#') or (Ch4='#') or
             (Ch5='#') or (Ch6='#') or (Ch7='#') or (Ch8='#') then
          begin
            Result:=false;
            Exit;
          end;

          if (isLetter=true) and (isNumeral=true) then
          begin
            s:='';
            if Ch1<>'_' then s:=s+Ch1
              else s:=s+' ';
            if Ch2<>'_' then s:=s+Ch2
              else s:=s+' ';
            if Ch3<>'_' then s:=s+Ch3
              else s:=s+' ';
            if Ch4<>'_' then s:=s+Ch4
              else s:=s+' ';
            if Ch5<>'_' then s:=s+Ch5
              else s:=s+' ';
            if Ch6<>'_' then s:=s+Ch6
              else s:=s+' ';
            if Ch7<>'_' then s:=s+Ch7
              else s:=s+' ';
            if Ch8<>'_' then s:=s+Ch8
              else s:=s+' ';
          end
          else
          begin
            Result:=false;
            Exit;
          end;

          if s='' then
          begin
            Result:=false;
            Exit;
          end;

          Target.REYS:=s;
        end;
        //---- ��������� ������ �� ��������� ----
        Result:=true;
      end;
    end;
  except on E: Exception do
    begin
      Result:=false;
    end;
  end;
end;
//------------------------------------------------------------------------------
procedure TForm_LoadFromFile.Btn_CancelClick(Sender: TObject);
begin
  MemTable_LoadDatas.Cancel;
  Form_LoadFromFile.Close;
end;

procedure TForm_LoadFromFile.Btn_DeleteClick(Sender: TObject);
begin
  if MessageDlg('�� �������, ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    MemTable_LoadDatas.Delete;
end;

procedure TForm_LoadFromFile.Btn_SaveDatasToDBClick(Sender: TObject);
var
  record_count,l1,l2,l3,l4,i, k: integer;
  sId:integer;
  sDate: TDate;
  sHour:word;
  sMinute: word;
  sSecond: word;
  sHour1,sHour2:word;
  sMinute1,sMinute2: word;
  sSecond1,sSecond2: word;
  sMis,sMis1,sMis2: word;
  SYear, SMonth, SDay:word;
  NBarVis,NGeoVis,NRazBG,SumNBarVis,SumNGeoVis,SumNRazBG: double;
  NewVrZp:TDateTime;
  NSh,NDo,SumNSh,SumNDo,NAirSpeed:double;
  NReys,NTipBorta:string;
  F,S,G:TDateTime;
begin
  if MemTable_LoadDatas.RecordCount>0 then
  begin
    try
      Timer_LoadDatas.Enabled:=false;
      Application.ProcessMessages();
      isSavingToDB:=true;
      Btn_SaveDatasToDB.Enabled:=false;
      Btn_Delete.Enabled:=false;
      Btn_Cancel.Enabled:=false;
      Panel_LoadDatasTable.Enabled:=false;
      Panel_LoadDatasButtons.Enabled:=false;
      Panel_LoadDatasTable.Visible:=false;
      Panel_LoadDatasTableBack.Caption:='';
      Form_DBTargets.Panel_TargetsTable.Visible:=false;
      Form_DBTargets.Panel_TargetsTableBack.Caption:='';
      //------------------------------------------------------------------------
      PrBar_LoadState.Position:=0;
      Label_LoadStateInfo.Caption:='������� ����������� ������ � ����';
      Application.ProcessMessages();

      //========================================================================
    {  //===================���������� ������ �� ������ =========================
      MemTable_LoadDatas.First;
              // NReys:=MemTable_LoadDatasREYS.AsString;
              // NTipBorta:=MemTable_LoadDatasTIP_BORTA.AsString;
                l1:=0;
            while not MemTable_LoadDatas.EOF do
                  begin
                  sId:=StrToInt(MemTable_LoadDatasIDENTIFIKATOR.AsString);
                  ComboBox1.Items.Insert(l1,IntToStr(sId));
                  //S:=StrToDateTime(MemTable_LoadDatasVREMYA_ZAPISI.AsString);
                            //   DecodeDate(MemTable_LoadDatasVREMYA_ZAPISI, SYear, SMonth, SDay);
                //  DecodeTime(S, sHour, sMinute, sSecond,sMis);
                  MemTable_LoadDatas.First;
                          //if sId=MemTable_LoadDatasIDENTIFIKATOR.AsString then
                            //    begin
                         //   SumNBarVis:=0;
                         l2:=0;
                          while not MemTable_LoadDatas.EOF do
                                begin
                            G:=StrToDateTime(MemTable_LoadDatasVREMYA_ZAPISI.AsString);
                            //   DecodeDate(MemTable_LoadDatasVREMYA_ZAPISI, SYear, SMonth, SDay);
                             DecodeTime(G, sHour1, sMinute1, sSecond1,sMis1);
                              ComboBox2.Items.Insert(l2,IntToStr(sHour1));
                           //  if (sId=MemTable_LoadDatasIDENTIFIKATOR.AsString)  then
                          //              begin
                                          MemTable_LoadDatas.First;
                                        //  S:=StrToDateTime(MemTable_LoadDatasVREMYA_ZAPISI.AsString);
                            //   DecodeDate(MemTable_LoadDatasVREMYA_ZAPISI, SYear, SMonth, SDay);
               //  DecodeTime(S, sHour, sMinute, sSecond,sMis);
               l3:=0;
                                          while not MemTable_LoadDatas.EOF do
                                          begin
                                           F:=StrToDateTime(MemTable_LoadDatasVREMYA_ZAPISI.AsString);
                            //   DecodeDate(MemTable_LoadDatasVREMYA_ZAPISI, SYear, SMonth, SDay);
                             DecodeTime(F, sHour2, sMinute2, sSecond2,sMis2);
                             ComboBox3.Items.Insert(l3,IntToStr(sMinute2));
                                         //   if sHour=sHour1  then
                                         //   begin
                                              MemTable_LoadDatas.First;
                                         //      S:=StrToDateTime(MemTable_LoadDatasVREMYA_ZAPISI.AsString);
                            //   DecodeDate(MemTable_LoadDatasVREMYA_ZAPISI, SYear, SMonth, SDay);
                //  DecodeTime(S, sHour, sMinute, sSecond,sMis);
                                               i:=0;
                                               SumNBarVis:=0;
                                               SumNGeoVis:=0;
                                               SumNRazBG:=0;
                                               SumNSh:=0;
                                               SumNDo:=0;
                                               l4:=0;
                                             while not MemTable_LoadDatas.EOF do
                                                      begin
                                                      S:=StrToDateTime(MemTable_LoadDatasVREMYA_ZAPISI.AsString);
                              // DecodeDate(MemTable_LoadDatasVREMYA_ZAPISI, SYear, SMonth, SDay);
                                                       DecodeTime(S, sHour, sMinute, sSecond,sMis);

                                                      if (sId=StrToInt(MemTable_LoadDatasIDENTIFIKATOR.AsString)) AND (sHour1=sHour) AND (sMinute2=sMinute) then
                                                             begin
                                                            ComboBox4.Items.Insert(l4,IntToStr(sSecond));
                                                             SumNBarVis:=MemTable_LoadDatasBAROMETR_VISOTA.AsFloat+SumNBarVis;
                                                             SumNGeoVis:=MemTable_LoadDatasGEOMETR_VISOTA.AsFloat+SumNGeoVis;
                                                             SumNRazBG:=MemTable_LoadDatasRAZNOST_BG_VISOT.AsFloat+SumNRazBG;
                                                              SumNSh:=SumNSh+Memtable_LoadDatasSHIROTA_DEC.AsFloat+SumNSh;
                                                              SumNDo:=SumNDo+Memtable_LoadDatasDOLGOTA_DEC.AsFloat+SumNDo;
                                                                 l4:=l4+1;
                                                        //      MemTable_LoadDatas.Delete;
                                                              i:=i+1;
                                                              end;
                                                        //      else
                                                         //     begin
                                                             // l4:=l4+1;
                                                      MemTable_LoadDatas.Next;

                                                       //       end;
                                                      end;
                                                      //------------------------

                                                      {MemTable_LoadDatasIDENTIFIKATOR.AsString;
                                                      MemTable_LoadDatasBAROMETR_VISOTA.AsFloat;
                                                      MemTable_LoadDatasGEOMETR_VISOTA.AsFloat;
                                                       MemTable_LoadDatasRAZNOST_BG_VISOT.AsFloat;
                                                       MemTable_LoadDatasVREMYA_ZAPISI.AsString;
                                                      MemTable_LoadDatasSHIROTA_STR.AsString;
                                                      MemTable_LoadDatasSHIROTA_DEC.AsFloat;
                                                      MemTable_LoadDatasDOLGOTA_STR.AsString;
                                                       MemTable_LoadDatasDOLGOTA_DEC.AsFloat;
                                                        MemTable_LoadDatasREYS.AsString;
                                                     MemTable_LoadDatasTIP_BORTA.AsString;
                                                      MemTable_LoadDatasDOSTOVERNOST.AsInteger;

                                                           ComboBox4.Items.SaveToFile('C:\Documents and Settings\�������������\������� ����\mzs\second.txt');

                                                         l3:=l3+1;
                                                      //------------------------
                                                      MemTable_LoadDatas.Next;
                                          end;
                                          ComboBox3.Items.SaveToFile('C:\Documents and Settings\�������������\������� ����\mzs\minute.txt');
                                          l2:=l2+1;
                                MemTable_LoadDatas.Next;

                                end;
                                ComboBox2.Items.SaveToFile('C:\Documents and Settings\�������������\������� ����\mzs\hour.txt');
                                l1:=l1+1;
                // MemTable_LoadDatas.Next;
                  end;


               ComboBox1.Items.SaveToFile('C:\Documents and Settings\�������������\������� ����\mzs\Fil.txt');

                                                                        }

      //DecodeDate(LastSessionDateTime, wYear, wMonth, wDay);
      //========================================================================
      //========================================================================
      MemTable_LoadDatas.Last;
      MemTable_LoadDatas.First;
      DBForm.Targets.First;
      record_count:=MemTable_LoadDatas.RecordCount;
      k:=1;
            while not MemTable_LoadDatas.Eof do
      begin
        DBForm.Targets.Append;
        if DBForm.Targets.State<>dsInsert then
        begin
          DBForm.Targets.Active:=false;
          DBForm.Targets.Active:=true;
          DBForm.Targets.Append;
        end;

        DBForm.TargetsIDENTIFIKATOR.AsString:=MemTable_LoadDatasIDENTIFIKATOR.AsString;
        DBForm.TargetsBAROMETR_VISOTA.AsFloat:=MemTable_LoadDatasBAROMETR_VISOTA.AsFloat;
        DBForm.TargetsGEOMETR_VISOTA.AsFloat:=MemTable_LoadDatasGEOMETR_VISOTA.AsFloat;
        DBForm.TargetsRAZNOST_BG_VISOT.AsFloat:=MemTable_LoadDatasRAZNOST_BG_VISOT.AsFloat;
        DBForm.TargetsVREMYA_ZAPISI.AsString:=MemTable_LoadDatasVREMYA_ZAPISI.AsString;
        DBForm.TargetsSHIROTA_STR.AsString:=MemTable_LoadDatasSHIROTA_STR.AsString;
        DBForm.TargetsSHIROTA_DEC.AsFloat:=MemTable_LoadDatasSHIROTA_DEC.AsFloat;
        DBForm.TargetsDOLGOTA_STR.AsString:=MemTable_LoadDatasDOLGOTA_STR.AsString;
        DBForm.TargetsDOLGOTA_DEC.AsFloat:=MemTable_LoadDatasDOLGOTA_DEC.AsFloat;
        DBForm.TargetsREYS.AsString:=MemTable_LoadDatasREYS.AsString;
        DBForm.TargetsTIP_BORTA.AsString:=MemTable_LoadDatasTIP_BORTA.AsString;
        DBForm.TargetsAIR_SPEED.AsFloat:=MemTable_LoadDatasAIR_SPEED.AsFloat;
        DBForm.TargetsDOSTOVERNOST.AsInteger:=MemTable_LoadDatasDOSTOVERNOST.AsInteger;

        DBForm.Targets.Post;

        PrBar_LoadState.Position:=Round(100*k/record_count);
     //   Panel_LoadDatasTableBack.Caption:='���������� �������: '+IntToStr(k)+' �� '+IntToStr(record_count);
      //  Form_DBTargets.Panel_TargetsTableBack.Caption:='������� �������: '+IntToStr(k)+' �� '+IntToStr(record_count);
        MemTable_LoadDatas.Next;
        k:=k+1;
        Application.ProcessMessages();
      end;
      MemTable_LoadDatas.First;

      Label_LoadStateInfo.Caption:='������� ������ � ���� ��������';
      PrBar_LoadState.Position:=0;
      Application.ProcessMessages();

      isSavingToDB:=false;
      Btn_SaveDatasToDB.Enabled:=true;
      Panel_LoadDatasTable.Enabled:=true;
      Panel_LoadDatasButtons.Enabled:=true;
      Panel_LoadDatasTable.Visible:=true;
      Panel_LoadDatasTableBack.Caption:='';
      Form_DBTargets.Panel_TargetsTable.Visible:=true;
      Form_DBTargets.Panel_TargetsTableBack.Caption:='';
      Application.ProcessMessages();

      Form_DataBase.Btn_DBRefresh.OnClick(Sender);
      DBForm.Targets.First;

      Timer_LoadDatas.Enabled:=false;
      Application.ProcessMessages();
      AfterSave:=true;
      Form_LoadFromFile.Close;
    except on E: Exception do
      begin
        MessageDlg('������ � �������� �������� ������ � ����.', mtError, [mbOK], 0);
        MemTable_LoadDatas.First;

        PrBar_LoadState.Position:=0;
        Application.ProcessMessages();

        Timer_LoadDatas.Enabled:=false;
        Application.ProcessMessages();
        isSavingToDB:=false;
        Btn_SaveDatasToDB.Enabled:=true;
        Panel_LoadDatasTable.Enabled:=true;
        Panel_LoadDatasButtons.Enabled:=true;
        Panel_LoadDatasTable.Visible:=true;
        Panel_LoadDatasTableBack.Caption:='';
        Form_DBTargets.Panel_TargetsTable.Visible:=true;
        Form_DBTargets.Panel_TargetsTableBack.Caption:='';
        Application.ProcessMessages();
      end;
    end;
  end;
end;

procedure TForm_LoadFromFile.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  record_count, k: integer;
begin
  if AfterSave=false then
  begin
    CanClose:=false;
    if (isLoadingFromFile=false) and (isSavingToDB=false) then
    begin
      if MemTable_LoadDatas.RecordCount>0 then
      begin
        if MessageDlg('������� ������ �� ����������� � ����.'+#13#10+
                      '������� ���� �������� ������ �� �����?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
        begin
          Btn_SaveDatasToDB.Enabled:=false;
          Panel_LoadDatasTable.Enabled:=false;
          Panel_LoadDatasButtons.Enabled:=false;

          PrBar_LoadState.Position:=0;
          Label_LoadStateInfo.Caption:='�������� ��������� ������';
          Application.ProcessMessages();

          Panel_LoadDatasTable.Visible:=false;
          Application.ProcessMessages();

          MemTable_LoadDatas.EmptyTable;

          Label_LoadStateInfo.Caption:='�������� ��������� ������ ���������';
          PrBar_LoadState.Position:=0;
          Application.ProcessMessages();

          Btn_SaveDatasToDB.Enabled:=true;
          Panel_LoadDatasTable.Enabled:=true;
          Panel_LoadDatasButtons.Enabled:=true;

          Label_LoadStateInfo.Caption:='';
          Panel_LoadDatasTable.Visible:=true;
          Application.ProcessMessages();

          Form_Main.Enabled:=true;
          Form_DataBase.Enabled:=true;
          Form_DBTargets.Enabled:=true;
          Form_DBSessions.Enabled:=true;
          Form_ValueWeightGraph.Enabled:=true;

          Timer_LoadDatas.Enabled:=false;
          isLoadingFromFile:=false;
          isSavingToDB:=false;
          CanClose:=true;

          Form_DataBase.Btn_DBRefresh.OnClick(Sender);
          DBForm.Targets.First;
        end;
      end
      else
      begin
        Label_LoadStateInfo.Caption:='';
        PrBar_LoadState.Position:=0;
        Application.ProcessMessages();

        Form_Main.Enabled:=true;
        Form_DataBase.Enabled:=true;
        Form_DBTargets.Enabled:=true;
        Form_DBSessions.Enabled:=true;
        Form_ValueWeightGraph.Enabled:=true;

        Timer_LoadDatas.Enabled:=false;
        isLoadingFromFile:=false;
        isSavingToDB:=false;
        CanClose:=true;

        Form_DataBase.Btn_DBRefresh.OnClick(Sender);
        DBForm.Targets.First;
      end;
    end
    else
    begin
      if isLoadingFromFile=true then
      begin
        MessageDlg('����������� �������� ������ �� �����.'+#13#10+
                   '��������� ���������� ��������.', mtInformation, [mbOK], 0);
      end;
      if isSavingToDB=true then
      begin
        MessageDlg('����������� ������� ������ � ����.'+#13#10+
                   '��������� ���������� ��������.', mtInformation, [mbOK], 0);
      end;
    end;
  end
  else
  begin
    Btn_SaveDatasToDB.Enabled:=false;
    Panel_LoadDatasTable.Enabled:=false;
    Panel_LoadDatasButtons.Enabled:=false;

    PrBar_LoadState.Position:=0;
    Label_LoadStateInfo.Caption:='�������� ��������� ������';
    Application.ProcessMessages();

    Panel_LoadDatasTable.Visible:=false;
    Application.ProcessMessages();

    MemTable_LoadDatas.EmptyTable;

    Label_LoadStateInfo.Caption:='�������� ��������� ������ ���������';
    PrBar_LoadState.Position:=0;
    Application.ProcessMessages();

    Btn_SaveDatasToDB.Enabled:=true;
    Panel_LoadDatasTable.Enabled:=true;
    Panel_LoadDatasButtons.Enabled:=true;

    Label_LoadStateInfo.Caption:='';
    Panel_LoadDatasTable.Visible:=true;
    Application.ProcessMessages();

    Form_Main.Enabled:=true;
    Form_DataBase.Enabled:=true;
    Form_DBTargets.Enabled:=true;
    Form_DBSessions.Enabled:=true;
    Form_ValueWeightGraph.Enabled:=true;

    Timer_LoadDatas.Enabled:=false;
    isLoadingFromFile:=false;
    isSavingToDB:=false;
    AfterSave:=false;
    CanClose:=true;

    Form_DataBase.Btn_DBRefresh.OnClick(Sender);
    DBForm.Targets.First;
  end;
end;

procedure TForm_LoadFromFile.FormShow(Sender: TObject);
begin
  Form_LoadFromFile.Left:=Form_Main.Left+Round(Form_Main.Width/2-Form_LoadFromFile.Width/2);
  Form_LoadFromFile.Top:=Form_Main.Top+Round(Form_Main.Height/2-Form_LoadFromFile.Height/2);
  Form_Main.Enabled:=false;
  Form_DataBase.Enabled:=false;
  Form_DBTargets.Enabled:=false;
  Form_DBSessions.Enabled:=false;
  Form_ValueWeightGraph.Enabled:=false;

  Timer_LoadDatas.Enabled:=true;
  isLoadingFromFile:=false;
  isSavingToDB:=false;
  AfterSave:=false;
end;

procedure UAP_clear;
begin
  FSPEC:='';

  UAP.I021_010:='';
  UAP.I021_040:='';
  UAP.I021_161:='';
  UAP.I021_015:='';
  UAP.I021_071:='';
  UAP.I021_130:='';
  UAP.I021_131:='';
  UAP.I021_072:='';
  UAP.I021_150:='';
  UAP.I021_151:='';
  UAP.I021_080:='';
  UAP.I021_073:='';
  UAP.I021_074:='';
  UAP.I021_075:='';
  UAP.I021_076:='';
  UAP.I021_140:='';
  UAP.I021_090:='';
  UAP.I021_210:='';
  UAP.I021_070:='';
  UAP.I021_230:='';
  UAP.I021_145:='';
  UAP.I021_152:='';
  UAP.I021_200:='';
  UAP.I021_155:='';
  UAP.I021_157:='';
  UAP.I021_160:='';
  UAP.I021_165:='';
  UAP.I021_077:='';
  UAP.I021_170:='';
  UAP.I021_020:='';
  UAP.I021_220:='';
  UAP.I021_146:='';
  UAP.I021_148:='';
  UAP.I021_110:='';
  UAP.I021_016:='';
  UAP.I021_008:='';
  UAP.I021_271:='';
  UAP.I021_132:='';
  UAP.I021_250:='';
  UAP.I021_260:='';
  UAP.I021_400:='';
  UAP.I021_295:='';
end;

procedure Target_clear;
begin
  Target.IDENTIFIKATOR:='';
  Target.BAROMETR_VISOTA:=0;
  Target.GEOMETR_VISOTA:=0;
  Target.RAZNOST_BG_VISOT:=0;
  Target.VREMYA_ZAPISI:=0;
  Target.SHIROTA_STR:='';
  Target.SHIROTA_DEC:=0;
  Target.DOLGOTA_STR:='';
  Target.DOLGOTA_DEC:=0;
  Target.REYS:='';
  Target.TIP_BORTA:='';
  Target.AIR_SPEED:=0;
  Target.DOSTOVERNOST:=0;
end;

procedure TForm_LoadFromFile.LoadDatasFromFile(TypeLoad: integer; FileName: string);
var
  SourceFileStream: File;
  SourceFileTXT{, ControlFile}: TextFile;
  bByte: byte;
  s, sMess, sHex, sHexOld: string;
  lines_count, p, k, NumRead, iValue, kMess: integer;
  isReading_ADS_B_Reports: boolean;
begin
  isLoadingFromFile:=false;
  if TypeLoad=1 then
  begin
    try
      Timer_LoadDatas.Enabled:=false;
      Application.ProcessMessages();
      isLoadingFromFile:=true;
      Btn_SaveDatasToDB.Enabled:=false;
      Btn_Delete.Enabled:=false;
      Btn_Cancel.Enabled:=false;
      Panel_LoadDatasTable.Enabled:=false;
      Panel_LoadDatasButtons.Enabled:=false;
      Panel_LoadDatasTable.Visible:=false;
      Panel_LoadDatasTableBack.Caption:='';
      //------------------------------------------------------------------------
      Label_LoadStateInfo.Caption:='�������� ������ �� ����� �Cat.021 ADS-B Reports�';
      Application.ProcessMessages();

      AssignFile(SourceFileStream, FileName);
      Reset(SourceFileStream, 1);
      Seek(SourceFileStream, 0);

      s:='';
      Seek(SourceFileStream, 8);
      //----
      BlockRead(SourceFileStream, bByte, 1, NumRead);
      sHex:=IntToHex(bByte, 2);
      s:=s+sHex;
      BlockRead(SourceFileStream, bByte, 1, NumRead);
      sHex:=IntToHex(bByte, 2);
      s:=s+sHex;
      wYearDBegin:=HexToDec(s);
      //----
      BlockRead(SourceFileStream, bByte, 1, NumRead);
      sHex:=IntToHex(bByte, 2);
      wMonthDBegin:=HexToDec(sHex);
      //----
      BlockRead(SourceFileStream, bByte, 1, NumRead);
      sHex:=IntToHex(bByte, 2);
      wDayDBegin:=HexToDec(sHex);

      dDateDBegin:=EncodeDate(wYearDBegin, wMonthDBegin, wDayDBegin);
      //----
      Seek(SourceFileStream, 64);

      //========================================================================
//      s:=ExtractFilePath(EXEFilePath);
//      AssignFile(ControlFile, s+'ControlFile.txt');
//      Rewrite(ControlFile);
      //========================================================================

      sMess:='';
      PrBar_LoadState.Min:=0;
      PrBar_LoadState.Max:=FileSize(SourceFileStream);
      PrBar_LoadState.Position:=0;
      kMess:=0;
      while not Eof(SourceFileStream) do
      begin
        BlockRead(SourceFileStream, bByte, 1, NumRead);
        sHex:=IntToHex(bByte, 2);
        sMess:=sMess+sHex+' ';

        if sHex='AA' then
        begin
          BlockRead(SourceFileStream, bByte, 1, NumRead);
          sHex:=IntToHex(bByte, 2);
          sMess:=sMess+sHex+' ';

          if (sHex='02') or (sHex='03') then
          begin
            sHexOld:=sHex;

            BlockRead(SourceFileStream, bByte, 1, NumRead);
            sHex:=IntToHex(bByte, 2);
            sMess:=sMess+sHex+' ';

            if sHexOld='02' then sMess:='';
            if sHexOld='03' then
            begin
              UAP_clear;
              Target_clear;
              isReading_ADS_B_Reports:=Read_ADS_B_Reports(sMess);

              if isReading_ADS_B_Reports=true then
              begin
                kMess:=kMess+1;
                //==============================================================
//                Writeln(ControlFile, IntToStr(kMess));
//                Writeln(ControlFile, sMess);
                //==============================================================
//                sMess:=UAP.I021_010+'| '+UAP.I021_040+'| '+UAP.I021_161+'| '+
//                       UAP.I021_015+'| '+UAP.I021_071+'| '+UAP.I021_130+'| '+
//                       UAP.I021_131+'| '+UAP.I021_072+'| '+UAP.I021_150+'| '+
//                       UAP.I021_151+'| '+UAP.I021_080+'| '+UAP.I021_073+'| '+
//                       UAP.I021_074+'| '+UAP.I021_075+'| '+UAP.I021_076+'| '+
//                       UAP.I021_140+'| '+UAP.I021_090+'| '+UAP.I021_210+'| '+
//                       UAP.I021_070+'| '+UAP.I021_230+'| '+UAP.I021_145+'| '+
//                       UAP.I021_152+'| '+UAP.I021_200+'| '+UAP.I021_155+'| '+
//                       UAP.I021_157+'| '+UAP.I021_160+'| '+UAP.I021_165+'| '+
//                       UAP.I021_077+'| '+UAP.I021_170+'| '+UAP.I021_020+'| '+
//                       UAP.I021_220+'| '+UAP.I021_146+'| '+UAP.I021_148+'| '+
//                       UAP.I021_110+'| '+UAP.I021_016+'| '+UAP.I021_008+'| '+
//                       UAP.I021_271+'| '+UAP.I021_132+'| '+UAP.I021_250+'| '+
//                       UAP.I021_260+'| '+UAP.I021_400+'| '+UAP.I021_295;
//                Writeln(ControlFile, sMess);
                //==============================================================
                MemTable_LoadDatas.Append;

                MemTable_LoadDatasIDENTIFIKATOR.AsString:=Target.IDENTIFIKATOR;
                MemTable_LoadDatasBAROMETR_VISOTA.AsFloat:=Target.BAROMETR_VISOTA;
                MemTable_LoadDatasGEOMETR_VISOTA.AsFloat:=Target.GEOMETR_VISOTA;
                MemTable_LoadDatasRAZNOST_BG_VISOT.AsFloat:=Target.RAZNOST_BG_VISOT;
                MemTable_LoadDatasVREMYA_ZAPISI.AsDateTime:=dDataTimeD;
                MemTable_LoadDatasSHIROTA_STR.AsString:=Target.SHIROTA_STR;
                MemTable_LoadDatasSHIROTA_DEC.AsFloat:=Target.SHIROTA_DEC;
                MemTable_LoadDatasDOLGOTA_STR.AsString:=Target.DOLGOTA_STR;
                MemTable_LoadDatasDOLGOTA_DEC.AsFloat:=Target.DOLGOTA_DEC;
                MemTable_LoadDatasREYS.AsString:=Target.REYS;
                MemTable_LoadDatasTIP_BORTA.AsString:=Target.TIP_BORTA;
                MemTable_LoadDatasAIR_SPEED.AsFloat:=Target.AIR_SPEED;
                MemTable_LoadDatasDOSTOVERNOST.AsInteger:=Target.DOSTOVERNOST;

                MemTable_LoadDatas.Post;
                Panel_LoadDatasTableBack.Caption:='��������� �������: '+IntToStr(kMess);
              end;
            end;
          end;
        end;

        PrBar_LoadState.Position:=PrBar_LoadState.Position+NumRead;
        Application.ProcessMessages();
      end;
      CloseFile(SourceFileStream);
      MemTable_LoadDatas.First;
      //========================================================================
//      CloseFile(ControlFile);
      //========================================================================
      Label_LoadStateInfo.Caption:='�������� ������ ���������';
      PrBar_LoadState.Position:=0;
      Application.ProcessMessages();

      Timer_LoadDatas.Enabled:=true;
      Application.ProcessMessages();
      isLoadingFromFile:=false;
      Btn_SaveDatasToDB.Enabled:=true;
      Panel_LoadDatasTable.Enabled:=true;
      Panel_LoadDatasButtons.Enabled:=true;
      Panel_LoadDatasTable.Visible:=true;
      Panel_LoadDatasTableBack.Caption:='';
    except on E: Exception do
      begin
        if E.ClassType<>EInOutError then MessageDlg('������ � �������� �������� ������ �� �����.', mtError, [mbOK], 0);
        CloseFile(SourceFileStream);
        MemTable_LoadDatas.First;
        //======================================================================
//        CloseFile(ControlFile);
        //======================================================================
        Label_LoadStateInfo.Caption:='�������� ������ ���������';
        PrBar_LoadState.Position:=0;
        Application.ProcessMessages();

        Timer_LoadDatas.Enabled:=true;
        Application.ProcessMessages();
        isLoadingFromFile:=false;
        Btn_SaveDatasToDB.Enabled:=true;
        Panel_LoadDatasTable.Enabled:=true;
        Panel_LoadDatasButtons.Enabled:=true;
        Panel_LoadDatasTable.Visible:=true;
        Panel_LoadDatasTableBack.Caption:='';
      end;
    end;
  end;
  if TypeLoad=2 then
  begin
    try
      Timer_LoadDatas.Enabled:=false;
      Application.ProcessMessages();
      isLoadingFromFile:=true;
      Btn_SaveDatasToDB.Enabled:=false;
      Btn_Delete.Enabled:=false;
      Btn_Cancel.Enabled:=false;
      Panel_LoadDatasTable.Enabled:=false;
      Panel_LoadDatasButtons.Enabled:=false;
      Panel_LoadDatasTable.Visible:=false;
      Panel_LoadDatasTableBack.Caption:='';
      //------------------------------------------------------------------------
      Label_LoadStateInfo.Caption:='���������� ������';
      Application.ProcessMessages();

      AssignFile(SourceFileTXT, FileName);
      Reset(SourceFileTXT);
      lines_count:=0;
      while not Eof(SourceFileTXT) do
      begin
        Readln(SourceFileTXT, sMess);
        lines_count:=lines_count+1;
      end;
      CloseFile(SourceFileTXT);
      Application.ProcessMessages();
      //------------------------------------------------------------------------
      Label_LoadStateInfo.Caption:='�������� ������ �� �������������������� �����';
      Application.ProcessMessages();

      MemTable_LoadDatas.First;
      AssignFile(SourceFileTXT, FileName);
      Reset(SourceFileTXT);

      k:=0;
      PrBar_LoadState.Min:=0;
      PrBar_LoadState.Max:=100;
      PrBar_LoadState.Position:=0;
      while not Eof(SourceFileTXT) do
      begin
        MemTable_LoadDatas.Append;
        Readln(SourceFileTXT, sMess);

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasIDENTIFIKATOR.AsString:=s;

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasBAROMETR_VISOTA.AsFloat:=StrToFloat(s);

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasGEOMETR_VISOTA.AsFloat:=StrToFloat(s);

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasRAZNOST_BG_VISOT.AsFloat:=MemTable_LoadDatasBAROMETR_VISOTA.AsFloat-MemTable_LoadDatasGEOMETR_VISOTA.AsFloat;

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasVREMYA_ZAPISI.AsString:=s;

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasSHIROTA_DEC.AsFloat:=StrToFloat(s);
        MemTable_LoadDatasSHIROTA_STR.AsString:=GeoCoordDecToS(StrToFloat(s));

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasDOLGOTA_DEC.AsFloat:=StrToFloat(s);
        MemTable_LoadDatasDOLGOTA_STR.AsString:=GeoCoordDecToS(StrToFloat(s));

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasREYS.AsString:=s;

        p:=Pos(';', sMess);
        s:=Copy(sMess, 1, p-1);
        Delete(sMess, 1, p);
        MemTable_LoadDatasTIP_BORTA.AsString:=s;

        MemTable_LoadDatas.Post;

        k:=k+1;
        PrBar_LoadState.Position:=Round(100*k/lines_count);
        Panel_LoadDatasTableBack.Caption:='��������� �������: '+IntToStr(k);
      end;

      CloseFile(SourceFileTXT);
      MemTable_LoadDatas.First;

      Label_LoadStateInfo.Caption:='�������� ������ ���������';
      PrBar_LoadState.Position:=0;
      Application.ProcessMessages();

      Timer_LoadDatas.Enabled:=true;
      Application.ProcessMessages();
      isLoadingFromFile:=false;
      Btn_SaveDatasToDB.Enabled:=true;
      Panel_LoadDatasTable.Enabled:=true;
      Panel_LoadDatasButtons.Enabled:=true;
      Panel_LoadDatasTable.Visible:=true;
      Panel_LoadDatasTableBack.Caption:='';
    except on E: Exception do
      begin
        MessageDlg('������ � �������� �������� ������ �� �����.', mtError, [mbOK], 0);
        CloseFile(SourceFileTXT);
        MemTable_LoadDatas.First;

        Label_LoadStateInfo.Caption:='�������� ������ ���������';
        PrBar_LoadState.Position:=0;
        Application.ProcessMessages();

        Timer_LoadDatas.Enabled:=true;
        Application.ProcessMessages();
        isLoadingFromFile:=false;
        Btn_SaveDatasToDB.Enabled:=true;
        Panel_LoadDatasTable.Enabled:=true;
        Panel_LoadDatasButtons.Enabled:=true;
        Panel_LoadDatasTable.Visible:=true;
        Panel_LoadDatasTableBack.Caption:='';
      end;
    end;
  end;
end;

procedure TForm_LoadFromFile.Timer_LoadDatasTimer(Sender: TObject);
begin
  try
    Btn_Delete.Enabled:=DBNavigator_LoadDatas.Controls[Ord(nbDelete)].Enabled;
    Btn_Cancel.Enabled:=DBNavigator_LoadDatas.Controls[Ord(nbCancel)].Enabled;
    //----
  except on E: Exception do
    begin
    
    end;
  end;
end;

end.