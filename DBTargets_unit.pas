unit DBTargets_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEhGrouping, GridsEh, DBGridEh, DB,
  DBCtrls, Math, Buttons, ShlObj, Grids, DBGrids, Mask, DBCtrlsEh, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TForm_DBTargets = class(TForm)
    Panel_DBTargets: TPanel;
    Shape_BorderLeft: TShape;
    Shape_BorderBottom: TShape;
    Shape_BorderRight: TShape;
    Panel_DBTargetsFunctions: TPanel;
    GrPanel_TargetsAndTargsIndDatas: TGridPanel;
    Panel_Targets: TPanel;
    Panel_TargetsTableBack: TPanel;
    Panel_TargetsTable: TPanel;
    DBGrid_Targets: TDBGridEh;
    Panel_TargetsButtons: TPanel;
    Shape_Split1: TShape;
    Shape_Split2: TShape;
    Shape_Split3: TShape;
    Btn_TargetsDeleteAll: TButton;
    Btn_LoadFromFile: TButton;
    Btn_Append: TButton;
    Btn_Edit: TButton;
    Btn_TargetsDelete: TButton;
    Shape_BorderTop: TShape;
    Panel_OrderBy: TPanel;
    Label_OrderBy: TLabel;
    CBox_OrderBy: TComboBox;
    Shape_Split5: TShape;
    Btn_Duplicate: TButton;
    Button1: TButton;
    SaveDlg_ChTPSaveToFile: TSaveDialog;
    Button7: TButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Button8: TButton;
    Edit10: TEdit;
    Edit11: TEdit;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    CloseDB: TButton;
    Panel_TargsInd: TPanel;
    Shape_Split4: TShape;
    Panel_TargsIndGraph: TPanel;
    Panel_TargsIndFunctionButtons: TPanel;
    BitBtn_ValueWeightGraph: TBitBtn;
    BitBtn1: TBitBtn;
    DBGridEh2: TDBGridEh;
    Panel_TargsIndFunctions: TPanel;
    Image_TargsIndSearch: TImage;
    Edit_TargsIndSearch: TEdit;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button5: TButton;
    Button6: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Panel_TargsIndAndStatistics: TPanel;
    Panel_TargsIndTableBack: TPanel;
    Panel_TargsIndTable: TPanel;
    DBGrid_TargsInd: TDBGridEh;
    Panel_StatisticsTableBack: TPanel;
    Panel_StatisticsTable: TPanel;
    DBGrid_Statistics: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Panel_TargsIndButtons: TPanel;
    Shape_Split6: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Btn_TargsIndDeleteAll: TButton;
    Btn_TargsIndDelete: TButton;
    DBEditEh2: TDBEditEh;
    DBEditEh1: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    Button15: TButton;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh3: TDBGridEh;
    Panel5: TPanel;
    Image1: TImage;
    Edit12: TEdit;
    Button16: TButton;
    Edit13: TEdit;
    Edit14: TEdit;
    Button17: TButton;
    Button18: TButton;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Button19: TButton;
    Button20: TButton;
    Edit18: TEdit;
    Edit19: TEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGridEh4: TDBGridEh;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    Panel11: TPanel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button21: TButton;
    Button22: TButton;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    Panel12: TPanel;
    Panel13: TPanel;
    Shape3: TShape;
    Panel14: TPanel;
    Panel15: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridEh7: TDBGridEh;
    Panel16: TPanel;
    Image2: TImage;
    Edit20: TEdit;
    Button23: TButton;
    Edit21: TEdit;
    Edit22: TEdit;
    Button24: TButton;
    Button25: TButton;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Button26: TButton;
    Button27: TButton;
    Edit26: TEdit;
    Edit27: TEdit;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    DBGridEh8: TDBGridEh;
    Panel20: TPanel;
    Panel21: TPanel;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    Panel22: TPanel;
    Shape4: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button28: TButton;
    Button29: TButton;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBEditEh14: TDBEditEh;
    DBEditEh15: TDBEditEh;
    BitBtn6: TBitBtn;
    Button30: TButton;
    Panel23: TPanel;
    Panel24: TPanel;
    Edit28: TEdit;
    Button31: TButton;
    Panel25: TPanel;
    GroupBox1: TGroupBox;
    DBGridEh12: TDBGridEh;
    DBGridEh13: TDBGridEh;
    DBGridEh11: TDBGridEh;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    procedure Button37Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
   // procedure Button30Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure CloseDBClick(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBGrid_StatisticsDblClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Graph(Sender: TObject);
    procedure sqlF(Sender: TObject);
   procedure sqlF1(Sender: TObject);
    procedure Search(Sender: TObject);
   procedure Edit_TargsIndSearchDblClick3(Sender: TObject);
         procedure Search1(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Kol_VS1(Sender: TObject);
     procedure Kol_VS2(Sender: TObject);
      procedure Kol_VS3(Sender: TObject);
    procedure Active2(Sender: TObject);
    //
    procedure findID(Sender: TObject;
  var Key: Word; Shift: TShiftState);
 procedure findID2(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  procedure findIDALL(Sender: TObject;
  var Key: Word; Shift: TShiftState);
    //
    procedure Button3Click(Sender: TObject);
    procedure blok1Src(Sender: TObject);
     procedure blok2Src(Sender: TObject);
      procedure blok3Src(Sender: TObject);
    //procedure Button4Click(Sender: TObject);
   // procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn_ValueWeightGraphClick(Sender: TObject);
     procedure BitBtn_ValueWeightGraphClick1(Sender: TObject);
    procedure Btn_TargsIndDeleteAllClick(Sender: TObject);
    procedure Btn_TargsIndDeleteClick(Sender: TObject);
    procedure Edit_TargsIndSearchDblClick(Sender: TObject);
   procedure Edit_TargsIndSearchDblClick1(Sender: TObject);
    procedure Edit_TargsIndSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
     // procedure Edit_TargsIndSearchDblClick1(Sender: TObject);
    procedure Edit_TargsIndSearchKeyUp1(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_DuplicateClick(Sender: TObject);
    procedure CBox_OrderByChange(Sender: TObject);
    procedure DBGrid_TargetsDblClick(Sender: TObject);
    procedure Btn_TargetsDeleteAllClick(Sender: TObject);
    procedure Btn_TargetsDeleteClick(Sender: TObject);
    procedure Btn_LoadFromFileClick(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
    procedure Btn_AppendClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit_TargsIndSearchDblClick2(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  Form_DBTargets: TForm_DBTargets;
  duplicate: record
    IDENTIFIKATOR, SHIROTA_STR, DOLGOTA_STR, REYS, TIP_BORTA: string;
    SHIROTA_DEC, DOLGOTA_DEC, BAROMETR_VISOTA, GEOMETR_VISOTA, RAZNOST_BG_VISOT: double;
    VREMYA_ZAPISI: TDateTime;
  end;

implementation

uses MonitoringRVSM_main_unit,
     DB_unit, DataBase_unit, DBConnect_unit,
     DBTargets_Append_and_Edit_unit, ParamLoadFromFile_unit, LoadFromFile_unit,
     ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_DBTargets.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_Main.Handle;
end;

procedure TForm_DBTargets.CBox_OrderByChange(Sender: TObject);
begin
  DBForm.Targets.Active:=false;
  case CBox_OrderBy.ItemIndex of
    0: DBForm.Targets.OrderClause:='VREMYA_ZAPISI ASC';
    1: DBForm.Targets.OrderClause:='VREMYA_ZAPISI DESC';
    2: DBForm.Targets.OrderClause:='IDENTIFIKATOR ASC';
    3: DBForm.Targets.OrderClause:='IDENTIFIKATOR DESC';
    4: DBForm.Targets.OrderClause:='REYS ASC';
    5: DBForm.Targets.OrderClause:='REYS DESC';
  end;
  DBForm.Targets.Active:=true;

  DBForm.Targets.Last;
  DBForm.Targets.First;
end;

procedure TForm_DBTargets.DBGrid_StatisticsDblClick(Sender: TObject);
begin
       if (DBForm.Sessions.Locate('VREMYA_SEANSA', DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime, [loCaseInsensitive, loPartialKey])=true) AND (DBForm.TargsInSes.Locate('IDENTIFIKATOR', DBForm.TargsIndIDENTIFIKATOR.AsInteger, [loCaseInsensitive, loPartialKey])=true) then
       begin
         Form_Main.BitBtn_SessionsMenuClick(nil);
       end;
       //    DBForm.TargsInd.First;
end;

procedure TForm_DBTargets.DBGrid_TargetsDblClick(Sender: TObject);
begin
  if DBForm.TargsInd.Locate('IDENTIFIKATOR', DBForm.TargetsIDENTIFIKATOR.AsString, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd.First;
end;

procedure TForm_DBTargets.Edit7Change(Sender: TObject);
begin
Button5Click(nil);
if Edit6.Text='' then
  begin

if Edit7.Text='' then
  begin
  DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND');

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
       DBForm.TargsInd.Last;
  end
  else
  begin
                DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE PROC_OTBR>='+#39+Edit7.Text+#39);

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
       DBForm.TargsInd.Last;
  end;
  end
  else
  begin
  if Edit7.Text='' then
  begin
  DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND');

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
       DBForm.TargsInd.Last;
  end
  else
  begin
                DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit6.Text+#39+' AND  '+'PROC_OTBR>='+#39+Edit7.Text+#39);

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
       DBForm.TargsInd.Last;

  end;
  end;
end;

procedure TForm_DBTargets.Edit_TargsIndSearchDblClick(Sender: TObject);
begin
  Edit_TargsIndSearch.Text:='';
end;

procedure TForm_DBTargets.Edit_TargsIndSearchKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if DBForm.TargsInd.Locate('IDENTIFIKATOR', Edit_TargsIndSearch.Text, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd.First;
end;
//=======
procedure TForm_DBTargets.Edit_TargsIndSearchDblClick2(Sender: TObject);
begin
  Edit12.Text:='';
end;
               procedure TForm_DBTargets.findID(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if DBForm.TargsInd1.Locate('IDENTIFIKATOR', Edit12.Text, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd1.First;
end;
procedure TForm_DBTargets.Edit_TargsIndSearchDblClick3(Sender: TObject);
begin
  Edit20.Text:='';
end;
                      procedure TForm_DBTargets.findID2(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if DBForm.TargsInd2.Locate('IDENTIFIKATOR', Edit20.Text, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd2.First;
end;

//======
//=====
                      procedure TForm_DBTargets.findIDALL(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if DBForm.TargsInd1.Locate('IDENTIFIKATOR', Edit28.Text, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd1.First;
     if DBForm.TargsInd2.Locate('IDENTIFIKATOR', Edit28.Text, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd2.First;
     if DBForm.TargsInd.Locate('IDENTIFIKATOR', Edit28.Text, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd.First;
end;

//==

procedure TForm_DBTargets.BitBtn_ValueWeightGraphClick(Sender: TObject);
var
 vMax2,vMin2, min,max,vMax,vMax1,vMin1, vMin: double;
  ICAOup,ICAOdwn,v50,v100,cL,k,k1,k2: integer;
  tMax3,tMax,tMax1,tMax2: integer;
  massiv_ValueWeight1: array of array of double;
    massiv_ValueWeight2: array of array of double;
    massiv: array of double;
    mass: array of integer;
    finalS1,finalS2,finals3: double;
    SeansN50,SeansN100: double;
    finalS1i,finalS2i,finalS3i: integer;
    fs1,fs2,fs3: integer;
  ASE,t1,t2,t3,t: Integer;
      ii:integer;
  iii: Integer;

begin
 ASE:=-75;
  if Form_Main.Label_OpenCloseValueWeightGraph.Caption='�' then
  begin
    DBForm.Statistics.Last;
    DBForm.Statistics.First;
    DBForm.Statistics1.Last;
    DBForm.Statistics1.First;
    DBForm.Statistics2.Last;
    DBForm.Statistics2.First;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=100000;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=-100000;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=100000;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=-100000;
    Form_ValueWeightGraph.Series_Graph.Clear;
     Form_ValueWeightGraph.Series1.Clear;
     Form_ValueWeightGraph.Series2.Clear;
      Form_ValueWeightGraph.Series3.Clear;
       Form_ValueWeightGraph.Series4.Clear;
        Form_ValueWeightGraph.Series5.Clear;
         Form_ValueWeightGraph.Series6.Clear;
          Form_ValueWeightGraph.Series7.Clear;
                    Form_ValueWeightGraph.Series8.Clear;
         Form_ValueWeightGraph.Series9.Clear;
          Form_ValueWeightGraph.Series10.Clear;
     tMax1:=DBForm.Statistics.RecordCount;
         tMax2:=DBForm.Statistics1.RecordCount;
             tMax3:=DBForm.Statistics2.RecordCount;
     //SetLength(massiv,3);
   //  massiv:=nil;
    // mass:=nil;
 /////////3 blok ////////////////////////////////////
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
        if (k=40)  then
    begin

    SeansN50:=  DBForm.StatisticsOCENKA_S_VESOM.AsFloat;

    end;
      if (k=70)  then
    begin

    SeansN100:=  DBForm.StatisticsOCENKA_S_VESOM.AsFloat;

    end;
 //   else
  //  begin

   //  SeansN100:=0;
   //  end;
        DBForm.Statistics.Prior;
       //  Application.ProcessMessages();
      end;
       DBForm.Write_Transaction.Active:=true;
    DBForm.DataAnalys.Active:=true;
    DBForm.DataAnalys.Insert;
    DBForm.DataAnalysID_BORTA.AsInteger:=  DBForm.TargsIndIDENTIFIKATOR.AsInteger;
    DBForm.DataAnalysRESULT50.AsFloat:=  SeansN50;
    DBForm.DataAnalysRESULT100.AsFloat:=  SeansN100;
    DBForm.DataAnalys.Post;
    SeansN50:=0;
    SeansN100:=0;
       finalS1:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
      DBForm.Statistics.First;
    end;
    //======================================
    // 2 blok
         if DBForm.Statistics1.RecordCount>0 then
    begin

      massiv_ValueWeight1:=nil;
      SetLength(massiv_ValueWeight1, DBForm.Statistics1.RecordCount, 2);

      k1:=0;
      DBForm.Statistics1.Last;
      vMin1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
      vMax1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
      while not DBForm.Statistics1.Bof do
      begin
        massiv_ValueWeight1[k1, 0]:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
        massiv_ValueWeight1[k1, 1]:=DBForm.Statistics1VREMYA_SOZDANIYA.AsDateTime;

        if vMax1<DBForm.Statistics1OCENKA_S_VESOM.AsFloat then
          vMax1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
        if vMin1>DBForm.Statistics1OCENKA_S_VESOM.AsFloat then
          vMin1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;

        k1:=k1+1;

    if (k1=40)  then
    begin

    SeansN50:=  DBForm.Statistics1OCENKA_S_VESOM.AsFloat;

    end;
      if (k1=70)  then
    begin

    SeansN100:=  DBForm.Statistics1OCENKA_S_VESOM.AsFloat;

    end;
        

       DBForm.Statistics1.Prior;
    //     Application.ProcessMessages();


      end;
    DBForm.Write_Transaction1.Active:=true;
    DBForm.DataAnalys1.Active:=true;
    DBForm.DataAnalys1.Insert;
    DBForm.DataAnalys1ID_BORTA.AsInteger:=  DBForm.TargsInd1IDENTIFIKATOR.AsInteger;
    DBForm.DataAnalys1RESULT50.AsFloat:=  SeansN50;
    DBForm.DataAnalys1RESULT100.AsFloat:=  SeansN100;
    DBForm.DataAnalys1.Post;
    SeansN50:=0;
    SeansN100:=0;
       finalS2:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
      DBForm.Statistics1.First;
    end;
    //=========================================================================
       // 2 blok
         if DBForm.Statistics2.RecordCount>0 then
    begin

      massiv_ValueWeight2:=nil;
      SetLength(massiv_ValueWeight2, DBForm.Statistics2.RecordCount, 2);

      k2:=0;
      DBForm.Statistics2.Last;
      vMin2:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
      vMax2:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
      while not DBForm.Statistics2.Bof do
      begin
        massiv_ValueWeight2[k2, 0]:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
        massiv_ValueWeight2[k2, 1]:=DBForm.Statistics2VREMYA_SOZDANIYA.AsDateTime;

        if vMax2<DBForm.Statistics2OCENKA_S_VESOM.AsFloat then
          vMax2:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
        if vMin2>DBForm.Statistics2OCENKA_S_VESOM.AsFloat then
          vMin2:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;

        k2:=k2+1;
            if (k2=40)  then
    begin

    SeansN50:=  DBForm.Statistics2OCENKA_S_VESOM.AsFloat;

    end;
      if (k2=70)  then
    begin

    SeansN100:=  DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
     end;
        DBForm.Statistics2.Prior;
      //   Application.ProcessMessages();
      end;
       DBForm.Write_Transaction2.Active:=true;
      // DBGridEh12.Columns[0].:=20;
    DBForm.DataAnalys2.Active:=true;
    DBForm.DataAnalys2.Insert;
    DBForm.DataAnalys2ID_BORTA.AsInteger:=  DBForm.TargsInd2IDENTIFIKATOR.AsInteger;
    DBForm.DataAnalys2RESULT50.AsFloat:=  SeansN50;
    DBForm.DataAnalys2RSULT100.AsFloat:=  SeansN100;
    DBForm.DataAnalys2.Post;
    SeansN50:=0;
    SeansN100:=0;
      finalS3:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
      DBForm.Statistics2.First;
    end;
         // finish

 //========================================================]
 //       sravnenie min max 1 and 2 bloks
 //======================================================
mass:=nil;

SetLength(mass,2);
mass[0]:=tMax1;
mass[1]:=tMax2;
mass[2]:=tMax3;
           tMax:=mass[0];

                ii:=0;
                 while ii<3 do
                         begin
            if tMax<mass[ii] then
                    tMax:=mass[ii];
                     ii:=ii+1;
                         end;
// ����������� ������� ������������� � �������������
    ///
            massiv:=nil;
    SetLength(massiv,5);

     massiv[0]:=vMin;
     massiv[1]:=vMin1;
     massiv[2]:=vMin2;
     massiv[3]:=vMax;
     massiv[4]:=vMax1;
     massiv[5]:=vMax2;

          min:=massiv[0];
          max:=massiv[0];
                iii:=0;
                 while iii<5 do
                         begin
            if max<massiv[iii] then
          max:=massiv[iii];
        if min>massiv[iii] then
          min:=massiv[iii];
                   iii:=iii+1;
                         end;
       //min

             {                massiv[0]:=vMin;
                             massiv[1]:=vMin1;
                             massiv[2]:=vMax;
                             massiv[3]:=vMax1;    }
                             {

 for t1 := 0 to 3  do
begin
min:=massiv[0];
    if massiv[t1]<min then
    begin
      min:=massiv[t1];
    end;
             // t1:=t1+1;
end;

//
 for t2 := 0 to 3  do
begin
max:=massiv[0];
    if massiv[t2]>max then
    begin
      max:=massiv[t2];
    end;
    //t2:=t2+1;

end;                           }
//


    {       min:=vMin;
           if vMin1<min then
           begin
           min:=vMin1;
           end
           else if vMax<min then
           begin
             min:=vMax;
           end
           else if vMax1<min then
                begin
                  min:=vMax1;
                end;
         //________________________

      //======================================================
       //min
           max:=vMin;
           if vMin1>max then
           begin
           max:=vMin1;
           end
           else if vMax>max then
           begin
             max:=vMax;
           end
           else if vMax1>max then
                begin
                  max:=vMax1;
                end;
         //________________________

          }


    //    tMax:=tMax1;
    //    if tMax2>tMax then

    //    begin
    //    if tMax3>tMax then
    //    tMax:=tMax3;
       // end;
        


 //    if max<0 then
    // begin
     //       if min>ASE then
    //                     begin
   //                        Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(ASE)+150;
    //  Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(ASE);
     //                    end
      //                   else
      //                   begin
       //                      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(ASE)+150;
    //  Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(min);
   //                      end;
  //   end
   //  else
   //  begin
    //   if max>ASE+150 then
    //   begin
     //                Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(max)+15;
     //  if min>ASE then
     //                    begin
                        //   Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(ASE)+150;
     // Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(ASE);
     //                    end
      //                   else
      //                   begin
                          //   Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(ASE)+150;
   //   Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(min);
   //                      end;


    //  Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(min);
    //   end;
  //   end;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(ASE)+180;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(ASE)-30;

      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=tMax+10;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=0;

      for k:=0 to DBForm.Statistics.RecordCount-1 do
      begin
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
          Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clBlue);
      end;
        for k1:=0 to DBForm.Statistics1.RecordCount-1 do
      begin
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
          Form_ValueWeightGraph.Series1.AddXY(k1+1, massiv_ValueWeight1[k1, 0], '', clRed);
      end;

         for k2:=0 to DBForm.Statistics2.RecordCount-1 do
      begin
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
         Form_ValueWeightGraph.Series2.AddXY(k2+1, massiv_ValueWeight2[k2, 0], '', clGreen);
      end;


          for cL:=0 to tMax+10 do
      begin
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
         Form_ValueWeightGraph.Series3.AddXY(cL, 0, '', clBlack);
      end;
//==============================================================================
      for v50 := 0 to 150 do
      begin
      Form_ValueWeightGraph.Series4.AddXY(50, ASE+v50, '');
      end;
//==============================================================================
      for v100 := 0 to 150 do
      begin
      Form_ValueWeightGraph.Series5.AddXY(100, ASE+v100, '');
      end;
      ICAOdwn := 0;
     // Form_ValueWeightGraph.Series6.;
      Form_ValueWeightGraph.Series6.AddXY(ICAOdwn, ASE, '');

      Form_ValueWeightGraph.Series6.AddXY(tMax+10, ASE, '');

      ICAOup := 0;


      Form_ValueWeightGraph.Series7.AddXY(ICAOup, ASE+150, '');

      Form_ValueWeightGraph.Series7.AddXY(tMax+10, ASE+150, '');

      finalS1i:=Round(finalS1);
      if(finalS1>0) then
      begin
      Form_ValueWeightGraph.Series8.AddXY(DBForm.Statistics.RecordCount,finalS1, '');
      Form_ValueWeightGraph.Series8.AddXY(DBForm.Statistics.RecordCount,0, '');
      end
      else
      begin
      Form_ValueWeightGraph.Series8.AddXY(DBForm.Statistics.RecordCount,finalS1, '');
      Form_ValueWeightGraph.Series8.AddXY(DBForm.Statistics.RecordCount,0, '');
      end;

      finalS2i:=Round(finalS2);
      if(finalS2>0) then
      begin
      Form_ValueWeightGraph.Series9.AddXY(DBForm.Statistics1.RecordCount,finalS2, '');
      Form_ValueWeightGraph.Series9.AddXY(DBForm.Statistics1.RecordCount,0, '');
      end
      else
      begin
      Form_ValueWeightGraph.Series9.AddXY(DBForm.Statistics1.RecordCount,finalS2, '');
      Form_ValueWeightGraph.Series9.AddXY(DBForm.Statistics1.RecordCount,0, '');
      end;

      finalS3i:=Round(finalS3);
      if(finalS3>0) then
      begin
      Form_ValueWeightGraph.Series10.AddXY(DBForm.Statistics2.RecordCount,finalS3, '');
      Form_ValueWeightGraph.Series10.AddXY(DBForm.Statistics2.RecordCount,0, '');
      end
      else
      begin
      Form_ValueWeightGraph.Series10.AddXY(DBForm.Statistics2.RecordCount,finalS3, '');
      Form_ValueWeightGraph.Series10.AddXY(DBForm.Statistics2.RecordCount,0, '');
      end;
    //  DBGrid1.Columns[1]:=Round(DBForm.Statistics2OCENKA_S_VESOM.AsFloat);

      Form_ValueWeightGraph.Show;

  end

  else Form_ValueWeightGraph.Close;
end;
//-------------------------------------------------------------------------------
//=============================================================================

procedure TForm_DBTargets.Graph(Sender: TObject);
var
  vMax, vMin: double;
  k1: integer;
  mass: array of array of double;
begin
  if Form_Main.Label_OpenCloseValueWeightGraph.Caption='�' then
  begin
    DBForm.Statistics1.Last;
    DBForm.Statistics1.First;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=100000;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=-100000;
  Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=100000;
   Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=-100000;
   Form_ValueWeightGraph.Series1.Clear;

 DBForm.Statistics1.Last;
    DBForm.Statistics1.First;
            //    vMax:= DBForm.Statistics1.RecordCount;
   //   end;
   //   end;
    if DBForm.Statistics1.RecordCount>0 then
    begin
      mass:=nil;
      SetLength(mass, DBForm.Statistics1.RecordCount, 2);

      k1:=0;
      DBForm.Statistics1.Last;
      vMin:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
      vMax:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
      while not DBForm.Statistics1.Bof do
      begin
        mass[k1, 0]:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
        mass[k1, 1]:=DBForm.Statistics1VREMYA_SOZDANIYA.AsDateTime;

       if vMax<DBForm.Statistics1OCENKA_S_VESOM.AsFloat then
         vMax:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
        if vMin>DBForm.Statistics1OCENKA_S_VESOM.AsFloat then
          vMin:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;

       k1:=k1+1;
        //==
    

        //==
        DBForm.Statistics1.Prior;
      end;
      DBForm.Statistics1.First;

     Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(vMax)+1;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(vMin)-1;

     Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Automatic:=false;
     Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=DBForm.Statistics1.RecordCount+1;
    Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=0;

    // for k1:=0 to DBForm.Statistics1.RecordCount-1 do  //}
    // begin
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
   //      Form_ValueWeightGraph.Series1.AddXY(k+1, mass[k, 0], '', clRed);
   //   end;
     // Form_ValueWeightGraph.Show;
   end;
              //  Form_ValueWeightGraph.Hide;
               // Form_ValueWeightGraph.Series1.AddXY(,vMax , '', 123);
           //      Form_ValueWeightGraph.Series1.AddXY(3,0 , '', 231);
            //      Form_ValueWeightGraph.Series1.AddXY(4,vMax , '', 231);
   for k1:=0 to DBForm.Statistics1.RecordCount-1 do  //}
    // begin
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
   //      Form_ValueWeightGraph.Series1.AddXY(k+1, mass[k, 0], '', clRed);
   //   end;

                Form_ValueWeightGraph.Series1.AddXY(k1+1, mass[k1, 0], '',clBlue);


          //Form_ValueWeightGraph.Series1.AddXY(2, mass[2, 0], '', clRed);
          Form_ValueWeightGraph.Show;
  end

 else
      Form_ValueWeightGraph.Close;
  //Form_ValueWeightGraph.Close;
end;

//=============================================================================
procedure TForm_DBTargets.BitBtn_ValueWeightGraphClick1(Sender: TObject);
var
  vMax, vMin: double;
  k,k1: integer;
begin
   //Button2Click(nil);
  if Form_Main.Label_OpenCloseValueWeightGraph.Caption='�' then
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

      k:=0;  k1:=0;
      DBForm.Statistics.Last;
      vMin:=DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
      vMax:=DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
      while not DBForm.Statistics.Bof do
      begin
              if not (DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat=0) then
                  begin
                    //  DBForm.Statistics.Prior;
                  //end;

        massiv_ValueWeight[k, 0]:=DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
        massiv_ValueWeight[k, 1]:=DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime;

        if vMax<DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat then
          vMax:=DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
        if vMin>DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat then
          vMin:=DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;

        k:=k+1;
        DBForm.Statistics.Prior;
                 end
                else
                    begin
                    k1:=k1+1;
                      DBForm.Statistics.Prior;
                    end;
      end;
            if not (k1>0) then
                begin
      DBForm.Statistics.First;

      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(vMax)+1;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(vMin)-1;

      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=DBForm.Statistics.RecordCount+1;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=0;

      for k:=0 to DBForm.Statistics.RecordCount-1 do
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
          Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
      Form_ValueWeightGraph.Show;
                // end;
    end
      else
            begin
             DBForm.Statistics.First;

      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Maximum:=Trunc(vMax)+1;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.LeftAxis.Minimum:=Trunc(vMin)-1;

      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Automatic:=false;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Maximum:=DBForm.Statistics.RecordCount+1;
      Form_ValueWeightGraph.Chart_ValueWeightGraph.BottomAxis.Minimum:=0;

      for k:=0 to ((DBForm.Statistics.RecordCount-1)-k1) do
      //  Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
          Form_ValueWeightGraph.Series_Graph.AddXY(k+1, massiv_ValueWeight[k, 0], '', clGreen);
      Form_ValueWeightGraph.Show;
            end;

  end;
  end
  else Form_ValueWeightGraph.Close;
end;
//----------------------------------------------------------------------------------

procedure TForm_DBTargets.Btn_AppendClick(Sender: TObject);
begin
  DBForm.Targets.Append;
  if DBForm.Targets.State<>dsInsert then
  begin
    DBForm.Targets.Active:=false;
    DBForm.Targets.Active:=true;
    DBForm.Targets.Append;
  end;
  DBForm.Targets.Edit;

  Form_DBTargetsAppendAndEdit.Caption:='�������� ����� ������';
  Form_DBTargetsAppendAndEdit.Show;
end;

procedure TForm_DBTargets.Btn_TargetsDeleteAllClick(Sender: TObject);
var
  isDelete: boolean;
begin
  if MessageDlg('�� �������, ��� ������ ������� ��� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
    Panel_TargetsTable.Visible:=false;

    isDelete:=DBForm.MonitoringDB.Execute('DELETE FROM TARGETS1');
    if isDelete=false then MessageDlg('������ � �������� �������� �������.', mtError, [mbOK], 0);
    Form_DataBase.Btn_DBRefresh.OnClick(Sender);

    Panel_TargetsTable.Visible:=true;
  end;
end;

procedure TForm_DBTargets.Btn_TargetsDeleteClick(Sender: TObject);
begin
  if MessageDlg('�� �������, ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    DBForm.Targets.Delete;
end;

procedure TForm_DBTargets.Btn_TargsIndDeleteAllClick(Sender: TObject);
var
  isDeleteTARGSIND, isDeleteSTATISTICS: boolean;
begin
  if MessageDlg('�� �������, ��� ������ ������� ��� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
    Panel_TargsIndTable.Visible:=false;
    Panel_StatisticsTable.Visible:=false;

    isDeleteSTATISTICS:=DBForm.MonitoringDB.Execute('DELETE FROM "STATISTICS1"');
    isDeleteTARGSIND:=DBForm.MonitoringDB.Execute('DELETE FROM TARGSIND1');
    if (isDeleteSTATISTICS=false) or (isDeleteTARGSIND=false) then
      MessageDlg('������ � �������� �������� �������.', mtError, [mbOK], 0);
    Form_DataBase.Btn_DBRefresh.OnClick(Sender);

    Panel_TargsIndTable.Visible:=true;
    Panel_StatisticsTable.Visible:=true;
  end;
end;

procedure TForm_DBTargets.Btn_TargsIndDeleteClick(Sender: TObject);
begin
  if MessageDlg('�� �������, ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    DBForm.TargsInd.Delete;
end;

//---- ��������� ������� -------------------------------------------------------
function afGetSpecialPath(CSIDL: word): string;
var
  s: string;
begin
  SetLength(s, MAX_PATH);
  if not SHGetSpecialFolderPath(0, PChar(s), CSIDL, true) then s:='';
  result:=PChar(s);
end;

procedure TForm_DBTargets.Button10Click(Sender: TObject);
VAR
DF: DOUBLE;
begin
//  DBForm.Targets.Active:=false;
 //   DBForm.Targets.SQLs.SelectSQL.Clear;
 //DBForm.Targets.SQLs.SelectSQL.Add('SELECT * FROM TARGETS ');

  //     DBForm.Targets.Active:=true;
   //    DBForm.Statistics.Active:=true;
     //  DBForm.TargsInd.Last;
end;

procedure TForm_DBTargets.Button11Click(Sender: TObject);
var
i_r:integer;
begin
i_r:=0;
      DBForm.Targets.First;
        while not DBForm.Targets.EOF do
          begin
               // MemTable_PrepareDatas.First;
   //   while not MemTable_PrepareDatas.Eof do
    //  begin                           DBF
    DBForm.Targets.Edit;
     DBForm.Write_Transaction.Active:=true;
        if DBForm.TargetsRASSTOYNIE.AsFloat<=148 then DBForm.Targets.Next
          else DBForm.Targets.Delete;
        Application.ProcessMessages();
        //----
    //    if doCancelExecute=true then
   //     begin
        //  CancelExecute(Sender);
    //      Exit;
    //    end;

          end;
end;

procedure TForm_DBTargets.Button13Click(Sender: TObject);
var
Sigma: double;
aSg,bSg: double;
IntOsr: double;
begin
Sigma:=(27.58+31.83)/2;
aSg:=4.13+Sigma;
bSg:=Sigma-4.13;
//IntOsr:=DBForm.TargetsDOLGOTA_DEC.AsFloat;
DBForm.Targets.First;
  while not DBForm.Targets.EOF do
    begin
    IntOsr:=DBForm.TargetsDOLGOTA_DEC.AsFloat;
    DBForm.Targets.Edit;
     DBForm.Write_Transaction.Active:=true;
          if (IntOsr<aSg) AND (IntOsr>bSg) then DBForm.Targets.Next
          else DBForm.Targets.Delete;
          end;
     Application.ProcessMessages();

    //end;
  
end;

procedure TForm_DBTargets.Button15Click(Sender: TObject);
begin

                    Active2(nil);
                    CloseDBClick(nil);
end;

procedure TForm_DBTargets.CloseDBClick(Sender: TObject);
begin
  //DBForm.Targets.Active:=false;
      //      DBForm.Sessions.Active:=false;
       //     DBForm.TargsInSes.Active:=false;
       //     DBForm.Isobara.Active:=false;
        //    DBForm.TargsInd.Active:=false;
        //    DBForm.Statistics.Active:=false;

      //DBForm.Read_Transaction.Active:=true;

         ///==============
DBForm.MoninoringSB.Connected:=true;

            //DBForm.Targets1.Active:=true;
           // DBForm.Sessions1.Active:=true;
           // DBForm.TargsInSes1.Active:=true;
           // DBForm.Isobara1.Active:=true;
            DBForm.TargsInd1.Active:=true;
            DBForm.Statistics1.Active:=true;
            DBForm.DataAnalys1.Active:=true;

      DBForm.Read_Transaction1.Active:=true;
          //  DBForm.Targets1.Last;
          //  DBForm.Targets1.First;
          //  DBForm.Sessions1.Last;
          //  DBForm.Sessions1.First;
          //  DBForm.TargsInSes1.Last;
          //  DBForm.TargsInSes1.First;
          //  DBForm.Isobara1.Last;
          //  DBForm.Isobara1.First;
            DBForm.TargsInd1.Last;
            DBForm.TargsInd1.First;
              DBForm.DataAnalys1.Last;
            DBForm.DataAnalys1.First;
            DBForm.Statistics1.Last;
            DBForm.Statistics1.First;

            DBForm.MonitoringDB.Connected:=true;
            DBForm.DataAnalys.Active:=true;
            DBForm.Read_Transaction.Active:=true;
            DBForm.DataAnalys.Last;
            DBForm.DataAnalys.First;
             DBForm.MonitoringTD.Connected:=true;
            DBForm.DataAnalys2.Active:=true;
            DBForm.Read_Transaction2.Active:=true;
            DBForm.DataAnalys2.Last;
            DBForm.DataAnalys2.First;
end;

procedure TForm_DBTargets.Button1Click(Sender: TObject);
var
  s: string;
  FileName: string;
  SaveFile: TextFile;
begin
  SaveDlg_ChTPSaveToFile.FileName:='������ �����';
  SaveDlg_ChTPSaveToFile.InitialDir:=afGetSpecialPath(CSIDL_DESKTOPDIRECTORY);
  if SaveDlg_ChTPSaveToFile.Execute then
  begin
    try
      Panel_DBTargets.Enabled:=false;
      DBGrid_Targets.Visible:=false;

      if SaveDlg_ChTPSaveToFile.FilterIndex=1 then
      begin
        if pos('.csv', SaveDlg_ChTPSaveToFile.FileName)=0 then
          FileName:=SaveDlg_ChTPSaveToFile.FileName+'.csv'
        else
          FileName:=SaveDlg_ChTPSaveToFile.FileName;
      end;
      if SaveDlg_ChTPSaveToFile.FilterIndex=2 then
      begin
        if pos('.txt', SaveDlg_ChTPSaveToFile.FileName)=0 then
          FileName:=SaveDlg_ChTPSaveToFile.FileName+'.txt'
        else
          FileName:=SaveDlg_ChTPSaveToFile.FileName;
      end;

      AssignFile(SaveFile, FileName);
      Rewrite(SaveFile);
      s:='�������������'+';'+
         '������ ���������������'+';'+
         '������ ��������������'+';'+
         '���� � ����� ������'+';'+
         '������'+';'+
         '�������'+';'+
         '����'+';'+
         '��� �����';
      Writeln(SaveFile, s);
      DBForm.Targets.First;
      while not DBForm.Targets.Eof do
      begin
        s:=DBForm.TargetsIDENTIFIKATOR.AsString+';'+
           DBForm.TargetsBAROMETR_VISOTA.AsString+';'+
           DBForm.TargetsGEOMETR_VISOTA.AsString+';'+
           DBForm.TargetsVREMYA_ZAPISI.AsString+';'+
           DBForm.TargetsSHIROTA_STR.AsString+';'+
           DBForm.TargetsDOLGOTA_STR.AsString+';'+
           DBForm.TargetsREYS.AsString+';'+
           DBForm.TargetsTIP_BORTA.AsString;
        Writeln(SaveFile, s);
        DBForm.Targets.Next;
      end;
      DBForm.Targets.First;
      CloseFile(SaveFile);

      DBGrid_Targets.Visible:=true;
      Panel_DBTargets.Enabled:=true;
    except on E: Exception do
      begin
        MessageDlg('������ ��� ���������� ������ �� ����� � ����.', mtError, [mbOk], 0);

        DBGrid_Targets.Visible:=true;
        Panel_DBTargets.Enabled:=true;
      end;
    end;
  end;
end;

procedure TForm_DBTargets.Button2Click(Sender: TObject);
        var
        i,j,l,k_s, NEW_KS:integer;
       OC_POG,OC_S_VES: double;
            begin
             i:=DBForm.Statistics.RecordCount;
                 Edit1.Text:=IntToStr(i);
                      DBForm.Statistics.Last;
                      DBForm.Statistics.Prior;
               while not DBForm.Statistics.BOF do
                                         begin

                        if DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat<>0 then
                            begin
                                        DBForm.Sessions.First;
                                              while not DBForm.Sessions.EOF do
                                                  begin
                                                   if (DBForm.SessionsVREMYA_SEANSA.AsDateTime=DBForm.StatisticsVREMYA_SOZDANIYA.AsDateTime) then
                                                        begin
                                        DBForm.TargsInSes.First;
                                              while not DBForm.TargsInSes.EOF do
                                                    begin
                                  if(DBForm.TargsInSesIDENTIFIKATOR.AsString=DBForm.TargsIndIDENTIFIKATOR.AsString) AND (DBForm.TargsInSesSESSIONS_ID.AsString=DBForm.SessionsID_SESSIONS.AsString) then
                                                   begin
                                  OC_POG:=DBForm.TargsInSesNEW_OCENKA_POGRESHNOSTEY.AsFloat;
                                   k_s:=DBForm.SessionsKOLICHESTVO_SAMOLETOV.AsInteger;
                                   //NEW_KS:=k_s-1+DBForm.Sessions
                                                    end;
                                                       DBForm.TargsInSes.Next;
                                                    end;
                                                   end;

                                                   DBForm.Sessions.Next;
                                                   end;
                              //for l := j to i do
                                 // begin
                                 DBForm.Statistics.Next;
                                      if DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat<>0 then
                                            begin
                                          OC_S_VES:=(OC_POG*(k_s-1)+DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat*DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger)/(k_s-1+DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger);
                                          NEW_KS:=k_s-1+DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
                                            DBForm.Statistics.Prior;
                                            end
                                                  else
                                                    begin
                                                  OC_S_VES:=OC_POG;
                                                  NEW_KS:=k_s;
                                                     DBForm.Statistics.Prior;
                                                   end;
                                                        end

                                                          else
                                                              begin
                                                            OC_S_VES:=0;
                                                            k_s:=DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger;
                                                            end;
                                                     DBForm.Statistics.Edit;
                                                      DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat:=OC_S_VES;
                                                      DBForm.StatisticsKOLICHESTVO_SAMOLETOV.AsInteger:=NEW_KS;
                                                        DBForm.Statistics.Post;
                                                     DBForm.Statistics.Prior;                                              //   end;
                                                   end;
                                    end;




 procedure TForm_DBTargets.Active2(Sender: TObject);
begin

  //DBForm.Targets.Active:=false;
      //      DBForm.Sessions.Active:=false;
       //     DBForm.TargsInSes.Active:=false;
       //     DBForm.Isobara.Active:=false;
        //    DBForm.TargsInd.Active:=false;
        //    DBForm.Statistics.Active:=false;

      //DBForm.Read_Transaction.Active:=true;

         ///==============
DBForm.MonitoringTD.Connected:=true;

            //DBForm.Targets1.Active:=true;
           // DBForm.Sessions1.Active:=true;
           // DBForm.TargsInSes1.Active:=true;
           // DBForm.Isobara1.Active:=true;
            DBForm.TargsInd2.Active:=true;
            DBForm.Statistics2.Active:=true;

      DBForm.Read_Transaction2.Active:=true;
          //  DBForm.Targets1.Last;
          //  DBForm.Targets1.First;
          //  DBForm.Sessions1.Last;
          //  DBForm.Sessions1.First;
          //  DBForm.TargsInSes1.Last;
          //  DBForm.TargsInSes1.First;
          //  DBForm.Isobara1.Last;
          //  DBForm.Isobara1.First;
            DBForm.TargsInd2.Last;
            DBForm.TargsInd2.First;
            DBForm.Statistics2.Last;
            DBForm.Statistics2.First;
end;


procedure TForm_DBTargets.Button31Click(Sender: TObject);
begin
CloseDBClick(nil);
Button15Click(nil);
end;

procedure TForm_DBTargets.Button32Click(Sender: TObject);
begin
DBForm.DataAnalys1.Delete;
end;

procedure TForm_DBTargets.Button33Click(Sender: TObject);

var
isDeleteANALYS: boolean;
begin
isDeleteANALYS:=DBForm.MoninoringSB.Execute('DELETE FROM "ANALYS"');
Form_DataBase.Btn_DBRefresh.OnClick(Sender);
end;

procedure TForm_DBTargets.Button34Click(Sender: TObject);
begin
  DBForm.DataAnalys2.Delete;
end;

procedure TForm_DBTargets.Button35Click(Sender: TObject);
var
isDeleteANALYS: boolean;
begin
DBForm.MonitoringTD.Execute('DELETE FROM "ANALYS"');
Form_DataBase.Btn_DBRefresh.OnClick(Sender);

end;

procedure TForm_DBTargets.Button36Click(Sender: TObject);
begin
    DBForm.DataAnalys.Delete;
end;

procedure TForm_DBTargets.Button37Click(Sender: TObject);
begin
          DBForm.MonitoringDB.Execute('DELETE FROM "ANALYS1"');
          Form_DataBase.Btn_DBRefresh.OnClick(Sender);
end;

procedure TForm_DBTargets.Button3Click(Sender: TObject);
  var
  i,j,l:integer;
  SumSR,SRZN: double;
 begin
          DBForm.TargsInd.First;
              while not DBForm.TargsInd.EOF do
                  begin

         DBForm.Statistics.First;
         SumSR:=0;
         i:=0;
        while not DBForm.Statistics.EOF do
        begin
            if ((DBForm.StatisticsFL_SEANS.AsString='+') AND (DBForm.StatisticsFL_SIGMA.AsString='+'))OR ((DBForm.StatisticsFL_SEANS.AsString='+') OR (DBForm.StatisticsFL_SIGMA.AsString='+')) then
                  begin
                  DBForm.Statistics.Edit;
                    DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat:=0;
                    DBForm.Statistics.Post
                  end;
                  if  DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat<>0 then
                  begin
                    SumSR:= SumSR+ DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
                    i:=i+1;
                  end;

                  DBForm.Statistics.Next;
        end;
      //  SRZN:=SumSR/i;
         if (SumSR<>0) then
                                begin
                           SRZN:=SumSR/i;
                           DBForm.TargsInd.Edit;
                           DBForm.TargsIndSRZNOC.AsFloat:=SRZN;
                           DBForm.TargsInd.Post;
                                end
                                else
                                begin
                                  SRZN:=0;
                                    DBForm.TargsInd.Edit;
                           DBForm.TargsIndSRZNOC.AsFloat:=SRZN;
                                    DBForm.TargsInd.Post;
                                end;




                DBForm.TargsInd.Next;
                  end;


                  //end
             //     else
             //       begin
                 // if (DBForm.StatisticsFL_SEANS.AsString='+') OR (DBForm.StatisticsFL_SIGMA.AsString='+') then
                //      begin
                //              DBForm.Statistics.Edit;
                //  DBForm.StatisticsNEW_OCENKA_S_VESOM.AsInteger:=0;
               //   DBForm.Statistics.Post
                  //      end;
                //        DBForm.Statistics.Next;
           //         end;



end;

procedure TForm_DBTargets. Kol_VS1(Sender: TObject);
begin
DBForm.TargsInd1.First;
while not DBForm.TargsInd1.EOF do
    begin
      DBForm.TargsInd1.Edit;
      DBForm.Statistics1.Last;
      DBForm.TargsInd1KOL_S.AsInteger:=DBForm.Statistics1.RecordCount;
     // DBForm.Statistics.Edit;
      DBForm.TargsInd1.Next;
    end;


   // DBForm.Targets_Query.Active:=true;
end;
//======
procedure TForm_DBTargets.Kol_VS2(Sender: TObject);
begin
DBForm.TargsInd2.First;
while not DBForm.TargsInd2.EOF do
    begin
      DBForm.TargsInd2.Edit;
      DBForm.Statistics2.Last;
      DBForm.TargsInd2KOL_S.AsInteger:=DBForm.Statistics2.RecordCount;
     // DBForm.Statistics.Edit;
      DBForm.TargsInd2.Next;
    end;


   // DBForm.Targets_Query.Active:=true;
end;
//======
//======
procedure TForm_DBTargets.Kol_VS3(Sender: TObject);
begin
DBForm.TargsInd.First;
while not DBForm.TargsInd.EOF do
    begin
      DBForm.TargsInd.Edit;
      DBForm.Statistics.Last;
      DBForm.TargsIndKOL_S.AsInteger:=DBForm.Statistics.RecordCount;
     // DBForm.Statistics.Edit;
      DBForm.TargsInd.Next;
    end;


   // DBForm.Targets_Query.Active:=true;
end;
//======

procedure TForm_DBTargets.Button5Click(Sender: TObject);
begin
        DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND1 ');

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
end;

//==    \\blok 2
      procedure TForm_DBTargets.sqlF(Sender: TObject);
begin
        DBForm.TargsInd1.Active:=false;
    DBForm.TargsInd1.SQLs.SelectSQL.Clear;
 DBForm.TargsInd1.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND ');

       DBForm.TargsInd1.Active:=true;
       DBForm.Statistics1.Active:=true;
end;
      procedure TForm_DBTargets.sqlF1(Sender: TObject);
begin
        DBForm.TargsInd2.Active:=false;
    DBForm.TargsInd2.SQLs.SelectSQL.Clear;
 DBForm.TargsInd2.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND ');

       DBForm.TargsInd2.Active:=true;
       DBForm.Statistics2.Active:=true;
end;
//==

procedure TForm_DBTargets.Button6Click(Sender: TObject);
var
min,max,sum,SrZn:double;
Sz: integer;
begin
             Button5Click(nil);
Sz:=1;
       if (Edit3.Text='')AND (Edit4.Text='') AND (Edit5.Text='')  then
                 begin
   DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND1 WHERE KOL_S>='+#39+Edit2.Text+#39);

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
        DBForm.TargsInd.First;
          while not DBForm.TargsInd.EOF do
            begin
         DBForm.Statistics.First;
         DBForm.Statistics.MoveBy(10);
                      max:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                           min:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                  while not DBForm.Statistics.BOF do
                      begin
                        if DBForm.StatisticsOCENKA_S_VESOM.AsFloat>max then
                          begin
                            max:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                          end;
                          if DBForm.StatisticsOCENKA_S_VESOM.AsFloat<min then
                          begin
                            min:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                          end;
                          DBForm.Statistics.Prior;
                      end;
                      DBForm.TargsInd.Edit;
                      DBForm.TargsIndMIN_H.AsFloat:=min;
                      DBForm.TargsIndMAX_H.AsFloat:=max;
                      DBForm.TargsIndRAZNOST_L_H.AsFloat:=max-min;
                      sum:=min+max;
                      SrZn:=sum/2;
                      DBForm.TargsIndRAZN_VISOT.AsFloat:=SrZn;
                      DBForm.TargsInd.Next;
            end;
                 DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND1 WHERE KOL_S>='+#39+Edit2.Text+#39);
 //+' AND  '+'RAZN_VISOT>='+#39+IntToStr(Sz)+#39);

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
       DBForm.TargsInd.Last;

                 end
                 else
                  begin
                     DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND1 WHERE KOL_S>='+#39+Edit3.Text+#39);

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
        DBForm.TargsInd.First;
          while not DBForm.TargsInd.EOF do
            begin
         DBForm.Statistics.First;
         DBForm.Statistics.MoveBy(StrToInt(Edit4.Text));
                      max:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                           min:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                  while not DBForm.Statistics.BOF do
                      begin
                        if DBForm.StatisticsOCENKA_S_VESOM.AsFloat>max then
                          begin
                            max:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                          end;
                          if DBForm.StatisticsOCENKA_S_VESOM.AsFloat<min then
                          begin
                            min:=DBForm.StatisticsOCENKA_S_VESOM.AsFloat;
                          end;
                          DBForm.Statistics.Prior;
                      end;
                      DBForm.TargsInd.Edit;
                      DBForm.TargsIndMIN_H.AsFloat:=min;
                      DBForm.TargsIndMAX_H.AsFloat:=max;
                      sum:=min+max;
                      SrZn:=sum/2;
                      DBForm.TargsIndRAZN_VISOT.AsFloat:=SrZn;
                      DBForm.TargsInd.Next;
            end;
            DBForm.TargsInd.Active:=false;
    DBForm.TargsInd.SQLs.SelectSQL.Clear;
 DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND1 WHERE KOL_S>='+#39+Edit3.Text+#39+' AND  '+'RAZN_VISOT>='+#39+Edit5.Text+#39);

       DBForm.TargsInd.Active:=true;
       DBForm.Statistics.Active:=true;
       DBForm.TargsInd.Last;
                  end;
end;
//==============================================================================
procedure TForm_DBTargets.Search(Sender: TObject);
var
min1,max1,sum1,SrZn1:double;
Sz1: integer;
begin
             sqlF(nil);
Sz1:=1;
       if (Edit15.Text='')AND (Edit16.Text='') AND (Edit17.Text='')  then
                 begin
   DBForm.TargsInd1.Active:=false;
    DBForm.TargsInd1.SQLs.SelectSQL.Clear;
 DBForm.TargsInd1.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit14.Text+#39);

       DBForm.TargsInd1.Active:=true;
       DBForm.Statistics1.Active:=true;
        DBForm.TargsInd1.First;
          while not DBForm.TargsInd1.EOF do
            begin
         DBForm.Statistics1.First;
         DBForm.Statistics1.MoveBy(10);
                      max1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                           min1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                  while not DBForm.Statistics1.BOF do
                      begin
                        if DBForm.Statistics1OCENKA_S_VESOM.AsFloat>max1 then
                          begin
                            max1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                          end;
                          if DBForm.Statistics1OCENKA_S_VESOM.AsFloat<min1 then
                          begin
                            min1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                          end;
                          DBForm.Statistics1.Prior;
                      end;
                      DBForm.TargsInd1.Edit;
                      DBForm.TargsInd1MIN_H.AsFloat:=min1;
                      DBForm.TargsInd1MAX_H.AsFloat:=max1;
                      DBForm.TargsInd1RAZNOST_L_H.AsFloat:=max1-min1;
                      sum1:=min1+max1;
                      SrZn1:=sum1/2;
                      DBForm.TargsInd1RAZN_VISOT.AsFloat:=SrZn1;
                      DBForm.TargsInd1.Next;
            end;
                 DBForm.TargsInd1.Active:=false;
   DBForm.TargsInd1.SQLs.SelectSQL.Clear;
DBForm.TargsInd1.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit14.Text+#39);
//+' AND  '+'RAZN_VISOT>='+#39+IntToStr(Sz1)+#39);

       DBForm.TargsInd1.Active:=true;
      DBForm.Statistics1.Active:=true;
      DBForm.TargsInd1.Last;

                 end
                 else
                  begin
                     DBForm.TargsInd1.Active:=false;
    DBForm.TargsInd1.SQLs.SelectSQL.Clear;
 DBForm.TargsInd1.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit15.Text+#39);

       DBForm.TargsInd1.Active:=true;
       DBForm.Statistics1.Active:=true;
        DBForm.TargsInd1.First;
          while not DBForm.TargsInd1.EOF do
            begin
         DBForm.Statistics1.First;
         DBForm.Statistics1.MoveBy(StrToInt(Edit16.Text));
                      max1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                           min1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                  while not DBForm.Statistics1.BOF do
                      begin
                        if DBForm.Statistics1OCENKA_S_VESOM.AsFloat>max1 then
                          begin
                            max1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                          end;
                          if DBForm.Statistics1OCENKA_S_VESOM.AsFloat<min1 then
                          begin
                            min1:=DBForm.Statistics1OCENKA_S_VESOM.AsFloat;
                          end;
                          DBForm.Statistics1.Prior;
                      end;
                      DBForm.TargsInd1.Edit;
                      DBForm.TargsInd1MIN_H.AsFloat:=min1;
                      DBForm.TargsInd1MAX_H.AsFloat:=max1;
                      sum1:=min1+max1;
                      SrZn1:=sum1/2;
                      DBForm.TargsInd1RAZN_VISOT.AsFloat:=SrZn1;
                      DBForm.TargsInd1.Next;
            end;
            DBForm.TargsInd1.Active:=false;
    DBForm.TargsInd1.SQLs.SelectSQL.Clear;
 DBForm.TargsInd1.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit15.Text+#39+' AND  '+'RAZN_VISOT>='+#39+Edit17.Text+#39);
     //DBForm.TargsInd1.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND ORDER BY IDENTIFIKATOR');
       DBForm.TargsInd1.Active:=true;
       DBForm.Statistics1.Active:=true;
       DBForm.TargsInd1.Last;
                  end;
end;
//==============================================================================
   procedure TForm_DBTargets.Search1(Sender: TObject);
var
min1,max1,sum1,SrZn1:double;
Sz1: integer;
begin
             sqlF1(nil);
Sz1:=1;
       if (Edit23.Text='')AND (Edit24.Text='') AND (Edit25.Text='')  then
                 begin
   DBForm.TargsInd2.Active:=false;
    DBForm.TargsInd2.SQLs.SelectSQL.Clear;
 DBForm.TargsInd2.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit22.Text+#39);

       DBForm.TargsInd2.Active:=true;
       DBForm.Statistics2.Active:=true;
        DBForm.TargsInd2.First;
          while not DBForm.TargsInd2.EOF do
            begin
         DBForm.Statistics2.First;
         DBForm.Statistics2.MoveBy(10);
                      max1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                           min1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                  while not DBForm.Statistics2.BOF do
                      begin
                        if DBForm.Statistics2OCENKA_S_VESOM.AsFloat>max1 then
                          begin
                            max1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                          end;
                          if DBForm.Statistics2OCENKA_S_VESOM.AsFloat<min1 then
                          begin
                            min1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                          end;
                          DBForm.Statistics2.Prior;
                      end;
                      DBForm.TargsInd2.Edit;
                      DBForm.TargsInd2MIN_H.AsFloat:=min1;
                      DBForm.TargsInd2MAX_H.AsFloat:=max1;
                      DBForm.TargsInd2RAZNOST_L_H.AsFloat:=max1-min1;
                      sum1:=min1+max1;
                      SrZn1:=sum1/2;
                      DBForm.TargsInd2RAZN_VISOT.AsFloat:=SrZn1;
                      DBForm.TargsInd2.Next;
            end;
                DBForm.TargsInd2.Active:=false;
   DBForm.TargsInd2.SQLs.SelectSQL.Clear;
 DBForm.TargsInd2.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit22.Text+#39);
 //+' AND  '+'RAZN_VISOT>='+#39+IntToStr(Sz1)+#39);

      DBForm.TargsInd2.Active:=true;
      DBForm.Statistics2.Active:=true;
      DBForm.TargsInd2.Last;

                 end
                 else
                  begin
                     DBForm.TargsInd2.Active:=false;
    DBForm.TargsInd2.SQLs.SelectSQL.Clear;
 DBForm.TargsInd2.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit23.Text+#39);

       DBForm.TargsInd2.Active:=true;
       DBForm.Statistics2.Active:=true;
        DBForm.TargsInd2.First;
          while not DBForm.TargsInd2.EOF do
            begin
         DBForm.Statistics2.First;
         DBForm.Statistics2.MoveBy(StrToInt(Edit24.Text));
                      max1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                           min1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                  while not DBForm.Statistics2.BOF do
                      begin
                        if DBForm.Statistics2OCENKA_S_VESOM.AsFloat>max1 then
                          begin
                            max1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                          end;
                          if DBForm.Statistics2OCENKA_S_VESOM.AsFloat<min1 then
                          begin
                            min1:=DBForm.Statistics2OCENKA_S_VESOM.AsFloat;
                          end;
                          DBForm.Statistics2.Prior;
                      end;
                      DBForm.TargsInd2.Edit;
                      DBForm.TargsInd2MIN_H.AsFloat:=min1;
                      DBForm.TargsInd2MAX_H.AsFloat:=max1;
                      sum1:=min1+max1;
                      SrZn1:=sum1/2;
                      DBForm.TargsInd2RAZN_VISOT.AsFloat:=SrZn1;
                      DBForm.TargsInd2.Next;
            end;
           DBForm.TargsInd2.Active:=false;
   DBForm.TargsInd2.SQLs.SelectSQL.Clear;
 DBForm.TargsInd2.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE KOL_S>='+#39+Edit23.Text+#39+' AND  '+'RAZN_VISOT>='+#39+Edit25.Text+#39);

       DBForm.TargsInd2.Active:=true;
       DBForm.Statistics2.Active:=true;
      DBForm.TargsInd2.Last;
                  end;
end;
//==============================================================================




///============
procedure TForm_DBTargets.Button7Click(Sender: TObject);
//begin
var
x0,y0,z0,x1,y1,z1,x2,y2,z2: double;
u1,u2,g1,g2,u0,g0,u3,g3,uk,gk: double;
r,ds1,ds2,r1: double;
a11,a12,a13,a21,a22,a23,a31,a32,a33,b11,b21,b31,c11,c21,c31:double;
begin
u0:=57.8;
g0:=27.58;
u1:=56.26;
g1:=31.83;

 DBForm.Targets.First;
     //--------------------------
     r:=6371.302;
     r1:=6911.086;
     x0:=cos(DegToRad(u0))*cos(DegToRad(g0))*r;
     y0:=cos(DegToRad(u0))*sin(DegToRad(g0))*r;
     z0:=sin(DegToRad(u0))*r;
      //-------------------------
      x1:=cos(DegToRad(u1))*cos(DegToRad(g1))*r;
     y1:=cos(DegToRad(u1))*sin(DegToRad(g1))*r;
     z1:=sin(DegToRad(u1))*r;


     //----------------------------
    while not  DBForm.Targets.EOF do
   begin
   //      u2:=StrToFloat(Edit10.Text);

     //    g2:=StrToFloat(Edit11.Text);
          u2:=DBForm.TargetsSHIROTA_DEC.AsFloat;
      //MemTable_PrepareDatasDOLGOTA_STR.AsString:=DBForm.Targets_QueryDOLGOTA_STR.AsString;
        g2:=DBForm.TargetsDOLGOTA_DEC.AsFloat;
     //--------������� ������� ���������-----------------------------------
       ds1:=6371.302*arccos(sin(DegToRad(0))*sin(DegToRad(u2))+cos(DegToRad(0))*cos(DegToRad(u2))*cos(DegToRad(g2-0)));
//     u2:=58.83;
  //   g2:=25.5;
     x2:=cos(DegToRad(u2))*cos(DegToRad(g2))*r;
     y2:=cos(DegToRad(u2))*sin(DegToRad(g2))*r;
     z2:=sin(DegToRad(u2))*r;
      a11:=1;
      a12:=0;
      a13:=0;
      a21:=0;
      a22:=cos(DegToRad(g0));
      a23:=sin(DegToRad(g0));
      a31:=0;
      a32:=-sin(DegToRad(g0));
      a33:=0;
      b11:=x2;
      b21:=y2;
      b31:=z2;
      c11:=a11*b11+a12*b21+a13*b31+x0;
      c21:=a21*b11+a22*b21+a23*b31+y0;
      c31:=a31*b11+a32*b21+a33*b31+z0;
      uk:=arctan(power(c11*c11+c21*c21,0.5)/c31);
      gk:=arctan(c21/c11);
      //Form_DBTargets.Edit8.Text:=FloatToStr(uk);
        // Form_DBTargets.Edit9.Text:=FloatToStr(gk);

     DBForm.Targets.Edit;
     DBForm.TargetsSHIROTA_DEC.AsFloat:=uk;
      //MemTable_PrepareDatasDOLGOTA_STR.AsString:=DBForm.Targets_QueryDOLGOTA_STR.AsString;
     DBForm.TargetsDOLGOTA_DEC.AsFloat:=gk;

 //Form_DBTargets.Edit10.Text:=FloatToStr(ds1);
       // ds2:=6371.302*arccos(sin(DegToRad(u0))*sin(DegToRad(uk))+cos(DegToRad(uk))*cos(DegToRad(gk))*sin(DegToRad(gk-g0)));
       // if (ds2>70) and (ds1>70) then
       // begin
       //  DBForm.Targets.Delete;
       // end;

          DBForm.Targets.Next;
   // end;
  //while not  MemTable_PrepareDatas.EOF do
   // begin

    end;

end;

procedure TForm_DBTargets.Button8Click(Sender: TObject);


//procedure TForm_Main.Button8Click(Sender: TObject);
var
dsr,sh,dol:double;

begin
DBForm.Targets.First;
while not DBForm.Targets.RecordCount<>1030000 do
      begin
             sh:=DBForm.TargetsSHIROTA_DEC.AsFloat;
      //MemTable_PrepareDatasDOLGOTA_STR.AsString:=DBForm.Targets_QueryDOLGOTA_STR.AsString;
     dol:=DBForm.TargetsDOLGOTA_DEC.AsFloat;
     dsr:=6371.302*arccos(sin(DegToRad(0))*sin(DegToRad(sh))+cos(DegToRad(0))*cos(DegToRad(sh))*cos(DegToRad(dol-0)));
      if dsr<210 then
          begin
            DBForm.Targets.Edit;
          DBForm.Targets.Next;
          end
              else
            begin
             DBForm.Write_Transaction.Active:=true;
            DBForm.Targets.Edit;
            DBForm.Targets.Delete;
            ///DBForm.Targets.Post;

          end;
          //DBForm.Targets.Next;
      end;
end;


procedure TForm_DBTargets.Button9Click(Sender: TObject);
var
  r_m,knl:integer;
  SumRaz,SumRM,RM,yBegin,yEnd,M,D,S,x,y,x2,x3,x4: double;
  dsr,sh0,sh1,dol0,dol1,An,Bn,Cn,Sx,Sy,Sx2,Syx,Sx3,Sx4,Syx2,d0,d1,d2,d3:double;
  i,i_k,j_k,k_k:integer;
begin
r_m:=DBForm.Targets.RecordCount;
            //x:=0;
            //y:=0;
            Sx:=0;
            Sy:=0;
            Syx:=0;
            Syx2:=0;
            Sx3:=0;
            Sx4:=0;
            Sx2:=0;
            knl:=0;
   sh0:=57.8;
      //MemTable_PrepareDatasDOLGOTA_STR.AsString:=DBForm.Targets_QueryDOLGOTA_STR.AsString;
   dol0:=27.58;
  //      DBForm.Targets.First;
    //        while not DBForm.Targets.EOF do
      //          begin
                //--------------------------------------------------------------
            //     MemTable_MergDatas.First;
           //            SumRaz:=0;
        ///      M:=0;
             // i:=0;
         // while not MemTable_MergDatas.EOF do
         //   begin
   //           SumRaz:=SumRaz+DBForm.TargetsRASSTOYNIE.AsFloat;
     //         i:=i+1;
                //-------------------------------------------------------------
       //         sh1:=DBForm.TargetsSHIROTA_DEC.AsFloat;
         //           dol1:=DBForm.TargetsDOLGOTA_DEC.AsFloat;
 //  dsr:=6371.302*arccos(sin(DegToRad(0))*sin(DegToRad(sh1))+cos(DegToRad(0))*cos(DegToRad(sh1))*cos(DegToRad(dol1-0)));
  // DBForm.Targets.Edit;
   //   DBForm.TargetsRASSTOYNIE.AsFloat:=dsr;
    //          DbForm.Targets.Post;
     //           DBForm.Targets.Next;

       //         end;
         //       M:=round(100*(SumRaz/i)+0.5)/100;
     DBForm.Targets.First;
     //    RM:=0;
       //     SumRm:=0;
        while not DBForm.Targets.EOF do
            begin

            RM:=(DBForm.TargetsRASSTOYNIE.AsFloat-M)*(DBForm.TargetsRASSTOYNIE.AsFloat-M);
             SumRm:=SumRm+RM;

            y:= DBForm.TargetsRAZNOST_BG_VISOT.AsFloat;
            x:=DBForm.TargetsRASSTOYNIE.AsFloat;
            x2:=power(x,2);
            x3:=power(x,3);
            x4:=power(x,4);
            Sx:=x+Sx;
            Sy:=Sy+y;
            Syx:=x*y+Syx;
            Syx2:=Syx2+y*x2;
            Sx3:=Sx3+x3;
            Sx4:=Sx4+x4;
            Sx2:=Sx2+x2;
            knl:=knl+1;
        DBForm.Targets.Next;
            end;
             D:=round(100*(SumRm/i)+0.5)/100; //���������
         //    Edit2.Text:=FloatToStr(D);
            S:=round(100*(sqrt(D))+0.5)/100;// �����

            yBegin:=round(100*(M-S)+0.5)/100;// ������ ��������� ����������
         //                 Edit4.Text:=FloatToStr( yBegin);
            yEnd:=round(100*(S+M)+0.5)/100;  // ����� ���������� ����������
         //                  Edit5.Text:=FloatToStr(yEnd);
                  d0:=r_m*Sx2*Sx4-r_m*Sx3*Sx3-Sx*Sx*Sx4-Sx*Sx3*Sx2+Sx2*Sx*Sx3-Sx2*Sx2*Sx2;
                 d1:=Sy*Sx2*Sx4-Sy*Sx3*Sx3-Sx*Syx*Sx4-Sx*Sx3*Sx2+Sx2*Syx*Sx3-Sx2*Sx2*Syx2;
                   d2:=r_m*Syx*Sx4-r_m*Sx3*Syx2-Sy*Sx*Sx4-Sy*Sx3*Sx2+Sx2*Sx*Syx2-Sx2*Syx*Sx2;
                   d3:=r_m*Sx2*Syx2-r_m*Syx*Sx3-Sx*Sx*Sx2-Sx*Syx*Sx2*Sy*Sx*Sx3-Sy*Sx2*Sx2;
                 An:=d1/d0;
                 Edit8.Text:=FloatToStr(An);
                 Bn:=d2/d0;
                 Edit9.Text:=FloatToStr(Bn);
                  Cn:=d3/d0;
                  Edit10.Text:=FloatToStr(Cn);

                   //knl:=knl+1;
    //               DBForm.Targets.First;
      //                 while not DBForm.Targets.EOF do
        //    begin
          //      if (DBForm.TargetsRASSTOYNIE.AsFloat>=yBegin) AND (DBForm.TargetsRASSTOYNIE.AsFloat<=yEnd) then
            //  begin
              //  DBForm.Targets.Next;
              //end
              //else
               //begin
                 //   DBForm.Targets.Edit;
 //    DBForm.Write_Transaction.Active:=true;
   //      DBForm.Targets.Delete;
     //   Application.ProcessMessages();
       //        end;
                //DBForm.TargsInses.Next;
         //   end;
end;

procedure TForm_DBTargets.blok1Src(Sender: TObject);
  var
  i:integer;
  j:integer;
  k:double;
  ZP:integer;

  begin
sqlF(nil);

  ZP:=10;

    DBForm.TargsInd1.First;
      while not DBForm.TargsInd1.EOF do
        begin
        i:=DBForm.TargsInd1KOL_S.AsInteger;
        j:=DBForm.TargsInd1KOL_SEANS.AsInteger;

        k:=(j/i)*100;
        DBForm.TargsInd1.Edit;
       DBForm.TargsInd1PROC_OTBR.AsFloat:=k;
       DBForm.TargsInd1.Next;
        end;
       // if Edit6.Text='' then
     //     begin
    //    DBForm.TargsInd.Active:=false;
  //  DBForm.TargsInd.SQLs.SelectSQL.Clear;
// DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE PROC_OTBR>='+#39+IntToStr(ZP)+#39);

 //      DBForm.TargsInd.Active:=true;
  //     DBForm.Statistics.Active:=true;
  //        end
   //         else
   //           begin
                      //DBForm.TargsInd.Active:=false;
 //   DBForm.TargsInd.SQLs.SelectSQL.Clear;
// DBForm.TargsInd.SQLs.SelectSQL.Add('SELECT * FROM TARGSIND WHERE PROC_OTBR>='+#39+Edit6.Text+#39);

  //     DBForm.TargsInd.Active:=true;
   //    DBForm.Statistics.Active:=true;
   //    DBForm.TargsInd.Last;
    //          end;
  end;

  ///=============
       procedure TForm_DBTargets.blok2Src(Sender: TObject);
  var
  i:integer;
  j:integer;
  k:double;
  ZP:integer;

  begin
sqlF1(nil);

  ZP:=10;

    DBForm.TargsInd2.First;
      while not DBForm.TargsInd2.EOF do
        begin
        i:=DBForm.TargsInd2KOL_S.AsInteger;
        j:=DBForm.TargsInd2KOL_SEANS.AsInteger;

        k:=(j/i)*100;
        DBForm.TargsInd2.Edit;
       DBForm.TargsInd2PROC_OTBR.AsFloat:=k;
       DBForm.TargsInd2.Next;
        end;
  end;
  //===============
  //===============
     procedure TForm_DBTargets.blok3Src(Sender: TObject);
  var
  i:integer;
  j:integer;
  k:double;
  ZP:integer;

  begin
 Button5Click(nil);

  ZP:=10;

    DBForm.TargsInd.First;
      while not DBForm.TargsInd.EOF do
        begin
        i:=DBForm.TargsIndKOL_S.AsInteger;
        j:=DBForm.TargsIndKOL_SEANS.AsInteger;

        k:=(j/i)*100;
        DBForm.TargsInd.Edit;
       DBForm.TargsIndPROC_OTBR.AsFloat:=k;
       DBForm.TargsInd.Next;
        end;
  end;
  ///==============
procedure TForm_DBTargets.Edit_TargsIndSearchDblClick1(Sender: TObject);
begin
  Edit_TargsIndSearch.Text:='';
end;

procedure TForm_DBTargets.Edit_TargsIndSearchKeyUp1(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
  DSr: double;

begin
DSr:=StrToFloat(Edit2.Text);
  if DBForm.TargsInd.Locate('SRZNOC',DSr, [loCaseInsensitive, loPartialKey])=false then
    DBForm.TargsInd.First;
end;
{procedure TForm_DBTargets.Button3Click(Sender: TObject);
var
i,j,k: integer;
sumOC: double;
dH:double;
begin
DBForm.Statistics.First;
sumOC:=0;
  while not DBForm.Statistics.EOF do
        begin
         sumOC:=sumOC+DBForm.StatisticsNEW_OCENKA_S_VESOM.AsFloat;
        i:=i+1;
        DBForm.Statistics.Next;
        end;
  dH:=sumOC/i;
  DBForm.TargsInd.Edit;
DBForm.TargsIndSRZNOC.AsFloat:=dH;
  DBForm.TargsInd.Post;
end;

procedure TForm_DBTargets.Button4Click(Sender: TObject);
begin
Form_ValueWeightGraph.KOL_FS(nil);
end;
 }
procedure TForm_DBTargets.Btn_DuplicateClick(Sender: TObject);
begin
  if DBForm.Targets.RecordCount=0 then Exit;

  duplicate.IDENTIFIKATOR:=DBForm.TargetsIDENTIFIKATOR.AsString;
  duplicate.BAROMETR_VISOTA:=DBForm.TargetsBAROMETR_VISOTA.AsFloat;
  duplicate.GEOMETR_VISOTA:=DBForm.TargetsGEOMETR_VISOTA.AsFloat;
  duplicate.RAZNOST_BG_VISOT:=DBForm.TargetsRAZNOST_BG_VISOT.AsFloat;
  duplicate.VREMYA_ZAPISI:=DBForm.TargetsVREMYA_ZAPISI.AsDateTime;
  duplicate.SHIROTA_STR:=DBForm.TargetsSHIROTA_STR.AsString;
  duplicate.SHIROTA_DEC:=DBForm.TargetsSHIROTA_DEC.AsFloat;
  duplicate.DOLGOTA_STR:=DBForm.TargetsDOLGOTA_STR.AsString;
  duplicate.DOLGOTA_DEC:=DBForm.TargetsDOLGOTA_DEC.AsFloat;
  duplicate.REYS:=DBForm.TargetsREYS.AsString;
  duplicate.TIP_BORTA:=DBForm.TargetsTIP_BORTA.AsString;

  DBForm.Targets.Append;
  if DBForm.Targets.State<>dsInsert then
  begin
    DBForm.Targets.Active:=false;
    DBForm.Targets.Active:=true;
    DBForm.Targets.Append;
  end;
  DBForm.Targets.Edit;
  DBForm.TargetsIDENTIFIKATOR.AsString:=duplicate.IDENTIFIKATOR;
  DBForm.TargetsBAROMETR_VISOTA.AsFloat:=duplicate.BAROMETR_VISOTA;
  DBForm.TargetsGEOMETR_VISOTA.AsFloat:=duplicate.GEOMETR_VISOTA;
  DBForm.TargetsRAZNOST_BG_VISOT.AsFloat:=duplicate.RAZNOST_BG_VISOT;
  DBForm.TargetsVREMYA_ZAPISI.AsDateTime:=duplicate.VREMYA_ZAPISI;
  DBForm.TargetsSHIROTA_STR.AsString:=duplicate.SHIROTA_STR;
  DBForm.TargetsSHIROTA_DEC.AsFloat:=duplicate.SHIROTA_DEC;
  DBForm.TargetsDOLGOTA_STR.AsString:=duplicate.DOLGOTA_STR;
  DBForm.TargetsDOLGOTA_DEC.AsFloat:=duplicate.DOLGOTA_DEC;
  DBForm.TargetsREYS.AsString:=duplicate.REYS;
  DBForm.TargetsTIP_BORTA.AsString:=duplicate.TIP_BORTA;
  DBForm.Targets.Post;
end;

procedure TForm_DBTargets.Btn_EditClick(Sender: TObject);
begin
  DBForm.Targets.Edit;

  Form_DBTargetsAppendAndEdit.Caption:='�������������� ������';
  Form_DBTargetsAppendAndEdit.Show;
end;

procedure TForm_DBTargets.Btn_LoadFromFileClick(Sender: TObject);
begin
  Form_ParamLoadFromFile.Show;
end;

procedure TForm_DBTargets.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_Main.Label_OpenCloseTargets.Caption:='�';
  Form_Main.BitBtn_TargetsMenu.Glyph:=nil;
  Application.ProcessMessages();
  Form_Main.ImageList_Menu_20x20.GetBitmap(0, Form_Main.BitBtn_TargetsMenu.Glyph);
end;

procedure TForm_DBTargets.FormShow(Sender: TObject);
var
  FormBorderWidth, FormBorderHeight: integer;
begin
  FormBorderWidth:=Round((Form_Main.Width-Form_Main.ClientWidth)/2);
  FormBorderHeight:=Form_Main.Height-Form_Main.ClientHeight-FormBorderWidth;
  Form_DBTargets.Left:=Form_Main.Left+FormBorderWidth+
                      Form_Main.Panel_Targets.Left+31+3;
  Form_DBTargets.Top:=Form_Main.Top+FormBorderHeight+
                     Form_Main.Panel_Targets.Top+Form_Main.Panel_Targets.Height-1;
  Form_DBTargets.Width:=Form_Main.Panel_Targets.Width-31-8;
  Form_DBTargets.Height:=Form_Main.Height-70;
  Form_DBTargets.Shape_BorderTop.Margins.Right:=Form_DataBase.Width+7;

  Form_Main.Label_OpenCloseTargets.Caption:='�';
  Form_Main.BitBtn_TargetsMenu.Glyph:=nil;
  Application.ProcessMessages();
  Form_Main.ImageList_Menu_20x20.GetBitmap(1, Form_Main.BitBtn_TargetsMenu.Glyph);
end;

end.
