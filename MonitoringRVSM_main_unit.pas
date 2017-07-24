unit MonitoringRVSM_main_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Mask, DBCtrlsEh, IniFiles,
  DB, DBCtrls, DBGridEhGrouping, MemTableDataEh, MemTableEh, GridsEh, DBGridEh,
  ImgList, XPMan, Math, TeEngine, Series, TeeProcs, Chart, FIBDataSet, pFIBProps,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  IsobaraDatas = record
    Identifikator: string;
    RaznostBGVisot, Rasstoyanie: double;
    DiapazonVisoti: integer;
  end;
  TForm_Main = class(TForm)
    Panel_ParamsBack: TPanel;
    Panel_Params: TPanel;
    Label_Params: TLabel;
    Panel_ParamsMenu: TPanel;
    Shape_Split31: TShape;
    Timer_Navigators: TTimer;
    Panel_Targets: TPanel;
    Label_Targets: TLabel;
    Shape_Split11: TShape;
    Shape_Split12: TShape;
    Shape_Split13: TShape;
    Panel_RecordsCountTargets: TPanel;
    Label_RecordsCountTargets: TLabel;
    Panel_RecordsCountTargsInd: TPanel;
    Label_RecordsCountTargsInd: TLabel;
    DBNavigator_Targets: TDBNavigator;
    Panel_Sessions: TPanel;
    Shape_Split21: TShape;
    Label_Sessions: TLabel;
    Shape_Split22: TShape;
    Panel_RecordsCountSessions: TPanel;
    Label_RecordsCountSessions: TLabel;
    DBNavigator_Sessions: TDBNavigator;
    Panel_PrepareAndResultDatasBack: TPanel;
    Panel_PrepareAndResultDatasMenu: TPanel;
    Shape_Split51: TShape;
    Panel_PrepareAndResultDatas: TPanel;
    MemTable_PrepareDatas: TMemTableEh;
    MemTable_PrepareDatasIDENTIFIKATOR: TStringField;
    MemTable_PrepareDatasSHIROTA_STR: TStringField;
    MemTable_PrepareDatasDOLGOTA_STR: TStringField;
    MemTable_PrepareDatasBAROMETR_VISOTA: TFloatField;
    MemTable_PrepareDatasGEOMETR_VISOTA: TFloatField;
    MemTable_PrepareDatasVREMYA_ZAPISI: TDateTimeField;
    DS_PrepareDatas: TDataSource;
    MemTable_PrepareDatasSHIROTA_DEC: TFloatField;
    MemTable_PrepareDatasDOLGOTA_DEC: TFloatField;
    MemTable_PrepareDatasRAZNOST_BG_VISOT: TFloatField;
    Panel_TargetsMenu: TPanel;
    Panel_SessionsMenu: TPanel;
    ImageList_Menu_20x20: TImageList;
    MemTable_MergDatas: TMemTableEh;
    DS_MergDatas: TDataSource;
    MemTable_MergDatasIDENTIFIKATOR: TStringField;
    MemTable_MergDatasSRRAZNOST: TFloatField;
    MemTable_MergDatasOCENKA_POGRESHNOSTEY: TFloatField;
    Panel_Buttons: TPanel;
    Shape_Split41: TShape;
    Label_OpenCloseTargets: TLabel;
    Label_OpenCloseSessions: TLabel;
    Btn_PrepareDatasAndAnalysisExecute: TButton;
    MemTable_MergDatasOCENKA_S_VESOM: TFloatField;
    MemTable_MergDatasKOLICHESTVO_SAMOLETOV: TIntegerField;
    XPManifest: TXPManifest;
    Label_OpenCloseValueWeightGraph: TLabel;
    DBNavigator_TargsInd: TDBNavigator;
    Panel_MessagesExecute: TPanel;
    Label_MessagesExecute: TLabel;
    GrPanel_PrepareAndResultDatas: TGridPanel;
    Panel_ResultDatas: TPanel;
    PCtrl_ResultDatas: TPageControl;
    TSh_MergDatas: TTabSheet;
    Panel_MergDatas: TPanel;
    Panel_MergDatasTable: TPanel;
    DBGrid_MergDatasTable: TDBGridEh;
    Panel_MergDatasFunctions: TPanel;
    Panel_MergDatasFunctionsButtons: TPanel;
    TSh_IsobarInclination: TTabSheet;
    Panel_IsobarInclination: TPanel;
    MemTable_PrepareDatasREYS: TStringField;
    MemTable_PrepareDatasTIP_BORTA: TStringField;
    Panel_PrepareDatas: TPanel;
    Panel_PrepareDatasTable: TPanel;
    DBGrid_PrepareDatasTable: TDBGridEh;
    Panel_PrepareDatasInfo: TPanel;
    Label_AnalysisInfo: TLabel;
    GrPanel_AnalysisInfo: TGridPanel;
    Panel_AnalysisInfo1: TPanel;
    Panel_AnalysisInfo2: TPanel;
    Label_ObscheeKolichestvoSamoletov: TLabel;
    Shape_SplitDot1: TShape;
    Panel_AnalysisInfo21: TPanel;
    Label_KolichestvoSamoletov1: TLabel;
    Label_KolichestvoSamoletov2: TLabel;
    Label_DolyaSamoletovMonitoring1: TLabel;
    Label_DolyaSamoletovMonitoring2: TLabel;
    Label_SrZnSrRaznosti1: TLabel;
    Label_SrZnSrRaznosti2: TLabel;
    Label_SrZnSrRaznosti3: TLabel;
    DBText_ObscheeKolichestvoSamoletov: TDBText;
    DBText_KolichestvoSamoletov: TDBText;
    DBText_DolyaSamoletovMonitoring: TDBText;
    DBText_SrZnSrRaznosti: TDBText;
    BitBtn_TargetsMenu: TBitBtn;
    BitBtn_SessionsMenu: TBitBtn;
    BitBtn_LastSession: TBitBtn;
    BitBtn_ValueWeightGraph: TBitBtn;
    MemTable_IsobaraTargets: TMemTableEh;
    DS_IsobaraTargets: TDataSource;
    MemTable_IsobaraDatas: TMemTableEh;
    DS_IsobaraDatas: TDataSource;
    MemTable_IsobaraTargetsIDENTIFIKATOR: TStringField;
    MemTable_IsobaraDatasIDENTIFIKATOR: TStringField;
    MemTable_IsobaraDatasRAZNOST_BG_VISOT: TFloatField;
    MemTable_IsobaraDatasDIAPAZON_VISOTI: TIntegerField;
    MemTable_IsobaraDatasRASSTOYANIE: TFloatField;
    MemTable_IsobaraTargetsOCENKA_NAKLONA_ISOBARA: TFloatField;
    Panel_GraphNaklonIsobara: TPanel;
    Shape_GraphNaklonIsobara: TShape;
    Chart_ValueWeightGraph: TChart;
    Series_Graph: TLineSeries;
    MemTable_PrepareDatasDOSTOVERNOST: TIntegerField;
    Panel_SetIntervalDateTime: TPanel;
    Label_SetIntervalDateTime: TLabel;
    Panel_SetDate: TPanel;
    DTPicker_SetDate: TDateTimePicker;
    Panel_SetTime: TPanel;
    Label_SetHourSI: TLabel;
    Label_SetMinuteSI: TLabel;
    Edit_SetHour: TDBNumberEditEh;
    Edit_SetMinute: TDBNumberEditEh;
    Label_SetIntervalDateTimePlus: TLabel;
    Panel_SetIntervalHour: TPanel;
    Label_SetIntervalHourSI: TLabel;
    Edit_SetIntervalHour: TDBNumberEditEh;
    Panel_IsobaraTableBack: TPanel;
    Panel_IsobaraTargetsTable: TPanel;
    DBGrid_IsobaraTargets: TDBGridEh;
    Panel_IsobaraDatasTable: TPanel;
    DBGrid_IsobaraDatas: TDBGridEh;
    MemTable_MergDatasREYS: TStringField;
    DBNumberEditEh1: TDBNumberEditEh;
    Button1: TButton;
    DBNumberEditEh2: TDBNumberEditEh;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBNumberEditEh3: TDBNumberEditEh;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn_ValueWeightGraphClick(Sender: TObject);
    procedure BitBtn_LastSessionClick(Sender: TObject);
    procedure BitBtn_SessionsMenuClick(Sender: TObject);
    procedure BitBtn_TargetsMenuClick(Sender: TObject);
    procedure DTPicker_SetDateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
      procedure FiltrTo2Sigma(Sender:TObject);
        procedure FiltrSeansToSigma(Sender: TObject);
        procedure SRZNAC(Sender: TObject);
    //    procedure FiltrSeans(Sender: TObject);
    procedure DS_MergDatasDataChange(Sender: TObject; Field: TField);
    procedure DTPicker_SetDateChange(Sender: TObject);
    procedure Timer_NavigatorsTimer(Sender: TObject);
    procedure Btn_PrepareDatasAndAnalysisExecuteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure WMGetMinMaxInfo(var MSG: TMessage); message WM_GetMinMaxInfo;
    procedure WMWindowPosChanged(var MSG: TMessage); message WM_WINDOWPOSCHANGED;
  public
    { Public declarations }
    procedure PrepareDatasAndAnalysisExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
  end;
  
  procedure DB_presence;

var
  Form_Main: TForm_Main;
  EXEFilePath: string;
  DataBaseFile, DLLFile, LastSessionName: string;
  DBClearDate, DBClearCheck: integer;
  LastSessionIntervalHour: integer;
  LastSessionDateTime: TDateTime;
  DB_Error, doCancelExecute: boolean;
  //----
  dDate: TDate;
  dTime: TTime;
  wDay, wMonth, wYear, wHours, wMinutes, wSeconds, wMSeconds: Word;
  massiv_ValueWeight: array of array of double;
  //----
  sLicense: string;

implementation

uses DB_unit, DBTargets_unit, DBSessions_unit,
     DataBase_unit, ParamDataBase_unit, DBConnect_unit, License_unit,
     DBTargets_Append_and_Edit_unit, ParamLoadFromFile_unit, LoadFromFile_unit,
     ValueWeightGraph_unit;

{$R *.dfm}

//---- ������� ������� ������� ���� --------------------------------------------
procedure TForm_Main.WMGetMinMaxInfo(var MSG: Tmessage);
begin
  inherited;
  with PMinMaxInfo(MSG.lparam)^ do
  begin
    ptMinTrackSize.X:=1000;
    ptMinTrackSize.Y:=600;
  end;
end;

procedure TForm_Main.WMWindowPosChanged(var MSG: Tmessage);
var
  FormBorderWidth, FormBorderHeight: integer;
begin
  try
    inherited;
    FormBorderWidth:=Round((Form_Main.Width-Form_Main.ClientWidth)/2);
    FormBorderHeight:=Form_Main.Height-Form_Main.ClientHeight-FormBorderWidth;
    if (Form_DataBase<>nil) and (Form_DataBase.Showing) then
    begin
      Form_DataBase.Left:=Form_Main.Left+FormBorderWidth+
                          Form_Main.Width-Form_DataBase.Width-19;
      Form_DataBase.Top:=Form_Main.Top+FormBorderHeight+
                         Form_Main.Panel_Targets.Top+5;
    end;
    if (Form_DBTargets<>nil) and (Form_DBTargets.Showing) then
    begin
      Form_DBTargets.Left:=Form_Main.Left+FormBorderWidth+
                           Panel_Targets.Left+31+3;
      Form_DBTargets.Top:=Form_Main.Top+FormBorderHeight+
                          Panel_Targets.Top+Panel_Targets.Height-1;
      Form_DBTargets.Width:=Panel_Targets.Width-31-8;
      Form_DBTargets.Height:=Form_Main.Height-70;
      Form_DBTargets.Shape_BorderTop.Margins.Right:=Form_DataBase.Width+7;
    end;
    if (Form_DBSessions<>nil) and (Form_DBSessions.Showing) then
    begin
      Form_DBSessions.Left:=Form_Main.Left+FormBorderWidth+
                            Panel_Sessions.Left+31+3;
      Form_DBSessions.Top:=Form_Main.Top+FormBorderHeight+
                           Panel_Sessions.Top+Panel_Sessions.Height-1;
      Form_DBSessions.Width:=Form_Main.Panel_Sessions.Width-31-8;
      Form_DBSessions.Height:=Form_Main.Height-70-31;
    end;
    if (Form_ValueWeightGraph<>nil) and (Form_ValueWeightGraph.Showing) then
    begin
      Form_ValueWeightGraph.Left:=Form_Main.Left+FormBorderWidth+Form_Main.Width-
                                  Form_ValueWeightGraph.Width-40-3;
      Form_ValueWeightGraph.Top:=Form_Main.Top+FormBorderHeight+Form_Main.Height-
                                 Form_ValueWeightGraph.Height-69;
    end;
  except on E: Exception do
    begin

    end;
  end;
