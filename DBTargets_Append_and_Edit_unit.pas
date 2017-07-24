unit DBTargets_Append_and_Edit_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrlsEh, StdCtrls, Mask, Math, DB, DBCtrls;

type
  TForm_DBTargetsAppendAndEdit = class(TForm)
    Panel_DBAppendAndEdit: TPanel;
    GrPanel_Targets: TGridPanel;
    Panel_Targets11: TPanel;
    Label_Reys: TLabel;
    Label_BarometrVisota: TLabel;
    Label_GeometrVisota: TLabel;
    Label_Identifikator: TLabel;
    Label_VremyaZapisi: TLabel;
    Panel_Shirota: TPanel;
    Label_ShirotaStr: TLabel;
    Label_ShirotaDec: TLabel;
    Panel_DolgotaStr: TPanel;
    Label_DolgotaStr: TLabel;
    Label_DolgotaDec: TLabel;
    Panel_Targets13: TPanel;
    Edit_Reys: TDBEditEh;
    Edit_ShirotaStr: TDBEditEh;
    Edit_ShirotaDec: TDBEditEh;
    Edit_DolgotaStr: TDBEditEh;
    Edit_DolgotaDec: TDBEditEh;
    Edit_BarometrVisota: TDBEditEh;
    Edit_GeometrVisota: TDBEditEh;
    Edit_Identifikator: TDBEditEh;
    Panel_Targets12: TPanel;
    Shape_SplitDot1: TShape;
    Shape_SplitDot2: TShape;
    Panel_Targets121: TPanel;
    Label_BarometrVisotaSI: TLabel;
    Label_GeometrVisotaSI: TLabel;
    Label_ShirotaStrSI: TLabel;
    Label_ShirotaDecSI: TLabel;
    Label_DolgotaStrSI: TLabel;
    Label_DolgotaDecSI: TLabel;
    Shape_Split1: TShape;
    Panel_TargetsButtons: TPanel;
    Btn_Cancel: TButton;
    Btn_Post: TButton;
    Shape_Split3: TShape;
    Shape_Split2: TShape;
    Edit_VremyaZapisi: TDBDateTimeEditEh;
    Label_TipBorta: TLabel;
    Edit_TipBorta: TDBEditEh;
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_PostClick(Sender: TObject);
    procedure Edit_DolgotaDecExit(Sender: TObject);
    procedure Edit_DolgotaDecKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_DolgotaDecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ShirotaDecExit(Sender: TObject);
    procedure Edit_DolgotaStrKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_DolgotaStrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ShirotaDecKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ShirotaDecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ShirotaStrKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ShirotaStrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  Form_DBTargetsAppendAndEdit: TForm_DBTargetsAppendAndEdit;

implementation

uses MonitoringRVSM_main_unit,
     DB_unit, DataBase_unit,
     DBTargets_unit, DBSessions_unit, ValueWeightGraph_unit;

{$R *.dfm}

procedure TForm_DBTargetsAppendAndEdit.CreateParams;
begin
  inherited;
  Params.WndParent:=Form_DataBase.Handle;
end;
//---- Функция перевода геогр.координат из строковой записи в десятичную -------
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
      MessageDlg('Не верный формат записи координат.', mtWarning, [mbOK], 0);
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
//---- Функция перевода геогр.координат из десятичной записи в строковую -------
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
//------------------------------------------------------------------------------
procedure TForm_DBTargetsAppendAndEdit.Btn_CancelClick(Sender: TObject);
begin
  DBForm.Targets.Cancel;
  Form_DBTargetsAppendAndEdit.Close;
end;

procedure TForm_DBTargetsAppendAndEdit.Btn_PostClick(Sender: TObject);
var
  RaznostVisot, Barometr_Visota, Geometr_Visota: double;
  DT: TDateTime;
