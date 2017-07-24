unit License_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_License = class(TForm)
    Panel_License: TPanel;
    Label_City_Year: TLabel;
    Shape_Split1: TShape;
    Panel_Icon: TPanel;
    Panel_Info: TPanel;
    Image_Icon: TImage;
    Label_Name: TLabel;
    Shape_Split2: TShape;
    Label_Developers: TLabel;
    Label_UAV: TLabel;
    Label_TYV: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  Form_License: TForm_License;

implementation

uses MonitoringRVSM_main_unit, DataBase_unit,
     DBTargets_unit, DBSessions_unit, ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_License.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_DataBase.Handle;
end;
//------------------------------------------------------------------------------
procedure TForm_License.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_Main.Enabled:=true;
  Form_DataBase.Enabled:=true;
  Form_DBTargets.Enabled:=true;
  Form_DBSessions.Enabled:=true;
  Form_ValueWeightGraph.Enabled:=true;
end;

procedure TForm_License.FormShow(Sender: TObject);
begin
  Form_License.Left:=Form_Main.Left+Round(Form_Main.Width/2-Form_License.Width/2);
  Form_License.Top:=Form_Main.Top+Round(Form_Main.Height/2-Form_License.Height/2);
  Form_Main.Enabled:=false;
  Form_DataBase.Enabled:=false;
  Form_DBTargets.Enabled:=false;
  Form_DBSessions.Enabled:=false;
  Form_ValueWeightGraph.Enabled:=false;
end;

end.
