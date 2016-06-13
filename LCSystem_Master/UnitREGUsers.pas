unit UnitREGUsers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmRegUsers = class(TForm)
    PnlUsers: TPanel;
    PnlReg: TPanel;
    Label1: TLabel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    e: TImageList;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    Label3: TLabel;
    edt_confpass: TEdit;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegUsers: TFrmRegUsers;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmRegUsers.BTN_CancelClick(Sender: TObject);
begin
 DM.ADODSUsers.Cancel;
 //Cancela a exclusão do registro
 application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
 BTN_Save.Enabled   := False;
 BTN_Cancel.Enabled := False;
 BTN_Exit.Enabled   := True;
 PnlReg.Enabled     := False;
 close;
end;

procedure TFrmRegUsers.BTN_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRegUsers.BTN_SaveClick(Sender: TObject);
begin
  if (DBEdit1.Text <> '') then
    begin
      if (DBEdit2.Text = edt_confpass.Text) then
      // Se o dbedit2 (campo senha) for igual ao edt_confpass(confirme a senha)
        begin
          DM.ADODSUsers.Post;
          application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
          BTN_save.Enabled   := False;
          BTN_cancel.Enabled := False;
          BTN_Exit.Enabled   := True;
          PnlReg.Enabled     := False;
          edt_confpass.text  := '';
          {O registro é salvo, a confirmação é exibida, os botões e paineis sao ativados e desativados
          e o edit_confpass é limpado. OBS: Os dbs edits nao foram limpos porque ja o fazem automaticamente}
        end
      else
        begin
          Application.MessageBox('As senhas não correspondem','Atenção',MB_OK+MB_ICONINFORMATION);
          DBEdit2.Text := '';
          edt_confpass.Text := '';
          DBEdit2.SetFocus;
          {Se os valores dos edits forem diferentes uma mensagem de erro será exibida
          e os edits do campo senha são limpos e focados para que o usuario insira novamente a senha}
        end;
    end
    else Application.MessageBox('Usuário Inválido!','Atenção',MB_OK+MB_ICONINFORMATION);
end;

end.
