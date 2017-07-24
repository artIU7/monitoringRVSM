unit DBConnect_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrlsEh, IniFiles, ShlObj;

type
  TForm_DBConnect = class(TForm)
    Panel_DBConnect: TPanel;
    Edit_DataBaseFile: TDBEditEh;
    Shape_Split1: TShape;
    Panel_DBConnectButtons: TPanel;
    Btn_Complit: TButton;
    Shape_Split3: TShape;
    Btn_Apply: TButton;
    Shape_Split2: TShape;
    OpenDialog_DataBaseFile: TOpenDialog;
    procedure Edit_DataBaseFileEditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure Btn_ComplitClick(Sender: TObject);
    procedure Btn_ApplyClick(Sender: TObject);
    procedure Edit_DataBaseFileChange(Sender: TObject);
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
  Form_DBConnect: TForm_DBConnect;

implementation

uses MonitoringRVSM_main_unit,
     DB_unit, DataBase_unit, ParamDataBase_unit,
     DBTargets_unit, DBSessions_unit, ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_DBConnect.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_ParamDataBase.Handle;
end;

function GetSpecialPath(CSIDL: word): string;
var
  s: string;
begin
  SetLength(s, MAX_PATH);
  if not SHGetSpecialFolderPath(0, PChar(s), CSIDL, true) then s:='';
  result:=PChar(s);
end;
//------------------------------------------------------------------------------
procedure TForm_DBConnect.Btn_ApplyClick(Sender: TObject);
var
  Ini: TIniFile;
  s: string;
begin
  Form_Main.Panel_PrepareAndResultDatas.Visible:=false;
  Application.ProcessMessages();
  //----
  if Edit_DataBaseFile.Text<>'' then
  begin
    if FileExists(Edit_DataBaseFile.Text)=true then
    begin
      Btn_Apply.Enabled:=false;

      s:=ExtractFilePath(EXEFilePath);
      Ini:=TIniFile.Create(s+'Configuration.ini');
      Ini.WriteString('DataBase', 'DataBaseFile', AnsiString(DataBaseFile));
      Ini.WriteString('DataBase', 'DLLFile', AnsiString(DLLFile));
      Ini.Free;

      DB_presence;

      if DB_Error=true then
      begin
        Form_DataBase.Label_DataBaseInfo.Caption:='Ошибка подключения базы данных';
      end
      else
      begin
        Form_DataBase.Label_DataBaseInfo.Caption:='База данных подключена';
      end;
    end;
  end;
end;

procedure TForm_DBConnect.Btn_ComplitClick(Sender: TObject);
begin
  Btn_Apply.OnClick(Sender);
  Form_DBConnect.Close;
end;

procedure TForm_DBConnect.Edit_DataBaseFileChange(Sender: TObject);
var
  s: string;
  FindFile: TSearchRec;
  Result: word;
begin
  if Edit_DataBaseFile.Text<>'' then
  begin
    if FileExists(Edit_DataBaseFile.Text)=true then
    begin
      DataBaseFile:=Edit_DataBaseFile.Text;
      s:=ExtractFilePath(DataBaseFile);
      Result:=FindFirst(s+'*.dll', faAnyFile, FindFile);
      if Result=0 then
      begin
        while Result=0 do
        begin
          DLLFile:=s+FindFile.Name;
          Result:=FindNext(FindFile);
        end;
      end;
      Btn_Apply.Enabled:=true;
      Btn_Complit.Enabled:=true;
    end
    else
    begin
      Btn_Apply.Enabled:=false;
      Btn_Complit.Enabled:=false;
    end;
  end
  else
  begin
    Btn_Apply.Enabled:=false;
    Btn_Complit.Enabled:=false;
  end;
end;

procedure TForm_DBConnect.Edit_DataBaseFileEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  OpenDialog_DataBaseFile.FileName:='';
  OpenDialog_DataBaseFile.InitialDir:='';
  if DataBaseFile<>'' then
  begin
    if FileExists(DataBaseFile)=true then
      OpenDialog_DataBaseFile.InitialDir:=ExtractFilePath(DataBaseFile)
    else
      OpenDialog_DataBaseFile.InitialDir:=GetSpecialPath(CSIDL_DESKTOPDIRECTORY);
  end
  else OpenDialog_DataBaseFile.InitialDir:=GetSpecialPath(CSIDL_DESKTOPDIRECTORY);

  if OpenDialog_DataBaseFile.Execute then Edit_DataBaseFile.Text:=OpenDialog_DataBaseFile.FileName;
end;

procedure TForm_DBConnect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_ParamDataBase.Label_DataBaseFile.Caption:=DataBaseFile;
  Form_ParamDataBase.Label_DLLFile.Caption:=DLLFile;

  Form_ParamDataBase.Enabled:=true;
end;

procedure TForm_DBConnect.FormShow(Sender: TObject);
begin
  Form_DBConnect.Left:=Form_Main.Left+Round(Form_Main.Width/2-Form_DBConnect.Width/2);
  Form_DBConnect.Top:=Form_Main.Top+Round(Form_Main.Height/2-Form_DBConnect.Height/2);
  Edit_DataBaseFile.Text:=DataBaseFile;

  Btn_Apply.Enabled:=false;
  Btn_Complit.Enabled:=false;
  Form_ParamDataBase.Enabled:=false;
end;

end.
