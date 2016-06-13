unit UNITREGEMPRESAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFRMREGEMPRESAS = class(TForm)
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
  FRMREGEMPRESAS: TFRMREGEMPRESAS;

implementation

{$R *.dfm}

uses DM;

procedure TFRMREGEMPRESAS.BTN_CancelClick(Sender: TObject);
begin
DMUNT.ADODSEMPRESA.CANCEL;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
BTN_Exit.Click;
end;

procedure TFRMREGEMPRESAS.BTN_ExitClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFRMREGEMPRESAS.BTN_SaveClick(Sender: TObject);
begin
if DBEdit2.Text<>'' then
BEGIN
DMUNT.ADODSEMPRESA.Post;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
END
ELSE
SHOWMESSAGE('Favor nao deixar nenhum campo em branco');
end;

end.
