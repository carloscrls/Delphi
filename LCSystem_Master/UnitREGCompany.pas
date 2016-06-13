unit UnitREGCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, System.ImageList, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls;

type
  TFrmREGCompany = class(TForm)
    PnlUser: TPanel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    e: TImageList;
    PnlReg: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmREGCompany: TFrmREGCompany;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmREGCompany.BTN_CancelClick(Sender: TObject);
begin
  DM.ADODSCompany.Cancel;
  application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
  BTN_Save.Enabled   := False;
  BTN_Cancel.Enabled := False;
  BTN_Exit.Enabled     := True;
  PnlReg.Enabled     := False;
end;

procedure TFrmREGCompany.BTN_ExitClick(Sender: TObject);
begin
close;
end;

procedure TFrmREGCompany.BTN_SaveClick(Sender: TObject);
begin

DM.ADODSCompany.Post;
application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
BTN_save.Enabled   := False;
BTN_cancel.Enabled := False;
BTN_Exit.Enabled     := True;
PnlReg.Enabled     := False;
end;


end.