end;
//---- ��� (������ ����������) -------------------------------------------------
function OGZ_Dalnost(X1, Y1, X2, Y2: single): double; export; stdcall;
const
  RS=6371.302;
var
  distance, d: double;
begin
  try
    if (X1=X2) and (Y1=Y2) then
    begin
      distance:=0.001;
    end
    else
    begin
      d:=ArcCos(Sin(X2)*Sin(X1)+Cos(X2)*Cos(X1)*Cos(Y2-Y1));
      distance:=RS*d;
    end;
  except on E: Exception do
    begin
      distance:=-1;
    end;
  end;

  Result:=distance;
end;
//---- �������� ----------------------------------------------------------------
const
  StartKey = 471;
  MultKey = 62142;
  AddKey = 11719;

function Encrypt(const InString: string; StartKey, MultKey, AddKey: Integer):
  string;
var
  i: Byte;
  // ���� �������� ��� ���������� I �� Integer, �� ����� ��������
  // ���������� ������ ������ ����� 255 �������� - VID.
begin
  Result:='';
  for i:=1 to Length(InString) do
  begin
    Result:=Result+Char(Byte(InString[i]) xor (StartKey shr 8));
    StartKey:=(Byte(Result[i])+StartKey)*MultKey+AddKey;
  end;
end;

function Decrypt(const InString: string; StartKey, MultKey, AddKey: Integer):
  string;
var
  i: Byte;
  // ���� �������� ��� ���������� I �� Integer, �� ����� ��������
  // ���������� ������ ������ ����� 255 �������� - VID.
begin
  Result:='';
  for i:=1 to Length(InString) do
  begin
    Result:=Result+Char(Byte(InString[i]) xor (StartKey shr 8));
    StartKey:=(Byte(InString[i])+StartKey)*MultKey+AddKey;
  end;
end;
//---- ��������� ���� ������ ---------------------------------------------------
procedure DB_presence;
var
  Ini: TIniFile;
  s: string;
  s1:string;
begin
  DB_Error:=false;
  Form_Main.Label_RecordsCountTargets.Caption:='';
  Form_Main.Label_RecordsCountTargsInd.Caption:='';
  Form_Main.Label_RecordsCountSessions.Caption:='';

  with DBForm do
  begin
    MonitoringDB.Connected:=false;
    //--------
    //MoninoringSB.Connected:=true;
    //----------
    s:=ExtractFilePath(EXEFilePath);
    Ini:=TIniFile.Create(s+'Configuration.ini');
    DataBaseFile:=Ini.ReadString('DataBase', 'DataBaseFile', '');
    DLLFile:=Ini.ReadString('DataBase', 'DLLFile', '');
    Ini.Free;
    //========
 // s1:=ExtractFilePath(EXEFilePath);
  //  Ini:=TIniFile.Create(s+'Configuration1.ini');
  //  DataBaseFile:=Ini.ReadString('DataBase', 'DataBaseFile', '');
  //  DLLFile:=Ini.ReadString('DataBase', 'DLLFile', '');
  //  Ini.Free;
    ///======

    if DataBaseFile<>'' then
    begin
      try
        if FileExists(DataBaseFile)=true then
        begin
          MonitoringDB.DatabaseName:=DataBaseFile;

          if FileExists(dllfile)=true then
          begin
            MonitoringDB.LibraryName:=DLLFile;
            MonitoringDB.Connected:=true;

            Targets.Active:=true;
            Sessions.Active:=true;
            TargsInSes.Active:=true;
            Isobara.Active:=true;
            TargsInd.Active:=true;
            Statistics.Active:=true;

            Read_Transaction.Active:=true;

            Targets.Last;
            Targets.First;
            Sessions.Last;
            Sessions.First;
            TargsInSes.Last;
            TargsInSes.First;
            Isobara.Last;
            Isobara.First;
            TargsInd.Last;
            TargsInd.First;
            Statistics.Last;
            Statistics.First;
          end
          else
          begin
            DB_Error:=true;
            MessageDlg('������ ����������� ���� ������ � ����������.'+#13#10+
                       '�� ������ ���� c ����������� '+'"'+DLLFile+'".', mtWarning, [mbOk], 0);
          end;
        end
        else
        begin
          DB_Error:=true;
          MessageDlg('������ ����������� ���� ������ � ����������.'+#13#10+
                     '�� ������ ���� � ����� ������ '+'"'+DataBaseFile+'".', mtWarning, [mbOk], 0);
        end;
        //=======================
      except
        on E: Exception do
        begin
          DB_Error:=true;
        end;
      end;
    end
    else
    begin
      DB_Error:=true;
    end;
  end;
end;
//---- ������ �� ������� ���� ������ -------------------------------------------
procedure DBClear_params;
var
  Ini: TIniFile;
  s: string;
begin
  s:=ExtractFilePath(EXEFilePath);
  Ini:=TIniFile.Create(s+'Configuration.ini');
  DBClearDate:=Ini.ReadInteger('DataBase', 'DBClearDate', -1);
  DBClearCheck:=Ini.ReadInteger('DataBase', 'DBClearCheck', 0);
  Ini.Free;
end;
//---- ������ � ��������� ������ -----------------------------------------------
procedure LastSession_params;
var
  Ini: TIniFile;
  s: string;
begin
  s:=ExtractFilePath(EXEFilePath);
  Ini:=TIniFile.Create(s+'Configuration.ini');
  LastSessionName:=Ini.ReadString('Sessions', 'LastSessionName', '');
  LastSessionDateTime:=Ini.ReadDateTime('Sessions', 'LastSessionDateTime', Now);
  LastSessionIntervalHour:=Ini.ReadInteger('Sessions', 'LastSessionIntervalHour', 1);
  Ini.Free;

  dDate:=LastSessionDateTime;
  DecodeDate(LastSessionDateTime, wYear, wMonth, wDay);
  DecodeTime(LastSessionDateTime, wHours, wMinutes, wSeconds, wMSeconds);
  wSeconds:=0;
  wMSeconds:=0;
  LastSessionDateTime:=EncodeDate(wYear, wMonth, wDay);
  LastSessionDateTime:=EncodeTime(wHours, wMinutes, wSeconds, wMSeconds);
  Form_Main.DTPicker_SetDate.Date:=dDate;
  Form_Main.Edit_SetHour.Text:=IntToStr(wHours);
  Form_Main.Edit_SetMinute.Text:=IntToStr(wMinutes);
  Form_Main.Edit_SetIntervalHour.Text:=IntToStr(LastSessionIntervalHour);
end;
//------------------------------------------------------------------------------
procedure TForm_Main.FormShow(Sender: TObject);
var
  Layout: array [0..KL_NAMELENGTH] of Char;
begin
  LoadKeyboardLayout(StrCopy(Layout, '00000419'), KLF_ACTIVATE);
  
  DB_presence;
  if DB_Error=true then
  begin
    Form_DataBase.Label_DataBaseInfo.Caption:='������ ����������� ���� ������';
  end
  else
  begin
    Form_DataBase.Label_DataBaseInfo.Caption:='���� ������ ����������';
  end;
  //----
  DBClear_params;
  //----
  LastSession_params;
  //----
  Panel_PrepareAndResultDatas.Visible:=false;

  Form_Main.Left:=Round(Screen.WorkAreaWidth/2-Form_Main.Width/2);
  Form_Main.Top:=Round(Screen.WorkAreaHeight/2-Form_Main.Height/2);
  Form_DataBase.Show;
  Timer_Navigators.Enabled:=true;
end;

procedure TForm_Main.Timer_NavigatorsTimer(Sender: TObject);
begin
  try
    Form_DataBase.Btn_DBRefresh.Enabled:=DBNavigator_Targets.Controls[Ord(nbRefresh)].Enabled;
    //----
    Form_DBTargets.Btn_LoadFromFile.Enabled:=DBNavigator_Targets.Controls[Ord(nbInsert)].Enabled;
    Form_DBTargets.Btn_Append.Enabled:=DBNavigator_Targets.Controls[Ord(nbInsert)].Enabled;
    Form_DBTargets.Btn_Edit.Enabled:=DBNavigator_Targets.Controls[Ord(nbEdit)].Enabled;
    Form_DBTargets.Btn_TargetsDelete.Enabled:=DBNavigator_Targets.Controls[Ord(nbDelete)].Enabled;
    Form_DBTargets.Btn_TargetsDeleteAll.Enabled:=DBNavigator_Targets.Controls[Ord(nbDelete)].Enabled;
    Form_DBTargetsAppendAndEdit.Btn_Post.Enabled:=DBNavigator_Targets.Controls[Ord(nbPost)].Enabled;
    Form_DBTargetsAppendAndEdit.Btn_Cancel.Enabled:=DBNavigator_Targets.Controls[Ord(nbCancel)].Enabled;
    //----
    Form_DBTargets.Btn_TargsIndDelete.Enabled:=DBNavigator_TargsInd.Controls[Ord(nbDelete)].Enabled;
    Form_DBTargets.Btn_TargsIndDeleteAll.Enabled:=DBNavigator_TargsInd.Controls[Ord(nbDelete)].Enabled;
  except on E: Exception do
    begin
    
    end;
  end;
end;

procedure TForm_Main.CancelExecute(Sender: TObject);
begin
  Panel_PrepareAndResultDatas.Visible:=false;
  Label_MessagesExecute.Caption:='';
  Panel_MessagesExecute.Visible:=false;
  Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
  Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
  Application.ProcessMessages();

  Panel_Targets.Enabled:=true;
  Panel_Sessions.Enabled:=true;
  Panel_PrepareAndResultDatasBack.Enabled:=true;
  Form_DataBase.Panel_DataBase.Enabled:=true;
  Application.ProcessMessages();

  Form_DataBase.Btn_DBRefresh.OnClick(Sender);
end;

procedure TForm_Main.PrepareDatasAndAnalysisExecute(Sender: TObject);
label
    MET;
var
  Ini: TIniFile;
  RC_mt,i_rg,hsf,QW: integer;
  r_m,knl:integer;
x,y,x2,x3,x4:array of double;
  An,Bn,Cn,Sx,Sy,Sx2,Syx,Sx3,Sx4,Syx2,d0,d1,d2,d3:double;
  ip,i_k,j_k,k_k:integer;

  x_rg,y_kl,s, SQL_value, sDTbegin, sDTend, sIdentifikator, sReys,sEhbegin, sEhend: string;
  i, k, Kol_Samoletov, Obschee_Kol_Samoletov: integer;
  SumRaznost, SrRaznost, SrZn_SrRaznosti, Ocenka_Pogreshnostey, Ocenka_s_Vesom, Dolya: double;
  doDeleteRecord, doNextRecord: boolean;
  mIsobaraDatas: array of IsobaraDatas;
  dShirotaBegin, dDolgotaBegin, dShirotaEnd, dDolgotaEnd, dDalnost: double;
  dShirotaNew, dDolgotaNew, dShirotaOld, dDolgotaOld: double;
  SumXi, SumYi, SumX2i, SumXiYi, Xi, A, B: double;
    RMp,SRp,Sp,Mp,Dp,SRS:double;

