unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.Actions, Vcl.ActnList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmMenuPrincipal = class(TForm)
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActCadUsuario: TAction;
    ActCadFuncionario: TAction;
    ActCadCategoria: TAction;
    ActCadEstoque: TAction;
    ActCadProduto: TAction;
    ActEntrada: TAction;
    ActPedido: TAction;
    ActSobre: TAction;
    ActRelVenda: TAction;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Timer1: TTimer;
    actCadPerfil: TAction;
    QueryLogin: TFDQuery;
    ActRelFuncionarios: TAction;
    actRelCategorias: TAction;
    actRelEstoque: TAction;
    actRelProdxCat: TAction;
    actRelSugestao: TAction;
    actRelProdutos: TAction;
    Action1: TAction;
    FDQuery1: TFDQuery;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ActCadUsuarioExecute(Sender: TObject);
    procedure ActCadFuncionarioExecute(Sender: TObject);
    procedure ActCadCategoriaExecute(Sender: TObject);
    procedure ActCadEstoqueExecute(Sender: TObject);
    procedure ActCadProdutoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActEntradaExecute(Sender: TObject);
    procedure ActPedidoExecute(Sender: TObject);
    procedure actCadPerfilExecute(Sender: TObject);
    procedure ActRelFuncionariosExecute(Sender: TObject);
    procedure actRelCategoriasExecute(Sender: TObject);
    procedure actRelEstoqueExecute(Sender: TObject);
    procedure actRelProdxCatExecute(Sender: TObject);
    procedure actRelSugestaoExecute(Sender: TObject);
    procedure ActRelVendaExecute(Sender: TObject);
    procedure actRelProdutosExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ActCadFuncionarioUpdate(Sender: TObject);
    procedure ActCadCategoriaUpdate(Sender: TObject);
    procedure ActCadEstoqueUpdate(Sender: TObject);
    procedure ActCadProdutoUpdate(Sender: TObject);
    procedure ActEntradaUpdate(Sender: TObject);
    procedure ActPedidoUpdate(Sender: TObject);
    procedure actCadPerfilUpdate(Sender: TObject);
    procedure ActCadUsuarioUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses UntPadrao1, UntCadCategoria, UntCadProduto, UntCadFuncionario,
  UntCadEstoque, UntCadUsuario, UntLogin, UntEntrada, UnitPedido, UntCadPerfil,
  UntDM, UntRelFuncionarios, UntRelCategorias, UntRelEntrada, UntRelEstoque,
  UntRelPedido, UntRelProdutos, UntRelProdxCat, UntRelSugestao,
  UntRelVendasxData, UntPadraoCs;

procedure TfrmMenuPrincipal.ActCadCategoriaExecute(Sender: TObject);
begin
  frmCadCategoria.ShowModal;
end;

procedure TfrmMenuPrincipal.ActCadCategoriaUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Categoria').AsString = 'S' then
    ActCadCategoria.Enabled:= True
  else
    ActCadCategoria.Enabled:= False;
end;

procedure TfrmMenuPrincipal.ActCadEstoqueExecute(Sender: TObject);
begin
  frmCadEstoque.ShowModal;
end;

procedure TfrmMenuPrincipal.ActCadEstoqueUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Estoque').AsString = 'S' then
    ActCadEstoque.Enabled:= True
  else
    ActCadEstoque.Enabled:= False;
end;

procedure TfrmMenuPrincipal.ActCadFuncionarioExecute(Sender: TObject);
begin
  frmCadFuncionario.ShowModal;
end;

procedure TfrmMenuPrincipal.ActCadFuncionarioUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Funcionario').AsString = 'S' then
    ActCadFuncionario.Enabled:= True
  else
    ActCadFuncionario.Enabled:= False;
end;

procedure TfrmMenuPrincipal.actCadPerfilExecute(Sender: TObject);
begin
  frmCadPerfil.ShowModal;
end;

procedure TfrmMenuPrincipal.actCadPerfilUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Perfil').AsString = 'S' then
    ActCadPerfil.Enabled:= True
  else
    ActCadPerfil.Enabled:= False;
end;

procedure TfrmMenuPrincipal.ActCadProdutoExecute(Sender: TObject);
begin
  frmCadProduto.ShowModal;
end;

procedure TfrmMenuPrincipal.ActCadProdutoUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Produto').AsString = 'S' then
    ActCadProduto.Enabled:= True
  else
    ActCadProduto.Enabled:= False;
end;

procedure TfrmMenuPrincipal.ActCadUsuarioExecute(Sender: TObject);
begin
  frmCadUsuario.ShowModal;
end;

procedure TfrmMenuPrincipal.ActCadUsuarioUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Usuario').AsString = 'S' then
    ActCadUsuario.Enabled:= True
  else
    ActCadUsuario.Enabled:= False;
end;

procedure TfrmMenuPrincipal.ActEntradaExecute(Sender: TObject);
begin
  frmEntrada.ShowModal;
end;

procedure TfrmMenuPrincipal.ActEntradaUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Entrada').AsString = 'S' then
    ActEntrada.Enabled:= True
  else
    ActEntrada.Enabled:= False;
end;

procedure TfrmMenuPrincipal.Action1Execute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuPrincipal.ActPedidoExecute(Sender: TObject);
begin
  frmPedido.ShowModal;
end;

procedure TfrmMenuPrincipal.ActPedidoUpdate(Sender: TObject);
begin
  if QueryLogin.FieldByName('Pedido').AsString = 'S' then
    ActPedido.Enabled:= True
  else
    ActPedido.Enabled:= False;
end;

procedure TfrmMenuPrincipal.actRelCategoriasExecute(Sender: TObject);
begin

  frmRelCategorias.Show;
end;

procedure TfrmMenuPrincipal.actRelEstoqueExecute(Sender: TObject);
begin
  frmRelEstoque.Show;
end;

procedure TfrmMenuPrincipal.ActRelFuncionariosExecute(Sender: TObject);
begin
  frmRelFuncionarios.Show;
end;

procedure TfrmMenuPrincipal.actRelProdutosExecute(Sender: TObject);
begin
  frmRelProdutos.Show;
end;

procedure TfrmMenuPrincipal.actRelProdxCatExecute(Sender: TObject);
begin
  frmRelProdxCat.Show;
end;

procedure TfrmMenuPrincipal.actRelSugestaoExecute(Sender: TObject);
begin
  frmRelSugestao.Show;
end;

procedure TfrmMenuPrincipal.ActRelVendaExecute(Sender: TObject);
begin
  frmRelVendasxData.Show;
end;

procedure TfrmMenuPrincipal.BitBtn1Click(Sender: TObject);
begin
  //frmCadCategoria.ShowModal;
  frmPadraoCs.ShowModal;
end;

procedure TfrmMenuPrincipal.BitBtn2Click(Sender: TObject);
begin
  frmCadFuncionario.ShowModal;
end;

procedure TfrmMenuPrincipal.BitBtn3Click(Sender: TObject);
begin
  frmPadrao1.ShowModal;
end;

procedure TfrmMenuPrincipal.BitBtn4Click(Sender: TObject);
begin
  //frmTeste.ShowModal;
end;

procedure TfrmMenuPrincipal.Button1Click(Sender: TObject);
begin
  frmCadProduto.ShowModal;
end;

procedure TfrmMenuPrincipal.FormActivate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= formatDateTime(' dddd ", " dd " de " mmmm " de " yyyy',Now);
  FrmLogin.ShowModal;
  //WindowState := wsMaximized;
end;

end.