begin
  try
    if (Edit_Identifikator.Text='') then
    begin
      MessageDlg('Не задан идентификатор цели.', mtWarning, [mbOK], 0);
      Edit_Identifikator.SetFocus;
      Exit;
    end;
    if (Edit_BarometrVisota.Text='') then
    begin
      MessageDlg('Не задана барометрическая высота.', mtWarning, [mbOK], 0);
      Edit_BarometrVisota.SetFocus;
      Exit;
    end;
    if (Edit_GeometrVisota.Text='') then
    begin
      MessageDlg('Не задана геометрическая высота.', mtWarning, [mbOK], 0);
      Edit_GeometrVisota.SetFocus;
      Exit;
    end;

    Barometr_Visota:=DBForm.TargetsBAROMETR_VISOTA.AsFloat;
    Geometr_Visota:=DBForm.TargetsGEOMETR_VISOTA.AsFloat;

    RaznostVisot:=Barometr_Visota-Geometr_Visota;
    DBForm.TargetsRAZNOST_BG_VISOT.AsFloat:=RaznostVisot;

    if ((Edit_ShirotaStr.Text<>'') and (Edit_ShirotaDec.Text='')) or
       ((Edit_ShirotaStr.Text='') and (Edit_ShirotaDec.Text<>'')) then
    begin
      MessageDlg('Не выполнина операция дублирования значения координаты.'+#13#10+
                 'Возможно, неверный формат записи координат.', mtWarning, [mbOK], 0);
      Edit_ShirotaStr.SetFocus;
      Exit;
    end;
    if ((Edit_DolgotaStr.Text<>'') and (Edit_DolgotaDec.Text='')) or
       ((Edit_DolgotaStr.Text='') and (Edit_DolgotaDec.Text<>'')) then
    begin
      MessageDlg('Не выполнина операция дублирования значения координаты.'+#13#10+
                 'Возможно, неверный формат записи координат.', mtWarning, [mbOK], 0);
      Edit_DolgotaStr.SetFocus;
      Exit;
    end;

    try
      DT:=StrToDateTime(Edit_VremyaZapisi.Text);
    except on E: Exception do
      begin
        MessageDlg('Неверный формат в поле «Дата и время записи».', mtWarning, [mbOK], 0);
        Edit_VremyaZapisi.SetFocus;
        Exit;
      end;
    end;

    DBForm.TargetsDOSTOVERNOST.AsInteger:=8;

    DBForm.Targets.Post;
    Form_DBTargetsAppendAndEdit.Close;
  except on E: Exception do
    begin
      MessageDlg('Ошибка при сохранении записи в базу данных.'+#13#10+
                 'Проверте правильность введенных данных.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_DolgotaDecExit(Sender: TObject);
var
  s: string;
  coord_d: double;
begin
  if (Edit_DolgotaDec.Text<>'') and
     (Form_Main.DBNavigator_Targets.Controls[Ord(nbPost)].Enabled=true) then
  begin
    coord_d:=StrToFloat(Edit_DolgotaDec.Text);
    s:=GeoCoordDecToS(coord_d);
    DBForm.TargetsDOLGOTA_STR.AsString:=s;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_DolgotaDecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=90) and (ssCtrl in Shift) then Edit_DolgotaDec.Undo;
  if (Key=88) and (ssCtrl in Shift) then Edit_DolgotaDec.CutToClipboard;
  if (Key=67) and (ssCtrl in Shift) then Edit_DolgotaDec.CopyToClipboard;
  if (Key=86) and (ssCtrl in Shift) then Edit_DolgotaDec.PasteFromClipboard;
  if (Key=65) and (ssCtrl in Shift) then Edit_DolgotaDec.SelectAll;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_DolgotaDecKeyPress(Sender: TObject;
  var Key: Char);
var
  s: string;
  coord_d: double;