begin
  Panel_Targets.Enabled:=false;
  Panel_Sessions.Enabled:=false;
  Panel_PrepareAndResultDatasBack.Enabled:=false;
  Form_DataBase.Panel_DataBase.Enabled:=false;
  PCtrl_ResultDatas.ActivePage:=TSh_MergDatas;
  Application.ProcessMessages();

  Label_MessagesExecute.Caption:='';
  Panel_MessagesExecute.Visible:=false;
  Btn_PrepareDatasAndAnalysisExecute.Caption:='�������� ���������� �������';
  Application.ProcessMessages();

  Form_DataBase.Btn_DBRefresh.OnClick(Sender);
  //---- ���������� ������ � Ini-���� ----------------------------------------
  LastSessionDateTime:=DTPicker_SetDate.DateTime;
  DecodeDate(LastSessionDateTime, wYear, wMonth, wDay);
  wHours:=StrToInt(Edit_SetHour.Text);
  wMinutes:=StrToInt(Edit_SetMinute.Text);
  wSeconds:=0;
  wMSeconds:=0;
  dTime:=EncodeTime(wHours, wMinutes, wSeconds, wMSeconds);
  dDate:=EncodeDate(wYear, wMonth, wDay);
  LastSessionDateTime:=StrToDateTime(DateToStr(dDate)+' '+TimeToStr(dTime));
  sDTbegin:=DateToStr(dDate)+' '+TimeToStr(dTime);
  LastSessionIntervalHour:=StrToInt(Edit_SetIntervalHour.Text);
  sDTend:=DateTimeToStr(LastSessionDateTime+EncodeTime(LastSessionIntervalHour, 0, 0, 0));
  sEhbegin:=Edit1.Text;
  sEhend:=Edit2.Text;
  s:=ExtractFilePath(EXEFilePath);
  Ini:=TIniFile.Create(s+'Configuration.ini');
  Ini.WriteString('Sessions', 'LastSessionName', LastSessionName);
  Ini.WriteDateTime('Sessions', 'LastSessionDateTime', LastSessionDateTime);
  Ini.WriteInteger('Sessions', 'LastSessionIntervalHour', LastSessionIntervalHour);
  Ini.Free;
  //---- ���������� ������ ---------------------------------------------------
  Label_MessagesExecute.Caption:='���������� ������ ��� �������';
  Panel_MessagesExecute.Visible:=true;
  Panel_PrepareAndResultDatas.Visible:=false;
  Application.ProcessMessages();

  try
    //---- ������� ������� �������������� ������ ----
    if MemTable_PrepareDatas.RecordCount>0 then MemTable_PrepareDatas.EmptyTable;
    if MemTable_MergDatas.RecordCount>0 then MemTable_MergDatas.EmptyTable;
    if MemTable_IsobaraTargets.RecordCount>0 then MemTable_IsobaraTargets.EmptyTable;
    if MemTable_IsobaraDatas.RecordCount>0 then MemTable_IsobaraDatas.EmptyTable;
    //---- ������ � ������ �� ������� ������ -----
    DBForm.Targets_Query.Active:=false;
    DBForm.Targets_Query.SQLs.SelectSQL.Clear;
    SQL_value:='SELECT * FROM TARGETS1 WHERE VREMYA_ZAPISI>='+#39+sDTbegin+#39+' AND '+
                                           'VREMYA_ZAPISI<='+#39+sDTend+#39+' AND '+'BAROMETR_VISOTA>='+#39+sEhbegin+#39+' AND '+' BAROMETR_VISOTA<='+#39+sEhend+#39;
    DBForm.Targets_Query.SQLs.SelectSQL.Add(SQL_value);
    DBForm.Targets_Query.Active:=true;
    //---- �������� ���� ������, ��������������� ������� ----
    if DBForm.Targets_Query.RecordCount>0 then
    begin
      DBForm.Targets_Query.First;
      while not DBForm.Targets_Query.Eof do
      begin
        MemTable_PrepareDatas.Append;
        MemTable_PrepareDatasIDENTIFIKATOR.AsString:=DBForm.Targets_QueryIDENTIFIKATOR.AsString;
        MemTable_PrepareDatasBAROMETR_VISOTA.AsFloat:=DBForm.Targets_QueryBAROMETR_VISOTA.AsFloat;
        MemTable_PrepareDatasGEOMETR_VISOTA.AsFloat:=DBForm.Targets_QueryGEOMETR_VISOTA.AsFloat;
        MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat:=DBForm.Targets_QueryRAZNOST_BG_VISOT.AsFloat;
        MemTable_PrepareDatasVREMYA_ZAPISI.AsDateTime:=DBForm.Targets_QueryVREMYA_ZAPISI.AsDateTime;
        MemTable_PrepareDatasSHIROTA_STR.AsString:=DBForm.Targets_QuerySHIROTA_STR.AsString;
        MemTable_PrepareDatasSHIROTA_DEC.AsFloat:=DBForm.Targets_QuerySHIROTA_DEC.AsFloat;
        MemTable_PrepareDatasDOLGOTA_STR.AsString:=DBForm.Targets_QueryDOLGOTA_STR.AsString;
        MemTable_PrepareDatasDOLGOTA_DEC.AsFloat:=DBForm.Targets_QueryDOLGOTA_DEC.AsFloat;
        MemTable_PrepareDatasREYS.AsString:=DBForm.Targets_QueryREYS.AsString;
        MemTable_PrepareDatasTIP_BORTA.AsString:=DBForm.Targets_QueryTIP_BORTA.AsString;
        MemTable_PrepareDatasDOSTOVERNOST.AsInteger:=DBForm.Targets_QueryDOSTOVERNOST.AsInteger;
        MemTable_PrepareDatas.Post;

        DBForm.Targets_Query.Next;
        Application.ProcessMessages();
        //----
        if doCancelExecute=true then
        begin
          CancelExecute(Sender);
          Exit;
        end;
      end;
      DBForm.Targets_Query.First;

      MemTable_PrepareDatas.SortOrder:='IDENTIFIKATOR ASC, VREMYA_ZAPISI ASC';
    end;
    //---- �������� ���������� ������ ----
    Label_MessagesExecute.Caption:='���������� ���������� ������ �� �������';
    Application.ProcessMessages();

    if MemTable_PrepareDatas.RecordCount>1 then
    begin
      MemTable_PrepareDatas.First;
      sIdentifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
      k:=1;

      while not MemTable_PrepareDatas.Eof do
      begin

        if MemTable_PrepareDatasIDENTIFIKATOR.AsString<>sIdentifikator then
        begin
          sIdentifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
          k:=k+1;
        end;

        MemTable_PrepareDatas.Next;
        Application.ProcessMessages();
        //----
        if doCancelExecute=true then
        begin
          CancelExecute(Sender);
          Exit;
        end;
      end;
      MemTable_PrepareDatas.First;
      //----
      Obschee_Kol_Samoletov:=k;


      MemTable_PrepareDatas.First;
      while not MemTable_PrepareDatas.Eof do
      begin
        if MemTable_PrepareDatasDOSTOVERNOST.AsInteger>=8 then MemTable_PrepareDatas.Next
          else MemTable_PrepareDatas.Delete;
        Application.ProcessMessages();
        //----
        if doCancelExecute=true then
        begin
          CancelExecute(Sender);
          Exit;
        end;
      end;
     //MemTable_PrepareDatas.First;

      //--------------------------
                    //------------------------------------------------------------------------
      //------------------------------------------------------------------------
      MemTable_PrepareDatas.First;
                       SRS:=0;
              Mp:=0;
             ip:=0;
          while not MemTable_PrepareDatas.EOF do
            begin
              SRS:=SRS+MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
              ip:=ip+1;
              MemTable_PrepareDatas.Next;
            end;
            Mp:=round(100*(SRS/ip)+0.5)/100;  //�������������� ��������
          //Edit3.Text:=FloatToStr(M);
            // ������� ���������
          MemTable_PrepareDatas.First;
            RMp:=0;
            SRp:=0;
           while not MemTable_PrepareDatas.EOF do
            begin
              RMp:=(MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat-Mp)*(MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat-Mp);
             SRp:=SRp+RMp;
           MemTable_PrepareDatas.Next;
            end;

            Dp:=round(100*(SRp/ip)+0.5)/100; //���������
         //    Edit2.Text:=FloatToStr(D);
            Sp:=round(100*(sqrt(Dp))+0.5)/100;
                     //DBForm.Sessions.Prior;
            //DBForm.Sessions.Edit;

            //DBForm.Sessions.Post;
            //-------------------------------------------------------------------
            //-------------------------------------------------------------------
      //--------------------------
      MemTable_PrepareDatas.First;
      //---- ������ ������ ----
      if MemTable_PrepareDatas.RecordCount>1 then
      begin
        sIdentifikator:='';
        SumRaznost:=0;
        k:=0;
        hsf:=0;
        dShirotaEnd:=0;
        dDolgotaEnd:=0;
        MemTable_PrepareDatas.First;
        while not MemTable_PrepareDatas.Eof do
        begin
          if MemTable_PrepareDatasIDENTIFIKATOR.AsString<>sIdentifikator then
          begin
            if sIdentifikator<>'' then
            begin
              SrRaznost:=SumRaznost/k;
              MemTable_MergDatas.Append;
              MemTable_MergDatasIDENTIFIKATOR.AsString:=sIdentifikator;
              MemTable_MergDatasSRRAZNOST.AsFloat:=SrRaznost;
              MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=0;
              MemTable_MergDatasREYS.AsString:=MemTable_PrepareDatasREYS.AsString;
              MemTable_MergDatas.Post;

              if k>1 then
              begin
                dDalnost:=OGZ_Dalnost(DegToRad(dShirotaBegin),
                                      DegToRad(dDolgotaBegin),
                                      DegToRad(dShirotaEnd),
                                      DegToRad(dDolgotaEnd));
              end
              else dDalnost:=0;

              if dDalnost>=100 then
              begin
                MemTable_IsobaraTargets.Append;
                MemTable_IsobaraTargetsIDENTIFIKATOR.AsString:=sIdentifikator;
                MemTable_IsobaraTargets.Post;

                for i:=0 to k-1 do
                begin
                  MemTable_IsobaraDatas.Append;
                  MemTable_IsobaraDatasIDENTIFIKATOR.AsString:=mIsobaraDatas[i].Identifikator;
                  MemTable_IsobaraDatasRAZNOST_BG_VISOT.AsFloat:=mIsobaraDatas[i].RaznostBGVisot;
                  MemTable_IsobaraDatasDIAPAZON_VISOTI.AsInteger:=mIsobaraDatas[i].DiapazonVisoti;
                  MemTable_IsobaraDatasRASSTOYANIE.AsFloat:=mIsobaraDatas[i].Rasstoyanie;
                  MemTable_IsobaraDatas.Post;

                  Application.ProcessMessages();
                end;
              end;
            end;
            //----
            sIdentifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
            SumRaznost:=MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
            dShirotaBegin:=MemTable_PrepareDatasSHIROTA_DEC.AsFloat;
            dDolgotaBegin:=MemTable_PrepareDatasDOLGOTA_DEC.AsFloat;
            k:=1;
            hsf:=1;
            SetLength(mIsobaraDatas, k);
            mIsobaraDatas[k-1].Identifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
            mIsobaraDatas[k-1].RaznostBGVisot:=MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
            mIsobaraDatas[k-1].DiapazonVisoti:=100*Round(MemTable_PrepareDatasBAROMETR_VISOTA.AsFloat/100);
            dShirotaOld:=MemTable_PrepareDatasSHIROTA_DEC.AsFloat;
            dDolgotaOld:=MemTable_PrepareDatasDOLGOTA_DEC.AsFloat;
            mIsobaraDatas[k-1].Rasstoyanie:=0;
          end
          else
          begin


            SumRaznost:=SumRaznost+MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
            dShirotaEnd:=MemTable_PrepareDatasSHIROTA_DEC.AsFloat;
            dDolgotaEnd:=MemTable_PrepareDatasDOLGOTA_DEC.AsFloat;
            k:=k+1;
            hsf:=hsf+1;
            SetLength(mIsobaraDatas, k);
            mIsobaraDatas[k-1].Identifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
            mIsobaraDatas[k-1].RaznostBGVisot:=MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
            mIsobaraDatas[k-1].DiapazonVisoti:=100*Round(MemTable_PrepareDatasBAROMETR_VISOTA.AsFloat/100);
            dShirotaNew:=MemTable_PrepareDatasSHIROTA_DEC.AsFloat;
            dDolgotaNew:=MemTable_PrepareDatasDOLGOTA_DEC.AsFloat;
            mIsobaraDatas[k-1].Rasstoyanie:=OGZ_Dalnost(DegToRad(dShirotaNew),
                                                        DegToRad(dDolgotaNew),
                                                        DegToRad(dShirotaOld),
                                                        DegToRad(dDolgotaOld));
            dShirotaOld:=MemTable_PrepareDatasSHIROTA_DEC.AsFloat;
            dDolgotaOld:=MemTable_PrepareDatasDOLGOTA_DEC.AsFloat;
          end;

          MemTable_PrepareDatas.Next;
          Application.ProcessMessages();
          //----
          if doCancelExecute=true then
          begin
            CancelExecute(Sender);
            Exit;
          end;
        end;
        MemTable_PrepareDatas.First;

        SrRaznost:=SumRaznost/k;
        MemTable_MergDatas.Append;
        MemTable_MergDatasIDENTIFIKATOR.AsString:=sIdentifikator;
        MemTable_MergDatasSRRAZNOST.AsFloat:=SrRaznost;
        MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=0;
        MemTable_MergDatasREYS.AsString:=MemTable_PrepareDatasREYS.AsString;
        MemTable_MergDatas.Post;

        if k>1 then
        begin
          dDalnost:=OGZ_Dalnost(DegToRad(dShirotaBegin),
                                DegToRad(dDolgotaBegin),
                                DegToRad(dShirotaEnd),
                                DegToRad(dDolgotaEnd));
        end
        else dDalnost:=0;

        if dDalnost>=100 then
        begin
          MemTable_IsobaraTargets.Append;
          MemTable_IsobaraTargetsIDENTIFIKATOR.AsString:=sIdentifikator;
          MemTable_IsobaraTargets.Post;

          for i:=0 to k-1 do
          begin
            MemTable_IsobaraDatas.Append;
            MemTable_IsobaraDatasIDENTIFIKATOR.AsString:=mIsobaraDatas[i].Identifikator;
            MemTable_IsobaraDatasRAZNOST_BG_VISOT.AsFloat:=mIsobaraDatas[i].RaznostBGVisot;
            MemTable_IsobaraDatasDIAPAZON_VISOTI.AsInteger:=mIsobaraDatas[i].DiapazonVisoti;
            MemTable_IsobaraDatasRASSTOYANIE.AsFloat:=mIsobaraDatas[i].Rasstoyanie;
            MemTable_IsobaraDatas.Post;

            Application.ProcessMessages();
          end;
        end;
        //---------------------------------------------------------------------
        //----------------------------------------------------------------------
              MemTable_MergDatas.Last;
              y_kl:=MemTable_MergDatasReys.AsString;
              RC_mt:=MemTable_MergDatas.RecordCount;
              MemTable_MergDatas.First;
                for i_rg := 0 to RC_mt-1 do
                      begin
                        x_rg:=MemTable_MergDatasReys.AsString;
                       MemTable_MergDatas.Edit;
                        MemTable_MergDatasReys.AsString:=y_kl;
                        MemTable_MergDatas.Post;
                        Application.ProcessMessages();
                        y_kl:=x_rg;
                        MemTable_MergDatas.Next;

                      end;


        //----------------------------------------------------------------------
        //----------------------------------------------------------------------

        MemTable_MergDatas.First;
        MemTable_IsobaraTargets.First;
        MemTable_IsobaraDatas.First;
        //----
        Label_MessagesExecute.Caption:='���������� ������� ������';
        Application.ProcessMessages();

        SumRaznost:=0;
        k:=0;
        MemTable_PrepareDatas.First;
        MemTable_MergDatas.First;
        if MemTable_MergDatas.RecordCount>3 then
        begin
          while not MemTable_MergDatas.Eof do
          begin
            SumRaznost:=SumRaznost+MemTable_MergDatasSRRAZNOST.AsFloat;
            k:=k+1;

            MemTable_MergDatas.Next;
            Application.ProcessMessages();
            //----
            if doCancelExecute=true then
            begin
              CancelExecute(Sender);
              Exit;
            end;
          end;
          //----
          MemTable_MergDatas.First;
          while not MemTable_MergDatas.Eof do
          begin
            SrZn_SrRaznosti:=(SumRaznost-MemTable_MergDatasSRRAZNOST.AsFloat)/(k-1);
            //Ocenka_Pogreshnostey:=MemTable_MergDatasSRRAZNOST.AsFloat-(An+Bn*hsf+Cn*hsf*hsf);

            Ocenka_Pogreshnostey:=MemTable_MergDatasSRRAZNOST.AsFloat-SrZn_SrRaznosti;
            MemTable_MergDatas.Edit;
            MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=Ocenka_Pogreshnostey;
            MemTable_MergDatasSRRAZNOST.AsFloat;//-Ocenka_Pogreshnostey;
            MemTable_MergDatas.Post;

            MemTable_MergDatas.Next;
            Application.ProcessMessages();
            //----
            if doCancelExecute=true then
            begin
              CancelExecute(Sender);
              Exit;
            end;
          end;
          MemTable_MergDatas.First;
          //----
          SrZn_SrRaznosti:=SumRaznost/k;
        end
        else
        begin
          Goto MET;

         //SrZn_SrRaznosti:=0;

       //  Ocenka_Pogreshnostey:=MemTable_MergDatasSRRAZNOST.AsFloat-SrZn_SrRaznosti;
      // MemTable_MergDatas.Edit;
      //   MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=Ocenka_Pogreshnostey;
      //   MemTable_MergDatas.Post;

      //  MemTable_MergDatas.First;
          //----
      //   SumRaznost:=SumRaznost+MemTable_MergDatasSRRAZNOST.AsFloat;
      //   SrZn_SrRaznosti:=SumRaznost;
        end;
        //----
        Btn_PrepareDatasAndAnalysisExecute.Enabled:=false;
        Application.ProcessMessages();

        DBForm.Write_Transaction.Active:=true;
        DBForm.Sessions.Append;
        DBForm.SessionsVREMYA_SEANSA.AsDateTime:=Now;
        DBForm.SessionsVREMYA_INTERVALA.AsDateTime:=LastSessionDateTime;
        DBForm.SessionsINKREMENT_INTERVALA.AsInteger:=LastSessionIntervalHour;
        DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger:=MemTable_MergDatas.RecordCount;
        DBForm.SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV.AsInteger:=Obschee_Kol_Samoletov;
        Dolya:=100*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger/DBForm.SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV.AsInteger);
        DBForm.SessionsDOLYA_SAMOLETOV_MONITORING.AsFloat:=RoundTo(Dolya, -1);
        DBForm.SessionsSRZN_SRRAZNOSTI.AsFloat:=SrZn_SrRaznosti;
        DBForm.SessionsSIGMA_APR.AsFloat:=Sp;
        DBForm.SessionsEHELON.AsInteger:=StrToInt(Edit1.Text);
        
        DBForm.Sessions.Post;
        //----
        MemTable_MergDatas.First;
        while not MemTable_MergDatas.Eof do
        begin
          DBForm.Write_Transaction.Active:=true;
          DBForm.TargsInSes.Append;
          DBForm.TargsInSesIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
          DBForm.TargsInSesSRRAZNOST.AsFloat:=MemTable_MergDatasSRRAZNOST.AsFloat;
          DBForm.TargsInSesOCENKA_POGRESHNOSTEY.AsFloat:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
          DBForm.TargsInSesOCENKA_NAKLONA_ISOBARA.AsFloat:=0;

          if DBForm.TargsInd.RecordCount>0 then
          begin
            sIdentifikator:=MemTable_MergDatasIDENTIFIKATOR.AsString;
            sReys:=MemTable_MergDatasREYS.AsString;

            if DBForm.TargsInd.Locate('IDENTIFIKATOR', sIdentifikator, [loCaseInsensitive, loPartialKey])=true then
            begin
              Ocenka_s_Vesom:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              Kol_Samoletov:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;

              Ocenka_s_Vesom:=(DBForm.TargsInSesOCENKA_POGRESHNOSTEY.AsFloat*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1)+
                               Ocenka_s_Vesom*Kol_Samoletov)/(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov);
              Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov;
              //----
              DBForm.Write_Transaction.Active:=true;
              DBForm.Statistics.Append;
              DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
              DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
              DBForm.StatisticsOCENKA_NAKLONA_ISOBARA.AsFloat:=0;
              DBForm.StatisticsREYS.AsString:=sReys;
              DBForm.Statistics.Post;

              MemTable_MergDatas.Edit;
              MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
              MemTable_MergDatas.Post;
            end
            else
            begin
              Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
              Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
              //----
              DBForm.Write_Transaction.Active:=true;
              DBForm.TargsInd.Append;
              DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
              DBForm.TargsInd.Post;

              DBForm.Write_Transaction.Active:=true;
              DBForm.Statistics.Append;
              DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
              DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
              DBForm.StatisticsOCENKA_NAKLONA_ISOBARA.AsFloat:=0;
              DBForm.StatisticsREYS.AsString:=sReys;
              DBForm.Statistics.Post;

              MemTable_MergDatas.Edit;
              MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
              MemTable_MergDatas.Post;
            end;
          end
          else
          begin
            Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
            Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
            //----
            DBForm.Write_Transaction.Active:=true;
            DBForm.TargsInd.Append;
            DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
            DBForm.TargsInd.Post;

            DBForm.Write_Transaction.Active:=true;
            DBForm.Statistics.Append;
            DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
            DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
            DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
            DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
            DBForm.StatisticsOCENKA_NAKLONA_ISOBARA.AsFloat:=0;
            DBForm.StatisticsREYS.AsString:=MemTable_PrepareDatasREYS.AsString;
            DBForm.Statistics.Post;

            MemTable_MergDatas.Edit;
            MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
            MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
            MemTable_MergDatas.Post;
          end;

          DBForm.TargsInSesOCENKA_S_VESOM.AsFloat:=MemTable_MergDatasOCENKA_S_VESOM.AsFloat;
          DBForm.TargsInSesKOLICHESTVO_SAMOLETOV.AsInteger:=MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger;
          DBForm.TargsInSes.Post;

          MemTable_MergDatas.Next;
          Application.ProcessMessages();
        end;
        MemTable_MergDatas.First;
        //----
        Label_MessagesExecute.Caption:='���������� ������ ������� �������';
        Application.ProcessMessages();

        DBForm.TargsInSes.First;
        MemTable_IsobaraTargets.First;
        while not MemTable_IsobaraTargets.Eof do
        begin
          if MemTable_IsobaraDatas.RecordCount>0 then
          begin
            SumXi:=0;
            SumYi:=0;
            SumX2i:=0;
            SumXiYi:=0;
            Xi:=0;
            A:=0;
            B:=0;
            k:=0;
 //          while not MemTable_PrepareDatas.Eof do
     // begin
     r_m:=0;
     MemTable_IsobaraDatas.First;
      while not MemTable_IsobaraDatas.EOF do
            begin
         r_m:=r_m+1;
            //end;
     MemTable_IsobaraDatas.Next;
            end;
       // MemTable_PrepareDatas.Next;
     // end;
         SetLength(x,r_m);
            SetLength(y,r_m);
            //SetLength(Sx,r_m);
            //SetLength(Sx2,r_m);
            //SetLength(Sy,r_m);
            //SetLength(Syx,r_m);
            //SetLength(Sx3,r_m);
            //SetLength(Sx4,r_m);
           // SetLength(Syx2,r_m);
            SetLength(x3,r_m);
            SetLength(x4,r_m);
            SetLength(x2,r_m);
            //x:=0;
            //y:=0;
            Sx:=0;
            Sy:=0;
            Syx:=0;
            Syx2:=0;
            Sx3:=0;
            Sx4:=0;
            Sx2:=0;
          ///  MemTable_PrepareDatas.First;
          //          knl:=0;
           //    while not MemTable_PrepareDatas.EOF do
           //      begin
            ////x,y,Sx,Sy,Sx2,SyxSetLength(x,r_m);,Sx3,Sx4,Syx2

            //     MemTable_PrepareDatas.Next;
             //       end;

            DBForm.Isobara.Options:=DBForm.Isobara.Options-[poRefreshAfterPost];
            knl:=0;
            MemTable_IsobaraDatas.First;
            while not MemTable_IsobaraDatas.Eof do
            begin
              DBForm.Isobara.Append;
              DBForm.IsobaraSESSION_ID.AsInteger:=DBForm.SessionsID_SESSIONS.AsInteger;
              DBForm.IsobaraIDENTIFIKATOR.AsString:=MemTable_IsobaraDatasIDENTIFIKATOR.AsString;
              DBForm.IsobaraRAZNOST_BG_VISOT.AsFloat:=MemTable_IsobaraDatasRAZNOST_BG_VISOT.AsFloat;
              DBForm.IsobaraDIAPAZON_VISOTI.AsInteger:=MemTable_IsobaraDatasDIAPAZON_VISOTI.AsInteger;
              DBForm.IsobaraRASSTOYANIE.AsFloat:=MemTable_IsobaraDatasRASSTOYANIE.AsFloat;
              DBForm.Isobara.Post;

            y[knl]:= MemTable_IsobaraDatasRAZNOST_BG_VISOT.AsFloat;
            x[knl]:=Xi+MemTable_IsobaraDatasRASSTOYANIE.AsFloat;
            x2[knl]:=power(x[knl],2);
            x3[knl]:=power(x[knl],3);
            x4[knl]:=power(x[knl],4);
            Sx:=x[knl]+Sx;
            Sy:=Sy+y[knl];
            Syx:=x[knl]*y[knl]+Syx;
            Syx2:=Syx2+y[knl]*x2[knl];
            Sx3:=Sx3+x3[knl];
            Sx4:=Sx4+x4[knl];
            Sx2:=Sx2+x2[knl];

              Xi:=Xi+MemTable_IsobaraDatasRASSTOYANIE.AsFloat;
              SumXi:=SumXi+Xi;

              SumYi:=SumYi+MemTable_IsobaraDatasRAZNOST_BG_VISOT.AsFloat;
              SumX2i:=SumX2i+Sqr(Xi);
              SumXiYi:=SumXiYi+Xi*MemTable_IsobaraDatasRAZNOST_BG_VISOT.AsFloat;

              k:=k+1;
           knl:=knl+1;
              MemTable_IsobaraDatas.Next;
            end;
            MemTable_IsobaraDatas.First;

            DBForm.Isobara.Options:=DBForm.Isobara.Options+[poRefreshAfterPost];

            d0:=r_m*Sx2*Sx4-r_m*Sx3*Sx3-Sx*Sx*Sx4-Sx*Sx3*Sx2+Sx2*Sx*Sx3-Sx2*Sx2*Sx2;
                   d1:=Sy*Sx2*Sx4-Sy*Sx3*Sx3-Sx*Syx*Sx4-Sx*Sx3*Sx2+Sx2*Syx*Sx3-Sx2*Sx2*Syx2;
                   d2:=r_m*Syx*Sx4-r_m*Sx3*Syx2-Sy*Sx*Sx4-Sy*Sx3*Sx2+Sx2*Sx*Syx2-Sx2*Syx*Sx2;
                   d3:=r_m*Sx2*Syx2-r_m*Syx*Sx3-Sx*Sx*Sx2-Sx*Syx*Sx2*Sy*Sx*Sx3-Sy*Sx2*Sx2;
                   An:=d1/d0;
                   Bn:=d2/d0;
                   Cn:=d3/d0;
                   knl:=knl+1;
            A:=(SumXiYi-(SumXi*SumYi)/k)/(SumX2i-Sqr(SumXi)/k);
            B:=(SumYi-SumXi*A)/k;

            if DBForm.TargsInSes.Locate('IDENTIFIKATOR', DBForm.IsobaraIDENTIFIKATOR.AsString, [loCaseInsensitive, loPartialKey])=true then
            begin
              DBForm.TargsInSes.Edit;
              DBForm.TargsInSesOCENKA_NAKLONA_ISOBARA.AsFloat:=A*100;//+B;
              DBForm.TargsInSes.Post;
            end;

            if DBForm.TargsInd.Locate('IDENTIFIKATOR', DBForm.IsobaraIDENTIFIKATOR.AsString, [loCaseInsensitive, loPartialKey])=true then
            begin
              DBForm.Statistics.First;
              DBForm.Statistics.Edit;
              DBForm.StatisticsOCENKA_NAKLONA_ISOBARA.AsFloat:=A*100;//+B;
              DBForm.Statistics.Post;
            end;

            MemTable_IsobaraTargets.Edit;
            MemTable_IsobaraTargetsOCENKA_NAKLONA_ISOBARA.AsFloat:=A*100;//+B;
            MemTable_IsobaraTargets.Post;
          end;

          MemTable_IsobaraTargets.Next;
        end;
        MemTable_IsobaraTargets.First;
        MemTable_IsobaraDatas.First;
        //----
        DBForm.TargsInSes.First;
        DBForm.Statistics.First;
        DBForm.Isobara.First;
        //----
        Form_DataBase.Btn_DBRefresh.OnClick(Sender);
        //----
        TSh_IsobarInclination.TabVisible:=true;
        Panel_PrepareAndResultDatas.Visible:=true;
        Label_MessagesExecute.Caption:='';
        Panel_MessagesExecute.Visible:=false;
        Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
        Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
        Application.ProcessMessages();
      end
      else
      begin
        if MemTable_PrepareDatas.RecordCount=0 then
        begin
          MemTable_MergDatas.First;
          DBForm.TargsInSes.First;
          DBForm.Statistics.First;
          //----
          TSh_IsobarInclination.TabVisible:=false;
          Panel_PrepareAndResultDatas.Visible:=false;
          Label_MessagesExecute.Caption:='';
          Panel_MessagesExecute.Visible:=false;
          Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
          Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
          Application.ProcessMessages();
        //  MessageDlg('��� ������ ��������������� ���������� ������ 1.', mtInformation, [mbOK], 0);
          //QW:= StrToInt(Edit_SetHour.Text);
          //Edit_SetHour.Text:=IntToStr(QW+1);
          // Btn_PrepareDatasAndAnalysisExecuteClick(Sender);
        end
        else
        begin
          Label_MessagesExecute.Caption:='���������� ������� ������';
          Application.ProcessMessages();

          sIdentifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
          SumRaznost:=MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
          SrRaznost:=SumRaznost;
          SrZn_SrRaznosti:=SrRaznost;
          MemTable_MergDatas.Append;
          MemTable_MergDatasIDENTIFIKATOR.AsString:=sIdentifikator;
          MemTable_MergDatasSRRAZNOST.AsFloat:=SrRaznost;
          MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=0;
          MemTable_MergDatas.Post;
          //----
          MemTable_PrepareDatas.First;
          MemTable_MergDatas.First;
          //----
          DBForm.Write_Transaction.Active:=true;
          DBForm.Sessions.Append;
          DBForm.SessionsVREMYA_SEANSA.AsDateTime:=Now;
          DBForm.SessionsVREMYA_INTERVALA.AsDateTime:=LastSessionDateTime;
          DBForm.SessionsINKREMENT_INTERVALA.AsInteger:=LastSessionIntervalHour;
          DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger:=MemTable_MergDatas.RecordCount;
          DBForm.SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV.AsInteger:=Obschee_Kol_Samoletov;
          Dolya:=100*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger/DBForm.SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV.AsInteger);
          DBForm.SessionsDOLYA_SAMOLETOV_MONITORING.AsFloat:=RoundTo(Dolya, -1);
          DBForm.SessionsSRZN_SRRAZNOSTI.AsFloat:=SrZn_SrRaznosti;
          DBForm.Sessions.Post;

          DBForm.Write_Transaction.Active:=true;
          DBForm.TargsInSes.Append;
          DBForm.TargsInSesIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
          DBForm.TargsInSesSRRAZNOST.AsFloat:=MemTable_MergDatasSRRAZNOST.AsFloat;
          DBForm.TargsInSesOCENKA_POGRESHNOSTEY.AsFloat:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;

          if DBForm.TargsInd.RecordCount>0 then
          begin
            sIdentifikator:=MemTable_MergDatasIDENTIFIKATOR.AsString;

            if DBForm.TargsInd.Locate('IDENTIFIKATOR', sIdentifikator, [loCaseInsensitive, loPartialKey])=true then
            begin
              Ocenka_s_Vesom:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              Kol_Samoletov:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;

              Ocenka_s_Vesom:=(DBForm.TargsInSesOCENKA_POGRESHNOSTEY.AsFloat*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1)+
                               Ocenka_s_Vesom*Kol_Samoletov)/(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov);
              Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov;
              //----
              DBForm.Write_Transaction.Active:=true;
              DBForm.Statistics.Append;
              DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
              DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
                DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
              DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
              DBForm.Statistics.Post;

              MemTable_MergDatas.Edit;
              MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
              MemTable_MergDatas.Post;
            end
            else
            begin
              Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
              Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
              //----
              DBForm.Write_Transaction.Active:=true;
              DBForm.TargsInd.Append;
              DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
              DBForm.TargsInd.Post;

              DBForm.Write_Transaction.Active:=true;
              DBForm.Statistics.Append;
              DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
              DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
                DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
              DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
              DBForm.Statistics.Post;

              MemTable_MergDatas.Edit;
              MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
              MemTable_MergDatas.Post;
            end;
          end
          else
          begin
            Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
            Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
            //----
            DBForm.Write_Transaction.Active:=true;
            DBForm.TargsInd.Append;
            DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
            DBForm.TargsInd.Post;

            DBForm.Write_Transaction.Active:=true;
            DBForm.Statistics.Append;
            DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
            DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
            DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
            DBForm.Statistics.Post;

            MemTable_MergDatas.Edit;
            MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
            MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
            MemTable_MergDatas.Post;
          end;

          DBForm.TargsInSesOCENKA_S_VESOM.AsFloat:=MemTable_MergDatasOCENKA_S_VESOM.AsFloat;
          DBForm.TargsInSesKOLICHESTVO_SAMOLETOV.AsInteger:=MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger;
          DBForm.TargsInSes.Post;
          //----
          MemTable_MergDatas.First;
          DBForm.TargsInSes.First;
          DBForm.Statistics.First;
          //----
          TSh_IsobarInclination.TabVisible:=false;
          Panel_PrepareAndResultDatas.Visible:=true;
          Label_MessagesExecute.Caption:='';
          Panel_MessagesExecute.Visible:=false;
          Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
          Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
          Application.ProcessMessages();
        end;
        Form_DataBase.Btn_DBRefresh.OnClick(Sender);
      end;
    end
    else
    begin
      if MemTable_PrepareDatas.RecordCount=0 then
      begin
        MemTable_MergDatas.First;
        DBForm.TargsInSes.First;
        DBForm.Statistics.First;
        //----
        TSh_IsobarInclination.TabVisible:=false;
        Panel_PrepareAndResultDatas.Visible:=false;
        Label_MessagesExecute.Caption:='';
        Panel_MessagesExecute.Visible:=false;
        Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
        Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
        Application.ProcessMessages();
        //MessageDlg('��� ������ ��������������� ���������� ������ 2.', mtInformation, [mbOK], 0);

        Goto MET;
      end
      else
      begin
        Label_MessagesExecute.Caption:='���������� ������� ������';
        Application.ProcessMessages();

        Obschee_Kol_Samoletov:=1;
        sIdentifikator:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
        SumRaznost:=MemTable_PrepareDatasRAZNOST_BG_VISOT.AsFloat;
        SrRaznost:=SumRaznost;
        SrZn_SrRaznosti:=SrRaznost;
        MemTable_MergDatas.Append;
        MemTable_MergDatasIDENTIFIKATOR.AsString:=sIdentifikator;
        MemTable_MergDatasSRRAZNOST.AsFloat:=SrRaznost;
        MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=0;
        MemTable_MergDatas.Post;
        //----
        MemTable_PrepareDatas.First;
        MemTable_MergDatas.First;
        //----
        DBForm.Write_Transaction.Active:=true;
        DBForm.Sessions.Append;
        DBForm.SessionsVREMYA_SEANSA.AsDateTime:=Now;
        DBForm.SessionsVREMYA_INTERVALA.AsDateTime:=LastSessionDateTime;
        DBForm.SessionsINKREMENT_INTERVALA.AsInteger:=LastSessionIntervalHour;
        DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger:=MemTable_MergDatas.RecordCount;
        DBForm.SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV.AsInteger:=Obschee_Kol_Samoletov;
        Dolya:=100*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger/DBForm.SessionsOBSCHEE_KOLICHESTVO_SAMOLETOV.AsInteger);
        DBForm.SessionsDOLYA_SAMOLETOV_MONITORING.AsFloat:=RoundTo(Dolya, -1);
        DBForm.SessionsSRZN_SRRAZNOSTI.AsFloat:=SrZn_SrRaznosti;
        DBForm.Sessions.Post;

        DBForm.Write_Transaction.Active:=true;
        DBForm.TargsInSes.Append;
        DBForm.TargsInSesIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
        DBForm.TargsInSesSRRAZNOST.AsFloat:=MemTable_MergDatasSRRAZNOST.AsFloat;
        DBForm.TargsInSesOCENKA_POGRESHNOSTEY.AsFloat:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;

        if DBForm.TargsInd.RecordCount>0 then
        begin
          sIdentifikator:=MemTable_MergDatasIDENTIFIKATOR.AsString;

          if DBForm.TargsInd.Locate('IDENTIFIKATOR', sIdentifikator, [loCaseInsensitive, loPartialKey])=true then
          begin
            Ocenka_s_Vesom:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
            Kol_Samoletov:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;

            Ocenka_s_Vesom:=(DBForm.TargsInSesOCENKA_POGRESHNOSTEY.AsFloat*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1)+
                             Ocenka_s_Vesom*Kol_Samoletov)/(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov);
            Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov;
            //----
            DBForm.Write_Transaction.Active:=true;
            DBForm.Statistics.Append;
            DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
            DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
            DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
            DBForm.Statistics.Post;

            MemTable_MergDatas.Edit;
            MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
            MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
            MemTable_MergDatas.Post;
          end
          else
          begin
            Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
            Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
            //----
            DBForm.Write_Transaction.Active:=true;
            DBForm.TargsInd.Append;
            DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
            DBForm.TargsInd.Post;

            DBForm.Write_Transaction.Active:=true;
            DBForm.Statistics.Append;
            DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
            DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
            DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
            DBForm.Statistics.Post;

            MemTable_MergDatas.Edit;
            MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
            MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
            MemTable_MergDatas.Post;
          end;
        end
        else
        begin
          Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
          Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
          //----
          DBForm.Write_Transaction.Active:=true;
          DBForm.TargsInd.Append;
          DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
          DBForm.TargsInd.Post;

          DBForm.Write_Transaction.Active:=true;
          DBForm.Statistics.Append;
          DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
          DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
            DBForm.StatisticsBEG_EH.AsInteger:=StrToInt(Edit1.Text);
            DBForm.StatisticsEND_EH.AsInteger:=StrToInt(Edit2.Text);
          DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
          DBForm.Statistics.Post;

          MemTable_MergDatas.Edit;
          MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
          MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
          MemTable_MergDatas.Post;
        end;

        DBForm.TargsInSesOCENKA_S_VESOM.AsFloat:=MemTable_MergDatasOCENKA_S_VESOM.AsFloat;
        DBForm.TargsInSesKOLICHESTVO_SAMOLETOV.AsInteger:=MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger;
        DBForm.TargsInSes.Post;
        //----
        MemTable_MergDatas.First;
        DBForm.TargsInSes.First;
        DBForm.Statistics.First;
        //----
        TSh_IsobarInclination.TabVisible:=false;
        Panel_PrepareAndResultDatas.Visible:=true;
        Label_MessagesExecute.Caption:='';
        Panel_MessagesExecute.Visible:=false;
        Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
        Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
        Application.ProcessMessages();

      end;
      Form_DataBase.Btn_DBRefresh.OnClick(Sender);

    end;
     FiltrTo2Sigma(nil);
      MET:
  except on E: Exception do
    begin
      TSh_IsobarInclination.TabVisible:=false;
      Panel_PrepareAndResultDatas.Visible:=false;
      Label_MessagesExecute.Caption:='';
      Panel_MessagesExecute.Visible:=false;
      Btn_PrepareDatasAndAnalysisExecute.Caption:='����������� ������ � ��������� ������';
      Btn_PrepareDatasAndAnalysisExecute.Enabled:=true;
      Application.ProcessMessages();
      //MessageDlg('������ � �������� ���������� ������� ������.', mtError, [mbOK], 0);
    end;
  end;


       Application.ProcessMessages();
  Panel_Targets.Enabled:=true;
  Panel_Sessions.Enabled:=true;
  Panel_PrepareAndResultDatasBack.Enabled:=true;
  Form_DataBase.Panel_DataBase.Enabled:=true;
  //PCtrl_ResultDatas.ActivePage:=TSh_MergDatas;

  Application.ProcessMessages();

  end;
