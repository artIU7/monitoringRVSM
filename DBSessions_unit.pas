unit DBSessions_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, DBCtrls, StdCtrls,
  Mask, DBCtrlsEh, Buttons, ImgList, Commctrl, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBAxisGridsEh;

type
  TForm_DBSessions = class(TForm)
    Shape_BorderLeft: TShape;
    Shape_BorderRight: TShape;
    Shape_BorderBottom: TShape;
    Panel_DBSessions: TPanel;
    Shape_BorderTop: TShape;
    Panel_Sessions: TPanel;
    Panel_SessionsTableBack: TPanel;
    Panel_SessionsButtons: TPanel;
    Panel_SessionsTable: TPanel;
    DBGrid_Sessions: TDBGridEh;
    DBNavigator_Sessions: TDBNavigator;
    Panel_SessionsDatas: TPanel;
    DBText_VremyaSeansa: TDBText;
    Shape_Split1: TShape;
    GrPanel_Sessions: TGridPanel;
    Panel_SessionsData1: TPanel;
    Panel_SessionsData2: TPanel;
    Label_Interval: TLabel;
    Label_KolichestvoSamoletov: TLabel;
    Shape_Split2: TShape;
    Panel_Interval: TPanel;
    Edit_KolichestvoSamoletov: TDBEditEh;
    Edit_SrZnSrRaznosti: TDBEditEh;
    DTEdit_VremyaIntervala: TDBDateTimeEditEh;
    Label_InkrementIntervalaSI: TLabel;
    Edit_InkrementIntervala: TDBEditEh;
    Label_SetIntervalDateTimePlus: TLabel;
    Panel_TargsInSesAndIsobaraButtons: TPanel;
    Panel_TargsInSesTableBack: TPanel;
    Panel_TargsInSesTable: TPanel;
    DBGrid_TargsInSes: TDBGridEh;
    Shape_Split3: TShape;
    Btn_Delete: TButton;
    Btn_DeleteAll: TButton;
    Label_ObscheeKolichestvoSamoletov: TLabel;
    Label_DolyaSamoletovMonitoring: TLabel;
    Edit_ObscheeKolichestvoSamoletov: TDBEditEh;
    Edit_DolyaSamoletovMonitoring: TDBEditEh;
    Panel_IsobaraTable: TPanel;
    DBGrid_Isobara: TDBGridEh;
    Label_SrZnSrRaznosti: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEditEh4: TDBEditEh;
    Label7: TLabel;
    Label8: TLabel;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEditEh5: TDBEditEh;
    DBEditEh9: TDBEditEh;
    Label13: TLabel;
    DBEditEh10: TDBEditEh;
    Label14: TLabel;
    Button1: TButton;
    Label15: TLabel;
    DBEditEh11: TDBEditEh;
    Label16: TLabel;
    DBEditEh12: TDBEditEh;
    procedure DBEditEh3Change(Sender: TObject);
    procedure Btn_DeleteAllClick(Sender: TObject);
    procedure Btn_DeleteAllClick1(Sender: TObject);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  Form_DBSessions: TForm_DBSessions;

implementation

uses MonitoringRVSM_main_unit,
     DB_unit, DataBase_unit,
     ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_DBSessions.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_Main.Handle;
end;
procedure TForm_DBSessions.DBEditEh3Change(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
procedure TForm_DBSessions.Btn_DeleteAllClick(Sender: TObject);
var
  isDeleteSESSIONS, isDeleteTARGSINSES, isDeleteISOBARA: boolean;
begin
  if MessageDlg('�� �������, ��� ������ ������� ��� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  begin
    Panel_SessionsTable.Visible:=false;
    Panel_TargsInSesTable.Visible:=false;
    Panel_IsobaraTable.Visible:=false;

    isDeleteTARGSINSES:=DBForm.MonitoringDB.Execute('DELETE FROM TARGSINSES1');
    isDeleteSESSIONS:=DBForm.MonitoringDB.Execute('DELETE FROM SESSIONS1');
    isDeleteISOBARA:=DBForm.MonitoringDB.Execute('DELETE FROM ISOBARA1');
    if (isDeleteSESSIONS=false) or (isDeleteTARGSINSES=false) or (isDeleteISOBARA=false) then
      MessageDlg('������ � �������� �������� �������.', mtError, [mbOK], 0);
    Form_DataBase.Btn_DBRefresh.OnClick(Sender);

    Panel_SessionsTable.Visible:=true;
    Panel_TargsInSesTable.Visible:=true;
    Panel_IsobaraTable.Visible:=true;
  end;
end;
procedure TForm_DBSessions.Btn_DeleteAllClick1(Sender: TObject);
var
  isDeleteISOBARA: boolean;
begin


    //isDeleteTARGSINSES:=DBForm.MonitoringDB.Execute('DELETE FROM TARGSINSES');
   // isDeleteSESSIONS:=DBForm.MonitoringDB.Execute('DELETE FROM SESSIONS');
    isDeleteISOBARA:=DBForm.MonitoringDB.Execute('DELETE FROM ISOBARA');
    if (isDeleteISOBARA=false) then
      MessageDlg('������ � �������� �������� �������.', mtError, [mbOK], 0);
    Form_DataBase.Btn_DBRefresh.OnClick(Sender);

    end;

procedure TForm_DBSessions.Btn_DeleteClick(Sender: TObject);
begin
  if MessageDlg('�� �������, ��� ������ ������� ������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
    DBForm.Sessions.Delete;
end;

procedure TForm_DBSessions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_Main.Label_OpenCloseSessions.Caption:='�';
  Form_Main.BitBtn_SessionsMenu.Glyph:=nil;
  Application.ProcessMessages();
  Form_Main.ImageList_Menu_20x20.GetBitmap(0, Form_Main.BitBtn_SessionsMenu.Glyph);
end;

procedure TForm_DBSessions.FormShow(Sender: TObject);
var
  FormBorderWidth, FormBorderHeight: integer;
begin
  FormBorderWidth:=Round((Form_Main.Width-Form_Main.ClientWidth)/2);
  FormBorderHeight:=Form_Main.Height-Form_Main.ClientHeight-FormBorderWidth;
  Form_DBSessions.Left:=Form_Main.Left+FormBorderWidth+
                        Form_Main.Panel_Sessions.Left+31+3;
  Form_DBSessions.Top:=Form_Main.Top+FormBorderHeight+
                       Form_Main.Panel_Sessions.Top+Form_Main.Panel_Sessions.Height-1;
  Form_DBSessions.Width:=Form_Main.Panel_Sessions.Width-31-8;
  Form_DBSessions.Height:=Form_Main.Height-70-31;

  Form_Main.Label_OpenCloseSessions.Caption:='�';
  Form_Main.BitBtn_SessionsMenu.Glyph:=nil;
  Application.ProcessMessages();
  Form_Main.ImageList_Menu_20x20.GetBitmap(1, Form_Main.BitBtn_SessionsMenu.Glyph);
end;

end.
