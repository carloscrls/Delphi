unit UntLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edt_Usuario: TLabeledEdit;
    edt_Senha: TLabeledEdit;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses UntMenuPrincipal;



procedure TfrmLogin.BitBtn1Click(Sender: TObject);
var
  StrSqlLog, mensagem: String;
begin
  StatusBar1.Panels[0].Text:= 'Autenticando usuário...';
  refresh;
  BitBtn1.Enabled:= False;
  edt_Usuario.Enabled:= False;
  edt_Senha.Enabled:= False;
  sleep(3000);

  strSqlLog:= 'select u.*, p.* '+
      'from usuario u inner join perfil p '+
      'on u.id_perfil = p.id '+
      'where u.nome = '+#39+
      edt_Usuario.Text+
      #39 + ' and u.senha = ' +
      #39 + edt_Senha.Text + #39;

  FrmMenuPrincipal.QueryLogin.Close;
  FrmMenuPrincipal.QueryLogin.SQL.Clear;
  FrmMenuPrincipal.QueryLogin.SQL.Add(strSqlLog);
  FrmMenuPrincipal.QueryLogin.Open();

  if FrmMenuPrincipal.QueryLogin.RecordCount = 1 then
    begin
      FrmMenuPrincipal.StatusBar1.Panels[2].Text:= 'Usuário: ' + FrmLogin.edt_Usuario.Text;
      FrmLogin.Close;
    end;

  if FrmMenuPrincipal.QueryLogin.RecordCount = 0 then
    begin
      mensagem:= 'Login inválido.' + #13 + #13 +
      'Se você esqueceu sua senha, consulte ' + #13 +'o administrador do sistema.';

      Application.MessageBox(PChar(mensagem),'Login não autorizado',MB_OK+MB_IconError);

      BitBtn1.Enabled     := True;
      edt_Usuario.Enabled := True;
      edt_Senha.Enabled   := True;
      edt_Usuario.Clear;
      edt_Senha.Clear;
      edt_Usuario.SetFocus;
      StatusBar1.Panels[0].Text := 'Erro de autenticação!';
    end;
end;

procedure TfrmLogin.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