//==============================================================================
//                       ��������� ������������ �� n �����
//==============================================================================
procedure TForm_Main.FiltrTo2Sigma(Sender:TObject);
var
      SrPg,sumPog,SumSr,Rvm,Fy,Ds,Ss,Ms,NewM,New_Sum,MAX,MIN,NEW_OcPOg,M,D,S,yBegin,yEnd,NEW_OcSVes,SrZn,SrZnSum,RM,SumRm,SumRaz:double;
        Kol_Samoletov,i,j,k,l,p,n: integer;
          sId,sId1: string;
            sReys: string;
              Ocenka_s_Vesom: double;
                kol8,kol9,kol10: integer;
                    RecCount, InOtb: integer;


      begin
      //---------------------------������������� �� �������� NAC----------------
      MemTable_PrepareDatas.First;
      kol8:=1;
      kol9:=0;
      kol10:=0;

      //------------------------------------------------------------------------
      sId1:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
      k:=1;
      while not MemTable_PrepareDatas.Eof do
      begin
        if MemTable_PrepareDatasIDENTIFIKATOR.AsString<>sId1 then
        begin
          sId1:=MemTable_PrepareDatasIDENTIFIKATOR.AsString;
          k:=k+1;
            if MemTable_PrepareDatasDOSTOVERNOST.AsInteger=9 then
                  begin

                    kol9:=kol9+1;
                  end
                      else
                          begin
                            if MemTable_PrepareDatasDOSTOVERNOST.AsInteger=8 then
                              begin
                                   kol8:=kol8+1;
                              end
                                  else

                                    begin
                                      if    MemTable_PrepareDatasDOSTOVERNOST.AsInteger=10 then
                                          begin
                                             kol10:=kol10+1;
                                          end


                                   end;          
                          end;
        end;
             MemTable_PrepareDatas.Next;
              end;
         DBForm.Sessions.Edit;
         DBForm.SessionsKOL_NAC8.AsInteger:=kol8;
         DBForm.SessionsKOL_NAC9.AsInteger:=kol9;
         DBForm.SessionsKOL_NAC10.AsInteger:=kol10;
         DBForm.SessionsDOLY_NAC10.AsFloat:=(DBForm.SessionsKOL_NAC10.AsInteger/k)*100;
         DBForm.Sessions.Post;

      //------------------------------------------------------------------------
          MemTable_MergDatas.First;
                       SumRaz:=0;
              M:=0;
              i:=0;
          while not MemTable_MergDatas.EOF do
            begin
              SumRaz:=SumRaz+MemTable_MergDatasSRRAZNOST.AsFloat;
              i:=i+1;
              MemTable_MergDatas.Next;
            end;
            M:=round(100*(SumRaz/i)+0.5)/100;  //�������������� ��������
          //Edit3.Text:=FloatToStr(M);
            // ������� ���������
           MemTable_MergDatas.First;
            RM:=0;
            SumRm:=0;
           while not MemTable_MergDatas.EOF do
            begin
              RM:=(MemTable_MergDatasSRRAZNOST.AsFloat-M)*(MemTable_MergDatasSRRAZNOST.AsFloat-M);
             SumRm:=SumRm+RM;
            MemTable_MergDatas.Next;
            end;

            D:=round(100*(SumRm/i)+0.5)/100; //���������
         //    Edit2.Text:=FloatToStr(D);
            S:=round(100*(sqrt(D))+0.5)/100;// �����
        //    Edit1.Text:=FloatToStr(S);
          //  DBForm.Sessions.First;
             DBForm.Sessions.Edit;
            DBForm.SessionsZNACHENIE_S.AsFloat:=S;
            // DBForm.SessionsNEW_S.AsFloat:=S;
              DBForm.Sessions.Post;
            yBegin:=round(100*(M-1.5*S)+0.5)/100;// ������ ��������� ����������
         //                 Edit4.Text:=FloatToStr( yBegin);
            yEnd:=round(100*(1.5*S+M)+0.5)/100;  // ����� ���������� ����������
         //                  Edit5.Text:=FloatToStr(yEnd);



          //  DBForm.TargsInSes.First;
          //  DBForm.TargsInSes.Append;
         //   while not DBForm.TargsInSes.EOF do

             //---------------------------------------
                     DBForm.TargsInses.First;
                       while not DBForm.TargsInses.EOF do
            begin
                if (DBForm.TargsInsesSRRAZNOST.AsFloat>=yBegin) AND (DBForm.TargsInsesSRRAZNOST.AsFloat<=yEnd) then
              begin
                DBForm.TargsInses.Edit;
                DBForm.TargsInsesFLAG_FILTR.AsString:='����� � ��������';
              end
              else
               begin
                 DBForm.TargsInses.Edit;
               DBForm.TargsInsesFLAG_FILTR.AsString:='�� ����� � ��������';
               end;
                DBForm.TargsInses.Next;
            end;
             //---------------------------------------

                  //----------------------------------------------------------
            MemTable_MergDatas.First;
            New_Sum:=0;
            NewM:=0;
            j:=0;
             SumSr:=0;
             Rvm:=0;
          while not MemTable_MergDatas.EOF do
            begin
              if (MemTable_MergDatasSRRAZNOST.AsFloat>=yBegin) AND (MemTable_MergDatasSRRAZNOST.AsFloat<=yEnd) then
              begin
               New_Sum:=New_Sum+MemTable_MergDatasSRRAZNOST.AsFloat;  // ����� ����� �������� ���������, �������� � ��������
               SumSr:=(MemTable_MergDatasSRRAZNOST.AsFloat-M)*(MemTable_MergDatasSRRAZNOST.AsFloat-M);
               Rvm:=SumSr+Rvm;
               DBForm.TargsInSes.First;

               j:=j+1;  //   ���������� �������� � ��������
              end;
             // NewM:=New_Sum/j;
              MemTable_MergDatas.Next;
              end;

                     Ds:=Rvm/j;
               Ss:=round(100*(sqrt(Ds))+0.5)/100;

           // DBForm.Sessions.First;
             DBForm.Sessions.Edit;
           // DBForm.SessionsZNACHENIE_S.AsFloat:=S;
             DBForm.SessionsNEW_S.AsFloat:=Ss;
              if DBForm.SessionsNEW_S.AsFloat>35 then
                      begin
                        DBForm.SessionsFLAG_FILTR_SEANS.AsString:='����� ����������� �� �������';

                      end
                            else
                                 begin
                                     DBForm.SessionsFLAG_FILTR_SEANS.AsString:='����� ����������� � �������';
                                 end;
             DBForm.SessionsKOL_FILTR.AsInteger:=j;
              DBForm.Sessions.Post;
              DBForm.Sessions.First;
               InOtb:=0;
                        // RecCount:=DBForm.Sessions.RecordCount;
                    while not DBForm.Sessions.EOF do
                      begin
                     RecCount:=DBForm.Sessions.RecordCount;
                            if (DBForm.SessionsNEW_S.AsFloat>35) then
                                begin
                                InOtb:=InOtb+1;
                                end;

                         DBForm.Sessions.Next;
                      end;
                    DBForm.Sessions.First;

                      if (InOtb=0) then
                          begin
                             DBForm.Sessions.Edit;
                               DBForm.SessionsPROCENT_OTBRAKOVKI.AsFloat:=0;
                                 DBForm.Sessions.Post;
                          end
                                else
                                  begin
                      DBForm.Sessions.Edit;

                      DBForm.SessionsPROCENT_OTBRAKOVKI.AsFloat:=(InOtb/RecCount)*100;

                          DBForm.Sessions.Post;
                                       end;


              //=================================================================
                NewM:=New_Sum/j;
              MemTable_MergDatas.First;

              SrZn:=0;
              New_OcPog:=0;
              l:=0;

                    DBForm.TargsInSes.First;
          while not MemTable_MergDatas.EOF do

                begin
                  SrZn:=(New_Sum-MemTable_MergDatasSRRAZNOST.AsFloat)/(j-1);
                  New_OcPog:=MemTable_MergDatasSRRAZNOST.AsFloat-SrZn;

                  MemTable_MergDatas.Edit;
                  MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat:=New_OcPog;
                 // DBForm.TargsInSes.First;
                  DBForm.TargsInSes.Edit;
                  DBForm.TargsInSesNEW_OCENKA_POGRESHNOSTEY.AsFloat:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
        // ComboBox1.Items.Insert(l,FloatToStr(New_OcPog));
               l:=l+1;
                       MemTable_MergDatas.Next;
                       DBForm.TargsInSes.Next;
                end;
                // Znachenie sigmi posle otfiltrovki
