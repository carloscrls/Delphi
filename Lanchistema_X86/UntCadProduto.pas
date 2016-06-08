unit UntCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadrao1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadProduto = class(TFrmPadrao1)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    FDQryCategoria: TFDQuery;
    DSCategoria: TDataSource;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    FDTabelaID: TFDAutoIncField;
    FDTabelaNome: TStringField;
    FDTabelaDescricao: TMemoField;
    FDTabelaPr_venda: TBCDField;
    FDTabelaPr_custo: TBCDField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_alt: TSQLTimeStampField;
    FDTabelaQtde_real: TBCDField;
    FDTabelaUnidade: TStringField;
    FDTabelaStatus: TStringField;
    FDTabelaId_categoria: TIntegerField;
    FDTabelaComp: TStringField;
    FDTabelaQtde_minima: TIntegerField;
    DBMemo1: TDBMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses UntDM, UntMenuPrincipal;


procedure TfrmCadProduto.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Produto';

    //Captura o Modo de edição do usuário
    modoEdicao:=
      FrmMenuPrincipal.QueryLogin.FieldByName('Produto_I').AsString +
      FrmMenuPrincipal.QueryLogin.FieldByName('Produto_A').AsString +
      FrmMenuPrincipal.QueryLogin.FieldByName('Produto_E').AsString;

    Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  FDQryCategoria.Open();
  executar:= habilitaBotoes;
end;

end.
