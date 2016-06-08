unit UntLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ValorNome: TEdit;
    ValorSenha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ValorNomeEnter(Sender: TObject);
    procedure ValorSenhaEnter(Sender: TObject);
    procedure ValorNomeExit(Sender: TObject);
    procedure ValorSenhaExit(Sender: TObject);
    procedure UsuarioChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ValorSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UntMenuPrincipal;

procedure TFrmLogin.BitBtn1Click(Sender: TObject);
var
  StrSqlLog, mensagem: String;
begin
  StatusBar1.Panels[0].Text:=
    'Autenticando usuário...';
  refresh;
  BitBtn1.Enabled:= False;
  ValorNome.Enabled:= False;
  ValorSenha.Enabled:= False;
  sleep(3000);

  strSqlLog:= 'select u.*, p.* '+
  'from usuario u inner join perfil p '+
  'on u.usu_nivel = p.id '+
  'where u.usu_nome = '+#39+
  ValorNome.Text+
  #39 + ' and u.usu_senha = ' +
  #39 + ValorSenha.Text + #39;

  FrmMenuPrincipal.QueryLogin.Close;
  FrmMenuPrincipal.QueryLogin.SQL.Clear;
  FrmMenuPrincipal.QueryLogin.SQL.Add(strSqlLog);
  FrmMenuPrincipal.QueryLogin.Open();

  if FrmMenuPrincipal.QueryLogin.
  RecordCount = 1 then
  begin
    FrmMenuPrincipal.StatusBar1.Panels[2].Text:=
    'Usuário: ' + FrmLogin.ValorNome.Text;

    FrmLogin.Close;
  end;

  if FrmMenuPrincipal.QueryLogin.
  RecordCount = 0 then
  begin
    mensagem:= 'Nome ou senha do usuário '+
    'inválidos.' + #13 + #13 +
    'Se você esqueceu sua '+
    'senha, consulte ' + #13 +
    'o administrador do sistema.';

    Application.MessageBox(PChar
    (mensagem),
    'Login não autorizado',
    MB_OK+MB_IconError);

    BitBtn1.Enabled:= True;
    ValorNome.Enabled:= True;
    ValorSenha.Enabled:= True;
    ValorNome.Clear;
    ValorSenha.Clear;
    ValorNome.SetFocus;
    StatusBar1.Panels[0].Text:=
    'Login não autorizado... '+
    'Tente novamente!';
  end;


end;

procedure TFrmLogin.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  UsuarioChange(sender);
end;

procedure TFrmLogin.UsuarioChange(Sender: TObject);
begin
  BitBtn1.Enabled:=
  (Length(ValorNome.Text) > 0) and
   (Length(ValorSenha.Text) > 0);
end;

procedure TFrmLogin.ValorNomeEnter(Sender: TObject);
begin
  TEdit(sender).Color:= $00C1FFFF;
  StatusBar1.Panels[0].Text:=
   'Informe o Usuário...';
end;

procedure TFrmLogin.ValorNomeExit(Sender: TObject);
begin
  TEdit(sender).Color:= clWindow;
end;

procedure TFrmLogin.ValorSenhaEnter(Sender: TObject);
begin
  TEdit(sender).Color:= $00C1FFFF;
  StatusBar1.Panels[0].Text:=
   'Informe a Senha...';
end;

procedure TFrmLogin.ValorSenhaExit(Sender: TObject);
begin
  TEdit(sender).Color:= clWindow;
end;

procedure TFrmLogin.ValorSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  BitBtn1.Click;
end;

end.