//===============================================================
             //  MemTable_MergDatas.Next;
               // end;
                 // FiltrSeansToSigma(nil);
                     DBForm.TargsInSes.First;

                    MemTable_MergDatas.First;
                      while not MemTable_Mergdatas.EOF do
                      begin
                      sId:=MemTable_MergDatasIDENTIFIKATOR.AsString;

            //sReys:=MemTable_MergDatasREYS.AsString;

             //        FiltrTo2Sigma(nil);

            if DBForm.TargsInd.Locate('IDENTIFIKATOR', sId, [loCaseInsensitive, loPartialKey])=true then
            begin
             // DBForm.Statistics.Edit;
              DBForm.Statistics.First;
            if MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger<>(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1) then
                  begin

                DBForm.Statistics.Next;
              Ocenka_s_Vesom:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              Kol_Samoletov:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
              //DBForm.Statistics.Next;
              Ocenka_s_Vesom:=(MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat*(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1)+
                               Ocenka_s_Vesom*Kol_Samoletov)/(DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov);
              Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1+Kol_Samoletov;
              //----
              DBForm.Write_Transaction.Active:=true;
              DBForm.Statistics.First;
              DBForm.Statistics.Edit;
              //DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
              DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;

              DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat:=(Ocenka_s_Vesom);
              DBForm.TargsInd.Edit;
              DBForm.TargsInd.Post;
              //DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
              //DBForm.StatisticsOCENKA_NAKLONA_ISOBARA.AsFloat:=0;
              //DBForm.StatisticsREYS.AsString:=sReys;
             DBForm.Statistics.Post;

                 Application.ProcessMessages();
              MemTable_MergDatas.Edit;
              MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
      //        MemTable_MergDatas.Post;
            end
            else
            begin
                //   FiltrTo2Sigma(nil);
              Ocenka_s_Vesom:=MemTable_MergDatasOCENKA_POGRESHNOSTEY.AsFloat;
              Kol_Samoletov:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger-1;
              //----
              //DBForm.Write_Transaction.Active:=true;
            //  DBForm.TargsInd.Append;
           //   DBForm.TargsIndIDENTIFIKATOR.AsString:=MemTable_MergDatasIDENTIFIKATOR.AsString;
           //   DBForm.TargsInd.Post;

              DBForm.Write_Transaction.Active:=true;
              DBForm.Statistics.First;
              DBForm.Statistics.Edit;
             // DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;

              DBForm.StatisticsOCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat:=Ocenka_s_Vesom;
              //DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=Kol_Samoletov;
              //DBForm.StatisticsOCENKA_NAKLONA_ISOBARA.AsFloat:=0;
              //DBForm.StatisticsREYS.AsString:=sReys;
             DBForm.Statistics.Post;
               Application.ProcessMessages();
              MemTable_MergDatas.Edit;
              MemTable_MergDatasOCENKA_S_VESOM.AsFloat:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
              MemTable_MergDatasKOLICHESTVO_SAMOLETOV.AsInteger:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
              Application.ProcessMessages();
            //  MemTable_MergDatas.Post;
            end;
            end;
             // FiltrSeansToSigma(nil);

            DBForm.TargsInSes.Edit;

            DBForm.TargsInSesNEW_OCENKA_S_VESOM.AsFloat:=MemTable_MergDatasOCENKA_S_VESOM.AsFloat;
            DBForm.TargsInSes.Next;
            MemTable_MergDatas.Next;
            end;
             DBForm.TargsInses.First;
                      sumPog:=0;
                      p:=0;
                      SrPg:=0;

                       while not DBForm.TargsInses.EOF do
            begin
                if (DBForm.TargsInsesSRRAZNOST.AsFloat>=yBegin) AND (DBForm.TargsInsesSRRAZNOST.AsFloat<=yEnd) then
              begin
                    sumPog:=sumPog+DBForm.TargsInSesNEW_OCENKA_POGRESHNOSTEY.AsFloat;
                    p:=p+1;
                  //  MemTable_MergDatas.Next;
                  end;
                  DBForm.TargsInSes.Next;
            end;

             SrPg:=sumPog/p;
             DBForm.Sessions.Edit;
             DBForm.SessionsSRZNPOGRESHNOSTEY.AsFloat:=sumPog;
             DBForm.Sessions.Post;
             //-----------------------------------------------------------------------------
           //  DBForm.TargsInSes.First;
           //               while not DBForm.TargsInSes.EOF do
            //                  begin
              //                DBForm.Statistics.First;
                  //              while not DBForm.Statistics.EOF do
                   //               begin

                    //              end;
                    //          end;
             //-----------------------------------------------------------------------------
           FiltrSeansToSigma(nil);



               //---------------------------------------------------------------------------
          Application.ProcessMessages();





              //MemTable_MergDatas.Next;
                end;
                //if Ss>50 then



      //end;

