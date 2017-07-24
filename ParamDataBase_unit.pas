unit ParamDataBase_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrlsEh, IniFiles;

type
  TForm_ParamDataBase = class(TForm)
    Pane_ParamDataBase: TPanel;
    Panel_DBConnect: TPanel;
    Label_DBConnect: TLabel;
    Label_DataBaseFile: TLabel;
    Label_DLLFile: TLabel;
    Shape_Split1: TShape;
    Panel_DBConnectButtons: TPanel;
    Shape_Split2: TShape;
    Btn_DBConnectChange: TButton;
    Panel_DBClear: TPanel;
    Label_DBClear: TLabel;
    Panel_DBClearButtons: TPanel;
    Shape_Split4: TShape;
    Btn_DBClearExecuteNow: TButton;
    Shape1: TShape;
    Panel_ClearDate: TPanel;
    Label_ClearDate: TLabel;
    Edit_ClearDate: TDBNumberEditEh;
    Label_ClearDateSI: TLabel;
    Shape2: TShape;
    ChBox_DBClear: TCheckBox;
    procedure Edit_ClearDateChange(Sender: TObject);
    procedure Btn_DBConnectChangeClick(Sender: TObject);
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
  Form_ParamDataBase: TForm_ParamDataBase;

implementation

uses MonitoringRVSM_main_unit, LoadFromFile_unit,
     DB_unit, DataBase_unit, DBConnect_unit,
     DBTargets_unit, DBSessions_unit, ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_ParamDataBase.Btn_DBConnectChangeClick(Sender: TObject);
begin
  Form_DBConnect.Show;
end;

procedure TForm_ParamDataBase.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_DataBase.Handle;
end;

procedure TForm_ParamDataBase.Edit_ClearDateChange(Sender: TObject);
begin
  DBClearDate:=Edit_ClearDate.Value;
  if DBClearDate<-1 then DBClearDate:=-1;
end;

procedure TForm_ParamDataBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Ini: TIniFile;
  s: string;
begin
  DBClearDate:=Edit_ClearDate.Value;
  if DBClearDate<-1 then DBClearDate:=-1;
  if ChBox_DBClear.State=cbUnchecked then DBClearCheck:=0;
  if ChBox_DBClear.State=cbChecked then DBClearCheck:=1;

  s:=ExtractFilePath(EXEFilePath);
  Ini:=TIniFile.Create(s+'Configuration.ini');
  Ini.WriteInteger('DataBase', 'DBClearDate', DBClearDate);
  Ini.WriteInteger('DataBase', 'DBClearCheck', DBClearCheck);
  Ini.Free;

  Form_Main.Enabled:=true;
  Form_DataBase.Enabled:=true;
  Form_DBTargets.Enabled:=true;
  Form_DBSessions.Enabled:=true;
  Form_ValueWeightGraph.Enabled:=true;
end;

procedure TForm_ParamDataBase.FormShow(Sender: TObject);
begin
  Label_DataBaseFile.Caption:=DataBaseFile;
  Label_DLLFile.Caption:=DLLFile;
  Edit_ClearDate.Value:=DBClearDate;
  if DBClearCheck=0 then ChBox_DBClear.State:=cbUnchecked;
  if DBClearCheck=1 then ChBox_DBClear.State:=cbChecked;

  Form_ParamDataBase.Left:=Form_Main.Left+Round(Form_Main.Width/2-Form_ParamDataBase.Width/2);
  Form_ParamDataBase.Top:=Form_Main.Top+Round(Form_Main.Height/2-Form_ParamDataBase.Height/2);
  Form_Main.Enabled:=false;
  Form_DataBase.Enabled:=false;
  Form_DBTargets.Enabled:=false;
  Form_DBSessions.Enabled:=false;
  Form_ValueWeightGraph.Enabled:=false;
end;

end.
