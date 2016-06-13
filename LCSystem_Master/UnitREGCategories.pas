unit UnitREGCategories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Mask, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmREGCategories = class(TForm)
    e: TImageList;
    PnlReg: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    PnlUsers: TPanel;
    DBMemo1: TDBMemo;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmREGCategories: TFrmREGCategories;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmREGCategories.BTN_CancelClick(Sender: TObject);
begin
 DM.ADODSCategories.Cancel;
 application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
 BTN_Save.Enabled   := False;
 BTN_Cancel.Enabled := False;
 BTN_Exit.Enabled     := True;
 PnlReg.Enabled     := False;
 close;
end;

procedure TFrmREGCategories.BTN_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmREGCategories.BTN_SaveClick(Sender: TObject);
begin
  if (DBEdit1.Text <> '') then
    begin
      DM.ADODSCategories.Post;
      application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
      BTN_save.Enabled   := False;
      BTN_cancel.Enabled := False;
      BTN_Exit.Enabled     := True;
      PnlReg.Enabled     := False;
    end
  else
    begin
        Application.MessageBox('O nome da categoria está vazio ou é inválido!','Atenção',MB_OK+MB_ICONINFORMATION);
    end;
end;

end.