//==============================================================================
//                  ����� ��������� ������������ �� n �����
//==============================================================================
//==============================================================================
//=============== ��������� ���������� ������ �� �����(Sigma>50)
//==============================================================================
    procedure TForm_Main.FiltrSeansToSigma(Sender: TObject);


              var
          tI, sId: string;
             Ocenka_s_Vesom: double;
             i,j,Kol_Samoletov: integer;
            Sg: double;
           DS ,DatSes: TDateTime;
          begin
           Sg:=DBForm.SessionsNEW_S.AsFloat;
         //Sg:=45;
           DatSes:=DBForm.SessionsVREMYA_SEANSA.AsDateTime;
           if (Sg>35) then
                    begin
                    DBForm.TargsInSes.First;
                       while not DBForm.TargsInSes.EOF do
                              begin
                               DBForm.TargsInd.First;
                               i:=0;
                                    while not DBForm.TargsInd.EOF do
                                          begin
                           if ( DBForm.TargsIndIDENTIFIKATOR.AsString=DBForm.TargsInSesIDENTIFIKATOR.AsString) then
                                  begin
                                      DBForm.Statistics.First;
                                          while not DBForm.Statistics.EOF do
                                                begin
                                                      DBForm.Sessions.First;
                                                  if (DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime=DBForm.SessionsVREMYA_SEANSA.AsDateTime) then
                                                        begin
                                          DBForm.Statistics.Edit;

                                    DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat:=0;
                                    DBForm.StatisticsFL_SIGMA.AsString:='+';

                                    DBForm.Statistics.Post;

                                        i:=i+1;

                                                    Application.ProcessMessages();
                                                            end;
                                                        DBForm.Statistics.Next;
                                          end;
                                          DBForm.TargsInd.Edit;
                                          DBForm.TargsIndKOL_SIGMA.AsInteger:=i+DBForm.TargsIndKOL_SIGMA.AsInteger;
                                          DBForm.TargsInd.Post;
                                          Application.ProcessMessages();
                                  end;
                                    DBForm.TargsInd.Next;
                          end;
                          DBForm.TargsInSes.Next;
                              end;
                    end;
       //----------------------------------------------------------
                     DBForm.TargsInSes.First;
                       while not DBForm.TargsInSes.EOF do
            begin
                if (DBForm.TargsInSesFLAG_FILTR.AsString='�� ����� � ��������') then
                         begin
                                    DBForm.TargsInd.First;
                                    while not DBForm.TargsInd.EOF do
                                          begin
                           if ( DBForm.TargsIndIDENTIFIKATOR.AsString=DBForm.TargsInSesIDENTIFIKATOR.AsString) then
                                  begin
                                      DBForm.Statistics.First;
                                      j:=0;
                                          while not DBForm.Statistics.EOF do
                                                begin
                                                      DBForm.Sessions.First;
                                                  if (DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime=DBForm.SessionsVREMYA_SEANSA.AsDateTime) then
                                                        begin
                                          DBForm.Statistics.Edit;
                                    DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat:=0;
                                    DBForm.StatisticsFL_SEANS.AsString:='+';

                                    DBForm.Statistics.Post;
                                    Application.ProcessMessages();
                                                   j:=j+1;


                                                          end;
                                                        DBForm.Statistics.Next;
                                                            Application.ProcessMessages();
                                          end;
                                                 DBForm.TargsInd.Edit;
                                          DBForm.TargsIndKOL_SEANS.AsInteger:=j+DBForm.TargsIndKOL_SEANS.AsInteger;
                                          DBForm.TargsInd.Post;
                                          Application.ProcessMessages();
                                  end;
                                    DBForm.TargsInd.Next;
                          end;
                         end;
                          DBForm.TargsInSes.Next;
                   //       DBForm.Statistics.First


            end;

          SRZNAC(nil);
            //-----------------------------------------------

            //-----------------------------------------------

           Application.ProcessMessages();
          end;
