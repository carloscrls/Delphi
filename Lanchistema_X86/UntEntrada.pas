unit UntEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadrao1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmEntrada = class(TFrmPadrao1)
    FDTabelaID: TFDAutoIncField;
    FDTabelaDt_entrada: TSQLTimeStampField;
    FDTabelaCusto_total: TSingleField;
    FDTabelaQtde_itens: TIntegerField;
    FDTabelaID_usuario: TIntegerField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_alt: TSQLTimeStampField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    btn_i_inserir: TBitBtn;
    btn_i_confirmar: TBitBtn;
    btn_i_cancelar: TBitBtn;
    btn_i_excluir: TBitBtn;
    FDTabelaSTATUS: TStringField;
    pnl_itens: TPanel;
    FDItens: TFDTable;
    DSItens: TDataSource;
    FDItensID_entrada: TIntegerField;
    FDItensPr_custo: TSingleField;
    FDItensQtde: TSingleField;
    FDItensUnidade: TStringField;
    FDItensPr_total: TBCDField;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQryProdutos: TFDQuery;
    DSProdutos: TDataSource;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    FDItensid_prod: TIntegerField;
    FDItensNomeProduto: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    FDQryCategorias: TFDQuery;
    DSCategorias: TDataSource;
    FDTabelaSit: TStringField;
    Label11: TLabel;
    btn_confirmacao: TBitBtn;
    DBEdit10: TDBEdit;
    FDQryProdAssist: TFDQuery;
    DSProdAssist: TDataSource;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btn_i_inserirClick(Sender: TObject);
    procedure btn_i_confirmarClick(Sender: TObject);
    procedure btn_i_excluirClick(Sender: TObject);
    procedure btn_i_cancelarClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FDItensid_prodValidate(Sender: TField);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure FDItensAfterPost(DataSet: TDataSet);
    procedure btn_confirmacaoClick(Sender: TObject);
    procedure FDItensAfterDelete(DataSet: TDataSet);
    procedure FDTabelaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure controleItens(op:string);
    procedure somaTotal();
    procedure entradaProduto;
    procedure entradaGeral;
  public
    { Public declarations }
  end;

var
  frmEntrada: TfrmEntrada;

implementation

{$R *.dfm}

uses UntDM, UntMenuPrincipal;

procedure TfrmEntrada.entradaProduto;
begin
  DM.FDTblControleProd.Open();
  DM.FDTblControleProd.Filter:= 'ID = ' + FDItensID_Prod.AsString;
  DM.FDTblControleProd.Filtered:= True;
  DM.FDTblControleProd.Edit;
  DM.FDTblControleProdQtde_real.AsInteger:=
    DM.FDTblControleProdQtde_real.AsInteger + FDItensQtde.AsInteger;
  DM.FDTblControleProdPr_custo.AsFloat := FDItensPr_custo.AsFloat;
  DM.FDTblControleProd.Post;
  ShowMessage('A quantidade em estoque foi entrada com sucesso.');

  FDQryProdutos.Close;
  FDQryProdutos.Open();
end;


procedure TfrmEntrada.btn_AlterarClick(Sender: TObject);
begin
  if FDTabelaSit.AsString = 'C' then
    begin
      ShowMessage('Não é possível alterar Entradas confirmadas.');
      Abort;
    end
  else
    begin
      inherited;
      //controleItens('alterar');
      btn_i_inserir.Enabled := True;
      btn_i_excluir.Enabled := True;
      btn_confirmacao.Enabled:=True;
    end;
end;

procedure TfrmEntrada.btn_confirmacaoClick(Sender: TObject);
begin
  inherited;
  entradaGeral();
end;

procedure TfrmEntrada.btn_InserirClick(Sender: TObject);
begin
  inherited;
  btn_i_inserir.Enabled := True;
  FDTabelaSit.AsString := 'Digitação';
end;

procedure TfrmEntrada.btn_i_cancelarClick(Sender: TObject);
begin
  inherited;
  controleItens('cancelar');
  FDItens.Cancel;
end;

procedure TfrmEntrada.btn_i_confirmarClick(Sender: TObject);
begin
  inherited;
  if DBEdit3.Text = '' then
    begin
      ShowMessage('Preencha o Produto!');
      DBEdit3.SetFocus;
      Abort;
    end;
  if DBEdit5.Text = '' then
    begin
      ShowMessage('Preencha a Quantidade!');
      DBEdit5.SetFocus;
      Abort;
    end;

  controleItens('confirmar');
  FDItens.Post;
end;

procedure TfrmEntrada.btn_i_excluirClick(Sender: TObject);
begin
  inherited;
  controleItens('excluir');
  FDItens.Delete;
end;

procedure TfrmEntrada.btn_i_inserirClick(Sender: TObject);
begin
  inherited;
  controleItens('inserir');
  FDTabela.Post;
  FDTabela.Edit;

  FDItens.Insert;
end;

