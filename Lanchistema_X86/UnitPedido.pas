unit UnitPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadrao1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Math;

type
  TfrmPedido = class(TFrmPadrao1)
    FDTabelaID: TIntegerField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_alt: TSQLTimeStampField;
    FDTabelaStatus: TStringField;
    FDTabelaHora: TTimeField;
    FDTabelaSit: TStringField;
    FDTabelaValor_total: TBCDField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    btn_i_excluir: TBitBtn;
    btn_i_cancelar: TBitBtn;
    btn_i_confirmar: TBitBtn;
    btn_i_inserir: TBitBtn;
    DBGrid1: TDBGrid;
    FDItens: TFDTable;
    DSItens: TDataSource;
    pnl_itens: TPanel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    FDItensID_pedido: TIntegerField;
    FDItensID_produto: TIntegerField;
    FDItensQtde: TIntegerField;
    FDItensPr_unit: TBCDField;
    FDItensPr_total: TBCDField;
    FDQryProdutos: TFDQuery;
    DSProdutos: TDataSource;
    FDItensNome: TStringField;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    btn_confirmarped: TBitBtn;
    FDTabelacupom: TIntegerField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    btn_imprimir: TBitBtn;
    FDQryAssist: TFDQuery;
    DSProdAssist: TDataSource;
    FDQryProdAssist: TFDQuery;
    FDQryCategorias: TFDQuery;
    DSCategorias: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure FDItensID_produtoValidate(Sender: TField);
    procedure btn_i_inserirClick(Sender: TObject);
    procedure btn_i_confirmarClick(Sender: TObject);
    procedure btn_i_cancelarClick(Sender: TObject);
    procedure btn_i_excluirClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);

    procedure FDItensAfterDelete(DataSet: TDataSet);
    procedure btn_confirmarpedClick(Sender: TObject);
    procedure FDItensAfterPost(DataSet: TDataSet);
    procedure btn_AlterarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure FDItensBeforePost(DataSet: TDataSet);
    procedure btnOkClick(Sender: TObject);
    procedure FDItensNewRecord(DataSet: TDataSet);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
  private
    procedure somaTotal;
    procedure baixaIndividual;
    procedure baixaProdutos;
    procedure gerarCupom;
    procedure controleItens(op: string);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

{$R *.dfm}

uses UntDM, UntRelPedido, UntMenuPrincipal;

//  TODO LIST **************
{
  - CHECAR SE ESTÁ FUNCIONANDO A VALIDACAO DO PRODUTO COM ESTOQUE *DONE
  - LOOKUP DE PRODUTO???
  - BAIXA DE ESTOQUE DOS PRODUTOS *DONE
  - SOMA DO TOTAL DO PEDIDO *have to test
  - DINAMICA DA SITUACAO DO PEDIDO
  - BLOQUEAR EDICAO CASO SITUACAO ESTEJA ENCERRADA *done
  - ERA ESSA QUERY QUE VOCÊ QUERIA??
    select * from Cupom A
    where A.dt_inc <= '2016-05-31T00:59:00.000'
}


procedure TfrmPedido.baixaIndividual;
begin
  DM.FDTblControleProd.Open();
  DM.FDTblControleProd.Filter:= 'ID = ' + FDItensID_Produto.AsString;
  DM.FDTblControleProd.Filtered:= True;
  DM.FDTblControleProd.Edit;
  DM.FDTblControleProdQtde_real.AsInteger:=
    DM.FDTblControleProdQtde_real.AsInteger - FDItensQtde.AsInteger;
  DM.FDTblControleProd.Post;
  ShowMessage('A quantidade em estoque foi baixada com sucesso.');

  FDQryProdutos.Close;
  FDQryProdutos.Open();
end;