//==============================================================================
//               End procedure
//==============================================================================
procedure TForm_Main.SRZNAC(Sender: TObject);
        var
            SRC: double;
            K_Ses: integer;
            SRZNOC: double;
            begin
              DBForm.TargsInd.First;
                  while not DBForm.TargsInd.Eof do
                      begin
                        DBForm.Statistics.First;
                        SRC:=0;
                        K_Ses:=0;
                          while not DBForm.Statistics.EOF do
                            begin
                              if DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat<>0 then
                                    begin
                                      SRC:=SRC+DBFOrm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
                                      K_Ses:=K_Ses+1;
                                    end;
                            DBForm.Statistics.Next;
                            end;
                           if (SRC<>0) then
                                begin
                           SRZNOC:=SRC/K_Ses;
                           DBForm.TargsInd.Edit;
                           DBForm.TargsIndSRZNOC.AsFloat:=SRZNOC;
                           DBForm.TargsInd.Post;
                                end
                                else
                                begin
                                  SRZNOC:=0;
                                    DBForm.TargsInd.Edit;
                           DBForm.TargsIndSRZNOC.AsFloat:=SRZNOC;
                                    DBForm.TargsInd.Post;    
                                end;
                      DBForm.TargsInd.Next;
                      Application.ProcessMessages();
                      end;

            end;