begin
  case Key of
    '0'..'9': Edit_DolgotaStr.Text:='';
    ',': if pos(',', Edit_DolgotaDec.Text)>0 then Key:=#0;
    #13: begin
           if (Edit_DolgotaDec.Text<>'') and
              (Form_Main.DBNavigator_Targets.Controls[Ord(nbPost)].Enabled=true) then
           begin
             coord_d:=StrToFloat(Edit_DolgotaDec.Text);
             while coord_d>=360 do coord_d:=coord_d-360;
             Edit_DolgotaDec.Text:=FloatToStr(coord_d);
             s:=GeoCoordDecToS(coord_d);
             DBForm.TargetsDOLGOTA_STR.AsString:=s;
             Key:=#0;
             Edit_DolgotaDec.SelStart:=Length(Edit_DolgotaDec.Text);
           end;
         end;
    #8: Edit_DolgotaStr.Text:='';
    else key:=#0;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_DolgotaStrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=90) and (ssCtrl in Shift) then Edit_DolgotaStr.Undo;
  if (Key=88) and (ssCtrl in Shift) then Edit_DolgotaStr.CutToClipboard;
  if (Key=67) and (ssCtrl in Shift) then Edit_DolgotaStr.CopyToClipboard;
  if (Key=86) and (ssCtrl in Shift) then Edit_DolgotaStr.PasteFromClipboard;
  if (Key=65) and (ssCtrl in Shift) then Edit_DolgotaStr.SelectAll;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_DolgotaStrKeyPress(Sender: TObject;
  var Key: Char);
var
  s: string;
  coord_d: double;