procedure TfrmPedido.btn_confirmarpedClick(Sender: TObject);
var confSaida: Integer;
begin
  inherited;
  if FDTabelaSit.AsString <> 'Digitacao' then
    ShowMessage('Não é possível confirmar pedidos nessa situação.')
  else
    begin
      confSaida:= Application.MessageBox('Confirma??','Atenção',
                                    MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
      if confSaida = IDYes then
        begin
          gerarCupom();
          somaTotal();
          baixaProdutos();
        end;
      if confSaida = IDNO then
        Abort;
    end;
end;

procedure TfrmPedido.btn_ExcluirClick(Sender: TObject);
begin
  FDQryAssist.SQL.Clear;
  FDQryAssist.SQL.Add('DELETE from Peditem WHERE ID_pedido = ' + FDTabelaID.AsString);
  FDQryAssist.ExecSQL;
  btn_confirmarped.Enabled := False;
  inherited;
end;

procedure TfrmPedido.btn_imprimirClick(Sender: TObject);
begin
  inherited;
  frmRelPedido.edt_id.Text := FDTabelaID.AsString;
  frmRelPedido.ShowModal;
end;

procedure TfrmPedido.baixaProdutos;
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
        baixaIndividual();
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
    FDTabelaSit.AsString := 'Finalizado';
    //chamar function da cozinha
    btn_salvar.Click;
  end;
end;

procedure TfrmPedido.BitBtn1Click(Sender: TObject);
begin
  inherited;
  gerarCupom();
end;

procedure TfrmPedido.btnOkClick(Sender: TObject);
begin
  inherited;
  FDTabela.Locate('ID',ValorCampo.Text,[]);
  lblID.Caption := ValorCampo.Text;
end;

procedure TfrmPedido.btn_AlterarClick(Sender: TObject);
begin
  if (FDTabelaSit.AsString = 'Cozinha') or (FDTabelaSit.AsString = 'Finalizado') then
    begin
      ShowMessage('Não é possivel alterar pedidos na cozinha ou finalizados.');
      Abort;
    end
  else
    begin
      inherited;
      controleItens('i_confirmar');
      btn_confirmarped.Enabled := True;
    end;

end;

procedure TfrmPedido.btn_InserirClick(Sender: TObject);
begin
  inherited;
  FDTabelaHora.AsDateTime := now;
  Executar:= exibePanels;
  controleItens('i_confirmar');
  FDTabelaSit.AsString := 'Digitacao';
  try
    FDTabela.Post;
  finally
    begin
    FDTabela.Last;
    FDTabela.Edit;
    end;
  end;
end;

procedure TfrmPedido.btn_i_cancelarClick(Sender: TObject);
begin
  inherited;
  FDItens.Cancel;
end;

procedure TfrmPedido.btn_i_confirmarClick(Sender: TObject);
begin
  inherited;
  controleItens('i_confirmar');
  FDItens.Post;
end;

procedure TfrmPedido.btn_i_excluirClick(Sender: TObject);
begin
  inherited;
  FDItens.Delete;
end;

procedure TfrmPedido.btn_i_inserirClick(Sender: TObject);
begin
  inherited;
  controleItens('i_inserir');
  FDItens.Insert;
end;

procedure TfrmPedido.DBEdit3Change(Sender: TObject);
begin
  inherited;
  if DBEdit3.Text = 'Digitacao' then
    DBEdit3.Color:= clLime
  else if DBEdit3.Text = 'Cozinha' then
    DBEdit3.Color:= clYellow
  else if DBEdit3.Text = 'Finalizado' then
    DBEdit3.Color:= clRed
end;

procedure TfrmPedido.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  FDItensPr_total.AsFloat := FDQryProdutos.FieldByName('pr_venda').AsFloat * FDItensQtde.AsInteger;
end;

procedure TfrmPedido.DBLookupComboBox2Exit(Sender: TObject);
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

procedure TfrmPedido.FDItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  somaTotal();
end;

procedure TfrmPedido.FDItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  somaTotal();
end;

procedure TfrmPedido.FDItensBeforePost(DataSet: TDataSet);
begin
  inherited;
    FDItensID_pedido.AsInteger := FDTabelaID.AsInteger;
end;

procedure TfrmPedido.FDItensID_produtoValidate(Sender: TField);
begin
  inherited;
  if not FDQryProdutos.Locate('ID',FDItensid_produto.AsString,[]) then
    begin
      MessageDlg('Produto não encontrado', mtError,[mbOK],0);
      DBLookupComboBox1.SetFocus;
      Abort;
    end
  else
    begin
      //Produto não é uma composição(prato)?
      if FDQryProdutos.FieldByName('Comp').AsString = 'N' then
        begin
          //Existe estoque?
          if FDQryProdutos.FieldByName('qtde_real').AsInteger > 0 then
            begin
              FDItensPr_unit.AsFloat := FDQryProdutos.FieldByName('pr_venda').AsFloat;
              //Qtde real é menor que a minima? Alerte.
              if (FDQryProdutos.FieldByName('qtde_real').AsInteger <
                   FDQryProdutos.FieldByName('qtde_minima').AsInteger) then
                ShowMessage('Produto com pouco estoque, fique atento!');
            end
          else //Estoque = 0
            begin
              ShowMessage('Produto sem estoque disponível para venda!!!');
              DBEdit5.SetFocus;
              Abort;
            end;
        end;
    end;
end;

procedure TfrmPedido.FDItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  FDItensID_pedido.AsInteger := FDTabelaID.AsInteger;
end;

procedure TfrmPedido.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Pedido';

  modoEdicao:=
    FrmMenuPrincipal.QueryLogin.FieldByName('Pedido_I').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Pedido_A').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Pedido_E').AsString;

  Executar:= exibeBotoes;
  executar:= habilitaBotoes;
  inherited;
  FDTabela.Open();
  FDItens.Open();
  FDQryProdutos.Open();
  FDQryCategorias.Open();
  FDQryProdAssist.Open();