//---------------------------------------------------------------------------------
//TForm_DBTargets.Btn_TargsIndDeleteAllClick(Sender: TObject);
//---------------------------------------------------------------------------------
procedure TForm_Main.BitBtn_LastSessionClick(Sender: TObject);
begin
  LastSession_params;
end;

procedure TForm_Main.BitBtn_SessionsMenuClick(Sender: TObject);
begin
  Form_DBTargets.Close;
  Form_ValueWeightGraph.Close;
  if Label_OpenCloseSessions.Caption='�' then Form_DBSessions.Show
    else Form_DBSessions.Close;
end;

procedure TForm_Main.BitBtn_TargetsMenuClick(Sender: TObject);
begin
  Form_DBSessions.Close;
  Form_ValueWeightGraph.Close;
  if Label_OpenCloseTargets.Caption='�' then Form_DBTargets.Show
    else Form_DBTargets.Close;
end;

procedure TForm_Main.BitBtn_ValueWeightGraphClick(Sender: TObject);
var
  vMax, vMin: double;
  k: integer;
begin
  if Form_Main.Label_OpenCloseValueWeightGraph.Caption='�' then
  begin
    if DBForm.TargsInd.Locate('IDENTIFIKATOR', MemTable_MergDatasIDENTIFIKATOR.AsString, [loCaseInsensitive, loPartialKey])=true then
    begin
      DBForm.Statistics.Last;
      DBForm.Statistics.First;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=100000;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=-100000;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=100000;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=-100000;
      Form_ValueWeightGraph.Series_Graph.Clear;

      if DBForm.Statistics.RecordCount>0 then
      begin
        massiv_ValueWeight:=nil;
        SetLength(massiv_ValueWeight, DBForm.Statistics.RecordCount, 2);

        k:=0;
        DBForm.Statistics.Last;
        vMin:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
        vMax:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
        while not DBForm.Statistics.Bof do
        begin
          massiv_ValueWeight[k, 0]:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
          massiv_ValueWeight[k, 1]:=DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime;

          if vMax<DBForm.StatisticsOCENKA_S_VESOM.AsFloat then
            vMax:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
          if vMin>DBForm.StatisticsOCENKA_S_VESOM.AsFloat then
            vMin:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;

          k:=k+1;

          DBForm.Statistics.Prior;
          Application.ProcessMessages();
        end;
        DBForm.Statistics.First;

        Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Automatic:=false;
        Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(vMax)+1;
        Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(vMin)-1;

        Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Automatic:=false;
        Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=DBForm.Statistics.RecordCount+1;
        Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=0;

        for k:=0 to DBForm.Statistics.RecordCount-1 do
          Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
       //   Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
        Form_ValueWeightGraph.Show;
      end;
    end;
  end
  else Form_ValueWeightGraph.Close;
end;

procedure TForm_Main.Btn_PrepareDatasAndAnalysisExecuteClick(Sender: TObject);
var
  Ini: TIniFile;
  s: string;
  i: integer;
begin
  if Btn_PrepareDatasAndAnalysisExecute.Caption='����������� ������ � ��������� ������' then
  begin
    doCancelExecute:=false;
    PrepareDatasAndAnalysisExecute(Sender);

    if Form_Main.WindowState=wsNormal then
    begin
      Form_Main.Height:=Form_Main.Height+1;
      Application.ProcessMessages;
      Form_Main.Height:=Form_Main.Height-1;
      Application.ProcessMessages;
    end;
    if Form_Main.WindowState=wsMaximized then
    begin
      Form_Main.WindowState:=wsNormal;
      Application.ProcessMessages;
      Form_Main.Height:=Form_Main.Height+1;
      Application.ProcessMessages;
      Form_Main.Height:=Form_Main.Height-1;
      Application.ProcessMessages;
      Form_Main.WindowState:=wsMaximized;
      Application.ProcessMessages;
    end;
    if Form_Main.WindowState=wsMinimized then
    begin
      Form_Main.WindowState:=wsNormal;
      Application.ProcessMessages;
      Form_Main.Height:=Form_Main.Height+1;
      Application.ProcessMessages;
      Form_Main.Height:=Form_Main.Height-1;
      Application.ProcessMessages;
    end;
  end
  else
  begin
    if MessageDlg('������ ���������� ������ � ���������� �������.'+#13#10+
                  '����������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
      doCancelExecute:=true;
  end;
end;

procedure TForm_Main.Button1Click(Sender: TObject);
var
i,j,l: integer;
k_s: integer;
Ds,KD: integer;
DT: TDateTime;
wYear,wMonth,wDay: word;
TR,TK,TR1,TK1:integer;
p_s,K_P: integer;
begin
KD:= StrToInt(DBNumberEditEh2.Text);
DT:=DTPicker_SetDate.DateTime;
  DecodeDate(DT, wYear, wMonth, wDay);
  j:=0;
  for j:=0  to KD  do
  begin
     wDay:=wDay+j;
   DTPicker_SetDate.DateTime:=EncodeDate(wYear, wMonth, wDay);

  //wMinutes:=StrToInt(Edit_SetMinute.Text);
  //wSeconds:=0;
  //wMSeconds:=0;




k_s:= StrToInt(Edit_SetHour.Text);
Ds:=StrToInt(DBNumberEditEh1.Text);
l:=0;
for i := 0 to Ds do
      begin
      l:=l+1;
        Edit_SetHour.Text:=IntToStr(k_s+i);
         K_P:=StrToInt(DBNumberEditEh3.Text);
             TR1:=8850;
          TK1:=10050;
        for p_s := 0 to K_P do
          begin
          if p_s=0 then
            begin
        //TR:=StrToInt(Form_Main.Edit1.Text);
     //   DBForm.SessionsEHELON.AsInteger:=TR1;

                 //  Form_DBSessions.Label16:='+1200';
          PrepareDatasAndAnalysisExecute(nil);
         //  DBForm.Sessions.Edit;
          //  DBForm.SessionsEHELON.AsInteger:=TR1;
           // DBForm.Sessions.Post;
       Form_DBSessions.Btn_DeleteAllClick1(Sender);

        Application.ProcessMessages();
            end
                else
                    begin
                      TR:=StrToInt(Form_Main.Edit1.Text);
                      TK:=StrToInt(Form_Main.Edit2.Text);

                       Edit1.Text:=IntToStr(TR+1200);
                        Edit2.Text:=IntToStr(TK+1200);

                       //  DBForm.Sessions.Edit;
                     //   DBForm.SessionsEHELON.AsInteger:=(TR+1200);
                     //   DBForm.Sessions.Post;
        PrepareDatasAndAnalysisExecute(nil);
         //DBForm.Sessions.Edit;
         //   DBForm.SessionsEHELON.AsInteger:=(TR+1200);
          //  DBForm.Sessions.Post;
         Form_DBSessions.Btn_DeleteAllClick1(Sender);
        Application.ProcessMessages();
                    end;
          end;
                         Form_Main.Edit1.Text:=IntToStr(TR1);
          Form_Main.Edit2.Text:=IntToStr(TK1);

          end;

      end;

     Edit_SetHour.Text:=IntToStr(0);

  end;
 // Application.ProcessMessages();
//end;

procedure TForm_Main.Button2Click(Sender: TObject);
begin
// Form_Main.Panel_Targets.Enabled:=false;
 // Form_Main.Panel_Sessions.Enabled:=false;
 //Form_Main.Panel_PrepareAndResultDatasBack.Enabled:=false;
 // Form_DataBase.Panel_DataBase.Enabled:=false;
           Form_ParamLoadFromFile.Btn_OpenFileClick(Sender);
           Form_DBTargets.Button13Click(nil);
            Form_Main.Button1Click(nil);
 //               Form_Main.Panel_Targets.Enabled:=false;
//  Form_Main.Panel_Sessions.Enabled:=false;
// Form_Main.Panel_PrepareAndResultDatasBack.Enabled:=false;
//  Form_DataBase.Panel_DataBase.Enabled:=false;
end;

procedure TForm_Main.Button3Click(Sender: TObject);
begin
Form_DBTargets.Button7Click(nil);
end;

procedure TForm_Main.Button4Click(Sender: TObject);
begin
DBForm.Isobara.First;
  while not DBForm.Isobara.EOF do
      begin
        if DBForm.Isobara.RecordCount<>100 then
            begin
              DBForm.Isobara.Edit;
              DBForm.Isobara.Delete;
            end;
            DBForm.Isobara.Next;
      end;
end;

procedure TForm_Main.DS_MergDatasDataChange(Sender: TObject; Field: TField);
begin
  try
    if (Form_ValueWeightGraph<>nil) and (Form_ValueWeightGraph.Showing) then
    begin
      Form_ValueWeightGraph.Close;
      Sleep(100);
      BitBtn_ValueWeightGraph.OnClick(Sender);
      DBGrid_MergDatasTable.SetFocus;
    end;
  except on E: Exception do
    begin

    end;
  end;
end;

procedure TForm_Main.DTPicker_SetDateChange(Sender: TObject);
begin
  Form_ValueWeightGraph.Close;
  Panel_PrepareAndResultDatas.Visible:=false;
  Application.ProcessMessages();
end;

procedure TForm_Main.DTPicker_SetDateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then Btn_PrepareDatasAndAnalysisExecute.OnClick(Sender);
end;

procedure TForm_Main.FormCreate(Sender: TObject);
begin
  Form_DBTargets:=TForm_DBTargets.Create(nil);
  Form_DBSessions:=TForm_DBSessions.Create(nil);
  Form_DataBase:=TForm_DataBase.Create(nil);
  Form_ParamDataBase:=TForm_ParamDataBase.Create(nil);
  Form_DBConnect:=TForm_DBConnect.Create(nil);
  Form_DBTargetsAppendAndEdit:=TForm_DBTargetsAppendAndEdit.Create(nil);
  Form_ParamLoadFromFile:=TForm_ParamLoadFromFile.Create(nil);
  Form_LoadFromFile:=TForm_LoadFromFile.Create(nil);
  Form_ValueWeightGraph:=TForm_ValueWeightGraph.Create(nil);

  EXEFilePath:=ExpandFileName(Application.ExeName);
end;

end.