begin
  case Key of
    '0'..'9': Edit_DolgotaDec.Text:='';
    #32: begin
           Edit_DolgotaDec.Text:='';
           s:=Edit_DolgotaStr.Text;
           if pos(#176, s)=0 then
           begin
             Edit_DolgotaStr.Text:=s+#176;
           end
           else
           begin
             if pos(#39, s)=0 then
             begin
               Edit_DolgotaStr.Text:=s+#39;
             end
             else
             begin
               if pos(#34, s)=0 then
               begin
                 Edit_DolgotaStr.Text:=s+#34;
                 coord_d:=GeoCoordSToDec(Edit_DolgotaStr.Text);
                 if coord_d<>-1 then
                   DBForm.TargetsDOLGOTA_DEC.AsFloat:=coord_d
                 else
                   Edit_DolgotaDec.Text:='';
               end;
             end;
           end;
           Key:=#0;
           Edit_DolgotaStr.SelStart:=Length(Edit_DolgotaStr.Text);
         end;
    #13: begin
           s:=Edit_DolgotaStr.Text;
           if (pos(#176, s)>0) and (pos(#39, s)>0) and (pos(#34, s)>0) then
           begin
             coord_d:=GeoCoordSToDec(Edit_DolgotaStr.Text);
             if coord_d<>-1 then
               Edit_DolgotaDec.Text:=FloatToStr(coord_d)
             else
               Edit_DolgotaDec.Text:='';
           end
           else
           begin
             MessageDlg('Неверный формат записи координат.', mtWarning, [mbOK], 0);
             Edit_DolgotaDec.Text:='';
           end;
         end;
    #8: Edit_DolgotaDec.Text:='';
    else key:=#0;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_ShirotaDecExit(Sender: TObject);
var
  s: string;
  coord_d: double;
begin
  if (Edit_ShirotaDec.Text<>'') and
     (Form_Main.DBNavigator_Targets.Controls[Ord(nbPost)].Enabled=true) then
  begin
    coord_d:=StrToFloat(Edit_ShirotaDec.Text);
    s:=GeoCoordDecToS(coord_d);
    DBForm.TargetsSHIROTA_STR.AsString:=s;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_ShirotaDecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=90) and (ssCtrl in Shift) then Edit_ShirotaDec.Undo;
  if (Key=88) and (ssCtrl in Shift) then Edit_ShirotaDec.CutToClipboard;
  if (Key=67) and (ssCtrl in Shift) then Edit_ShirotaDec.CopyToClipboard;
  if (Key=86) and (ssCtrl in Shift) then Edit_ShirotaDec.PasteFromClipboard;
  if (Key=65) and (ssCtrl in Shift) then Edit_ShirotaDec.SelectAll;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_ShirotaDecKeyPress(Sender: TObject;
  var Key: Char);
var
  s: string;
  coord_d: double;
begin
  case Key of
    '0'..'9': Edit_ShirotaStr.Text:='';
    ',': if pos(',', Edit_ShirotaDec.Text)>0 then Key:=#0;
    #13: begin
           if (Edit_ShirotaDec.Text<>'') and
              (Form_Main.DBNavigator_Targets.Controls[Ord(nbPost)].Enabled=true) then
           begin
             coord_d:=StrToFloat(Edit_ShirotaDec.Text);
             while coord_d>=360 do coord_d:=coord_d-360;
             Edit_ShirotaDec.Text:=FloatToStr(coord_d);
             s:=GeoCoordDecToS(coord_d);
             DBForm.TargetsSHIROTA_STR.AsString:=s;
             Key:=#0;
             Edit_ShirotaDec.SelStart:=Length(Edit_ShirotaDec.Text);
           end;
         end;
    #8: Edit_ShirotaStr.Text:='';
    else key:=#0;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_ShirotaStrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=90) and (ssCtrl in Shift) then Edit_ShirotaStr.Undo;
  if (Key=88) and (ssCtrl in Shift) then Edit_ShirotaStr.CutToClipboard;
  if (Key=67) and (ssCtrl in Shift) then Edit_ShirotaStr.CopyToClipboard;
  if (Key=86) and (ssCtrl in Shift) then Edit_ShirotaStr.PasteFromClipboard;
  if (Key=65) and (ssCtrl in Shift) then Edit_ShirotaStr.SelectAll;
end;

procedure TForm_DBTargetsAppendAndEdit.Edit_ShirotaStrKeyPress(Sender: TObject;
  var Key: Char);
var
  s: string;
  coord_d: double;
begin
  case Key of
    '0'..'9': Edit_ShirotaDec.Text:='';
    #32: begin
           Edit_ShirotaDec.Text:='';
           s:=Edit_ShirotaStr.Text;
           if pos(#176, s)=0 then
           begin
             Edit_ShirotaStr.Text:=s+#176;
           end
           else
           begin
             if pos(#39, s)=0 then
             begin
               Edit_ShirotaStr.Text:=s+#39;
             end
             else
             begin
               if pos(#34, s)=0 then
               begin
                 Edit_ShirotaStr.Text:=s+#34;
                 coord_d:=GeoCoordSToDec(Edit_ShirotaStr.Text);
                 if coord_d<>-1 then
                   DBForm.TargetsSHIROTA_DEC.AsFloat:=coord_d
                 else
                   Edit_ShirotaDec.Text:='';
               end;
             end;
           end;
           Key:=#0;
           Edit_ShirotaStr.SelStart:=Length(Edit_ShirotaStr.Text);
         end;
    #13: begin
           s:=Edit_ShirotaStr.Text;
           if (pos(#176, s)>0) and (pos(#39, s)>0) and (pos(#34, s)>0) then
           begin
             coord_d:=GeoCoordSToDec(Edit_ShirotaStr.Text);
             if coord_d<>-1 then
               Edit_ShirotaDec.Text:=FloatToStr(coord_d)
             else
               Edit_ShirotaDec.Text:='';
           end
           else
           begin
             MessageDlg('Неверный формат записи координат.', mtWarning, [mbOK], 0);
             Edit_ShirotaDec.Text:='';
           end;
         end;
    #8: Edit_ShirotaDec.Text:='';
    else key:=#0;
  end;
end;

procedure TForm_DBTargetsAppendAndEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_Main.Enabled:=true;
  Form_DataBase.Enabled:=true;
  Form_DBTargets.Enabled:=true;
  Form_DBSessions.Enabled:=true;
  Form_ValueWeightGraph.Enabled:=true;
  DBForm.Targets.Cancel;
end;

procedure TForm_DBTargetsAppendAndEdit.FormShow(Sender: TObject);
begin
  Form_DBTargetsAppendAndEdit.Left:=Form_Main.Left+Round(Form_Main.Width/2-Form_DBTargetsAppendAndEdit.Width/2);
  Form_DBTargetsAppendAndEdit.Top:=Form_Main.Top+Round(Form_Main.Height/2-Form_DBTargetsAppendAndEdit.Height/2);
  Form_Main.Enabled:=false;
  Form_DataBase.Enabled:=false;
  Form_DBTargets.Enabled:=false;
  Form_DBSessions.Enabled:=false;
  Form_ValueWeightGraph.Enabled:=false;
end;

end.
