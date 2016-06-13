unit UNITREGINSTRUTOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFRMREGINSTRUTOR = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    PnlReg: TPanel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    PnlProducts: TPanel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    ImageList1: TImageList;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMREGINSTRUTOR: TFRMREGINSTRUTOR;

implementation

{$R *.dfm}

uses DM;

procedure TFRMREGINSTRUTOR.BTN_CancelClick(Sender: TObject);
begin
DMUNT.ADODSINSTRUTOR.CANCEL;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
end;

procedure TFRMREGINSTRUTOR.BTN_ExitClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFRMREGINSTRUTOR.BTN_SaveClick(Sender: TObject);
begin
begin
if DBEdit2.Text<>'' then
BEGIN
DMUNT.ADODSINSTRUTOR.Post;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
END
ELSE
SHOWMESSAGE('Favor nao deixar nenhum campo em branco');
end;
end;

end.
