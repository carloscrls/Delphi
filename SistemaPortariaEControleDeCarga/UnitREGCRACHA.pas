unit UnitREGCRACHA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFRMREGCRACHA = class(TForm)
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
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure BTN_SaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMREGCRACHA: TFRMREGCRACHA;

implementation

{$R *.dfm}

uses DM;

procedure TFRMREGCRACHA.BTN_CancelClick(Sender: TObject);
begin
DMUNT.adodscracha.cancel;
PnlReg.Enabled:=false;

BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
end;

procedure TFRMREGCRACHA.BTN_ExitClick(Sender: TObject);
begin
close;
end;

procedure TFRMREGCRACHA.BTN_SaveClick(Sender: TObject);
begin
DBEdit1.Text:='DISPONIVEL';
DMUNT.adodscracha.Post;
PnlReg.Enabled:=false;

BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;

end;

procedure TFRMREGCRACHA.FormActivate(Sender: TObject);
begin
PnlReg.Enabled:=true;
end;

procedure TFRMREGCRACHA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BTN_EXIT.Click;
end;

end.