end;

procedure TfrmPedido.gerarCupom;
var cupom:integer;
 sql: string;
begin
  cupom := 0;

  sql:= 'select * from cupom WHERE num=0';
  DM.FDQryCupom.Close;
  DM.FDQryCupom.SQL.Clear;
  DM.FDQryCupom.SQL.Add(sql);
  DM.FDQryCupom.Open();

  while DM.FDQryCupom.RecordCount = 1 do
    begin
      ShowMessage('entrou no while');
      cupom := RandomRange(111111, 999999);
      sql:= 'select * from cupom WHERE num=' + IntToStr(cupom);

      DM.FDQryCupom.Close;
      DM.FDQryCupom.SQL.Clear;
      DM.FDQryCupom.SQL.Add(sql);
      DM.FDQryCupom.Open();
    end;

  DM.FDTblCupom.Open();
  DM.FDTblCupom.Insert;
  DM.FDTblCupomNum.AsInteger     := cupom;
  DM.FDTblCupomUsado.AsString    := 'N';
  DM.FDTblCupomdt_inc.AsDateTime := now;
  DM.FDTblCupom.Post;
  DM.FDTblCupom.Close();

  FDTabelaCupom.AsInteger := cupom;
end;

procedure TfrmPedido.somaTotal;
var
  Bmk: TBookmark;
  ValTot: Real;
begin
  inherited;
  with FDItens do
  begin
    Bmk:= GetBookmark;
    DisableControls;
    try
      ValTot:= 0;
      First;
      while not eof do
      begin
        ValTot:= ValTot + FDItensPr_TOTAL.AsFloat;
        //ShowMessage(floatToStr(ValTot));
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
    FDTabelaValor_Total.AsFloat:=   ValTot;
  end;
end;

procedure TfrmPedido.controleItens(op:string);
begin
  if op = 'i_inserir' then
    begin
      pnl_itens.Enabled         := True;
      DBEdit5.Enabled           := True; //Cod
      DBLookupComboBox1.Enabled := True; //Nome
      DBLookupComboBox2.Enabled := True; //Categoria
      DBEdit6.Enabled           := True; //Qtde
      btn_i_inserir.Enabled     := False;
      btn_i_confirmar.Enabled   := True;
      btn_i_cancelar.Enabled    := True;
      btn_i_excluir.Enabled     := False;
    end
  else if op = 'i_excluir' then
    begin
      pnl_itens.Enabled         := False;
      DBEdit5.Enabled           := False; //Cod
      DBLookupComboBox1.Enabled := False; //Nome
      DBLookupComboBox2.Enabled := False; //Categoria
      DBEdit6.Enabled           := False; //Qtde
      btn_i_inserir.Enabled     := True;
      btn_i_confirmar.Enabled   := False;
      btn_i_cancelar.Enabled    := False;
      btn_i_excluir.Enabled     := True;
    end
  else if op = 'i_cancelar' then
    begin
      pnl_itens.Enabled         := False;
      DBEdit5.Enabled           := False; //Cod
      DBLookupComboBox1.Enabled := False; //Nome
      DBLookupComboBox2.Enabled := False; //Categoria
      DBEdit6.Enabled           := False; //Qtde
      btn_i_inserir.Enabled     := True;
      btn_i_confirmar.Enabled   := False;
      btn_i_cancelar.Enabled    := False;
      btn_i_excluir.Enabled     := True;
    end
  else if op = 'i_confirmar' then
    begin
      pnl_itens.Enabled         := False;
      DBEdit5.Enabled           := False; //Cod
      DBLookupComboBox1.Enabled := False; //Nome
      DBLookupComboBox2.Enabled := False; //Categoria
      DBEdit6.Enabled           := False; //Qtde
      btn_i_inserir.Enabled     := True;
      btn_i_confirmar.Enabled   := False;
      btn_i_cancelar.Enabled    := True;
      btn_i_excluir.Enabled     := True;
    end;
end;

end.
