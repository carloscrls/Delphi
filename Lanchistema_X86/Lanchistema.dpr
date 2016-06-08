program Lanchistema;

uses
  Vcl.Forms,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {frmMenuPrincipal},
  UntPadrao1 in 'UntPadrao1.pas' {frmPadrao1},
  UntLogin in 'UntLogin.pas' {frmLogin},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntCadCategoria in 'UntCadCategoria.pas' {frmCadCategoria},
  UntCadProduto in 'UntCadProduto.pas' {frmCadProduto},
  UntCadFuncionario in 'UntCadFuncionario.pas' {frmCadFuncionario},
  UntCadUsuario in 'UntCadUsuario.pas' {frmCadUsuario},
  UntCadEstoque in 'UntCadEstoque.pas' {frmCadEstoque},
  UntEntrada in 'UntEntrada.pas' {frmEntrada},
  UnitPedido in 'UnitPedido.pas' {frmPedido},
  UntCadPerfil in 'UntCadPerfil.pas' {frmCadPerfil},
  UntPadraoRel1 in 'UntPadraoRel1.pas' {frmPadraoRel},
  UntRelPedido in 'UntRelPedido.pas' {frmRelPedido},
  UntRelFuncionarios in 'UntRelFuncionarios.pas' {frmRelFuncionarios},
  UntRelEstoque in 'UntRelEstoque.pas' {frmRelEstoque},
  UntRelCategorias in 'UntRelCategorias.pas' {frmRelCategorias},
  UntRelEntrada in 'UntRelEntrada.pas' {frmRelEntrada},
  UntRelProdutos in 'UntRelProdutos.pas' {frmRelProdutos},
  UntRelProdxCat in 'UntRelProdxCat.pas' {frmRelProdxCat},
  UntRelSugestao in 'UntRelSugestao.pas' {frmRelSugestao},
  UntRelVendasxData in 'UntRelVendasxData.pas' {frmRelVendasxData},
  UntRelVendasxProduto in 'UntRelVendasxProduto.pas' {frmRelVendasxProduto},
  UntPadraoCs in 'UntPadraoCs.pas' {frmPadraoCs};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TfrmPadrao1, frmPadrao1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCadCategoria, frmCadCategoria);
  Application.CreateForm(TfrmCadProduto, frmCadProduto);
  Application.CreateForm(TfrmCadFuncionario, frmCadFuncionario);
  Application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  Application.CreateForm(TfrmCadEstoque, frmCadEstoque);
  Application.CreateForm(TfrmEntrada, frmEntrada);
  Application.CreateForm(TfrmPedido, frmPedido);
  Application.CreateForm(TfrmCadPerfil, frmCadPerfil);
  Application.CreateForm(TfrmPadraoRel, frmPadraoRel);
  Application.CreateForm(TfrmRelPedido, frmRelPedido);
  Application.CreateForm(TfrmRelFuncionarios, frmRelFuncionarios);
  Application.CreateForm(TfrmRelEstoque, frmRelEstoque);
  Application.CreateForm(TfrmRelCategorias, frmRelCategorias);
  Application.CreateForm(TfrmRelEntrada, frmRelEntrada);
  Application.CreateForm(TfrmRelProdutos, frmRelProdutos);
  Application.CreateForm(TfrmRelProdxCat, frmRelProdxCat);
  Application.CreateForm(TfrmRelSugestao, frmRelSugestao);
  Application.CreateForm(TfrmRelVendasxData, frmRelVendasxData);
  Application.CreateForm(TfrmRelVendasxProduto, frmRelVendasxProduto);
  Application.CreateForm(TfrmPadraoCs, frmPadraoCs);
  Application.Run;
end.
