unit DataBase_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm_DataBase = class(TForm)
    Panel_DataBase: TPanel;
    Panel_Buttons: TPanel;
    Btn_DBRefresh: TButton;
    Btn_SetConnectDataBase: TButton;
    Shape_Split1: TShape;
    Panel_DataBaseInfo: TPanel;
    Label_DataBaseInfo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Btn_SetConnectDataBaseClick(Sender: TObject);
    procedure Btn_DBRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  Form_DataBase: TForm_DataBase;

implementation

uses MonitoringRVSM_main_unit,
     DB_unit, ParamDataBase_unit,
     DBTargets_unit, DBConnect_unit;

{$R *.dfm}

procedure TForm_DataBase.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_DBTargets.Handle
end;
//------------------------------------------------------------------------------
procedure TForm_DataBase.Btn_SetConnectDataBaseClick(Sender: TObject);
begin
  Form_ParamDataBase.Show;
end;

procedure TForm_DataBase.FormShow(Sender: TObject);
var
  FormBorderWidth, FormBorderHeight: integer;
begin
  FormBorderWidth:=Round((Form_Main.Width-Form_Main.ClientWidth)/2);
  FormBorderHeight:=Form_Main.Height-Form_Main.ClientHeight-FormBorderWidth;
  Form_DataBase.Left:=Form_Main.Left+FormBorderWidth+
                      Form_Main.Width-Form_DataBase.Width-19;
  Form_DataBase.Top:=Form_Main.Top+FormBorderHeight+
                     Form_Main.Panel_Targets.Top+5;
end;

procedure TForm_DataBase.Btn_DBRefreshClick(Sender: TObject);
begin
  DBForm.Targets.Active:=false;
  DBForm.Sessions.Active:=false;
  DBForm.TargsInSes.Active:=false;
  DBForm.Isobara.Active:=false;
  DBForm.TargsInd.Active:=false;
  DBForm.Statistics.Active:=false;
  DBForm.DataAnalys1.Active:=false;
  DBForm.DataAnalys.Active:=false;
  DBForm.DataAnalys2.Active:=false;
  Sleep(100);
  DBForm.Targets.Active:=true;
  DBForm.Sessions.Active:=true;
  DBForm.TargsInSes.Active:=true;
  DBForm.Isobara.Active:=true;
  DBForm.TargsInd.Active:=true;
  DBForm.Statistics.Active:=true;
    DBForm.DataAnalys1.Active:=true;
  DBForm.DataAnalys.Active:=true;
  DBForm.DataAnalys2.Active:=true;

  DBForm.Targets.Last;
  DBForm.Targets.First;
  DBForm.Sessions.Last;
  DBForm.Sessions.First;
  DBForm.TargsInSes.Last;
  DBForm.TargsInSes.First;
  DBForm.Isobara.Last;
  DBForm.Isobara.First;
  DBForm.TargsInd.Last;
  DBForm.TargsInd.First;
  DBForm.Statistics.Last;
  DBForm.Statistics.First;
  DBForm.DataAnalys.Last;
  DBForm.DataAnalys.First;
  DBForm.DataAnalys1.Last;
  DBForm.DataAnalys1.First;
  DBForm.DataAnalys2.Last;
  DBForm.DataAnalys2.First;
end;

end.
