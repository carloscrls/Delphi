unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.AppEvnts, Vcl.ExtCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMenus, Vcl.DBCtrls;

type
  TFrmMenuPrincipal = class(TForm)
    QueryLogin: TFDQuery;
    StatusBar1: TStatusBar;
    ActionManager1: TActionManager;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    ImageList1: TImageList;
    Cad_Paciente: TAction;
    Cad_Logoff: TAction;
    Cad_Sir: TAction;
    Fer_Usuario: TAction;
    Fer_Perfil: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionToolBar1: TActionToolBar;
    Action1: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Fer_UsuarioUpdate(Sender: TObject);
    procedure Fer_PerfilUpdate(Sender: TObject);
    procedure Fer_UsuarioExecute(Sender: TObject);
    procedure Fer_PerfilExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.dfm}

uses UntCadUsuario, UntDM, UntLogin, UntCadPerfil, UntAtendimento;

procedure TFrmMenuPrincipal.Action1Execute(Sender: TObject);
begin
  FrmAtendimento.ShowModal;
end;

procedure TFrmMenuPrincipal.Button1Click(Sender: TObject);
begin
  FrmCadUsuario.ShowModal;
end;

procedure TFrmMenuPrincipal.Button2Click(Sender: TObject);
begin
  FrmCadPerfil.ShowModal;
end;

procedure TFrmMenuPrincipal.Fer_PerfilExecute(Sender: TObject);
begin
  FrmCadPerfil.ShowModal;
end;

procedure TFrmMenuPrincipal.Fer_PerfilUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName
    ('PER_PERFIL').AsString = 'S' then
    Fer_Perfil.Enabled:= True
  else
    Fer_Perfil.Enabled:= False;
end;

procedure TFrmMenuPrincipal.Fer_UsuarioExecute(Sender: TObject);
begin
  FrmCadUsuario.ShowModal;
end;

procedure TFrmMenuPrincipal.Fer_UsuarioUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName
    ('PER_USUARIO').AsString = 'S' then
    Fer_Usuario.Enabled:= True
  else
    Fer_Usuario.Enabled:= False;
end;

procedure TFrmMenuPrincipal.FormActivate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:=
    formatDateTime(' dddd ", "' +
     ' dd " de " mmmm " de " yyyy',Now);
  FrmLogin.ShowModal;
end;

procedure TFrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  close;
end;

procedure TFrmMenuPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var confSaida: Integer;
begin
  beep;
  confSaida:= Application.MessageBox(
  'Tem certeza que deseja sair '+
  'do sistema?','Aten��o',
  MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

  if confSaida = IDYes then
    halt;

  if confSaida = IDNO then
    CanClose:= False;
end;

procedure TFrmMenuPrincipal.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels[0].Text:=
    TimeToStr(Time);
end;

end.