procedure TfrmEntrada.controleItens(op:string);
begin
  if op = 'inserir' then
    begin
      btn_i_Inserir.Enabled:= False;
      btn_i_Excluir.Enabled:= False;
      btn_i_Confirmar.Enabled:= True;
      btn_i_Cancelar.Enabled:= True;
      btn_confirmacao.Enabled:=True;
      pnl_Itens.Enabled:= True;
      DBLookupComboBox1.Enabled := True;
      DbEdit3.Enabled := True;
      DbEdit5.Enabled := True;
      DbEdit7.Enabled := True;
      DbEdit9.Enabled := True;

      //DBEdit5.SetFocus;
    end
  else if op = 'excluir' then
    begin
      btn_i_Inserir.Enabled   := True;
      btn_i_Excluir.Enabled   := True;
      btn_i_Confirmar.Enabled := False;
      btn_i_Cancelar.Enabled  := False;

      pnl_Itens.Enabled:= True;
    end
  else if op = 'cancelar' then
    begin
      btn_i_Inserir.Enabled   := True;
      btn_i_Excluir.Enabled   := True;
      btn_i_Confirmar.Enabled := False;
      btn_i_Cancelar.Enabled  := False;
      btn_confirmacao.Enabled:=False;

      pnl_Itens.Enabled:= True;
    end
  else if op = 'confirmar' then
    begin
      btn_i_Inserir.Enabled   := True;
      btn_i_Excluir.Enabled   := True;
      btn_i_Confirmar.Enabled := False;
      btn_i_Cancelar.Enabled  := False;

      pnl_Itens.Enabled:= True;
    end;
end;

procedure TfrmEntrada.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  FDItensPr_total.AsFloat := (FDItensPr_custo.AsFloat * FDItensQtde.AsFloat);
end;

procedure TfrmEntrada.DBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  FDQryProdAssist.EmptyDataSet;
  //ShowMessage(FDQryCategorias.FieldByName('id').AsString);
  FDQryProdAssist.Close();
  FDQryProdAssist.SQL.Clear;
  FDQryProdAssist.SQL.Add('SELECT Produto.ID ,Produto.Nome,Produto.Pr_custo,'
       +' Produto.Unidade,Produto.Status, Categoria.Nome AS CatNome'
       +' FROM Produto INNER JOIN'
       +' Categoria ON Produto.Id_categoria = Categoria.ID'
       +' WHERE Produto.Status = ' + QuotedStr('S')
       +' AND Produto.Id_categoria = ' + FDQryCategorias.FieldByName('id').AsString);
  FDQryProdAssist.Open();
  DBLookupComboBox1.Refresh;
end;

procedure TfrmEntrada.FDItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  somaTotal();
end;

procedure TfrmEntrada.FDItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  somaTotal();
end;

procedure TfrmEntrada.FDItensid_prodValidate(Sender: TField);
begin
  inherited;
  if not FDQryProdutos.Locate('ID',FDItensid_prod.AsString,[]) then
    begin
      MessageDlg('Produto não encontrado', mtError,[mbOK],0);
      DBLookupComboBox1.SetFocus;
      Abort;
    end
  else
    begin
      FDItensUnidade.AsString := FDQryProdutos.FieldByName('Unidade').AsString;
      FDItensPr_custo.AsFloat := FDQryProdutos.FieldByName('Pr_custo').AsFloat;
    end;
end;

procedure TfrmEntrada.FDTabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if FDTabelaDt_entrada.AsString = '' then
    FDTabelaDt_entrada.AsDateTime := now;
end;

procedure TfrmEntrada.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Entrada';
  pnl_itens.Enabled := False;

  //Captura o Modo de edição do usuário
  modoEdicao:=
    FrmMenuPrincipal.QueryLogin.FieldByName('Entrada_I').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Entrada_A').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Entrada_E').AsString;

  Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  FDItens.Open();
  FDQryProdAssist.Open();
  FDQryProdutos.Open();
  FDQryCategorias.Open();
  executar:= habilitaBotoes;
end;

procedure TfrmEntrada.somaTotal;
var
  Bmk: TBookmark;
  ValTot: Real;
  ItensTot: Integer;
begin
  inherited;
  with FDItens do
  begin
    Bmk:= GetBookmark;
    DisableControls;
    try
      ValTot   := 0;
      ItensTot := 0;
      First;
      while not eof do
      begin
        ItensTot := ItensTot + 1;
        ValTot:= ValTot + FDItensPr_TOTAL.AsFloat;
        Next;
      end;
    finally
    EnableControls;
    if Bmk <> nil then
      begin
      GotoBookmark(bmk);
      FreeBookmark(bmk);
      end;
    end;
    if not (FDTabela.State in [dsInsert,dsEdit]) then
      FDTabela.Edit;
    FDTabelaCusto_Total.AsFloat:= ValTot;
    FDTabelaQtde_itens.AsInteger := ItensTot;
    FDTabela.Post;
    FDTabela.Edit;
  end;
end;

procedure TfrmEntrada.entradaGeral;
var
  Bmk: TBookmark;
begin
  inherited;
  with FDItens do
  begin
    Bmk:= GetBookmark;
    DisableControls;
    try
      First;
      while not eof do
      begin
        entradaProduto();
        Next;
      end;
    finally
    EnableControls;
    if Bmk <> nil then
      begin
      GotoBookmark(bmk);
      FreeBookmark(bmk);
      end;
    end;
    if not (FDTabela.State in [dsInsert,dsEdit]) then
      FDTabela.Edit;
    FDTabelaSit.AsString := 'C';
    btn_salvar.Click;
  end;
end;

end.
