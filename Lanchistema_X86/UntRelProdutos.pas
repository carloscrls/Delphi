unit UntRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmRelProdutos = class(TfrmPadraoRel)
    GroupBox1: TGroupBox;
    FDQuery2: TFDQuery;
    GroupBox2: TGroupBox;
    EdtCod1: TLabeledEdit;
    EdtCod2: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    ComboBox1: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.dfm}

uses UntDM;

procedure TfrmRelProdutos.BitBtn1Click(Sender: TObject);
var StrLiga, st:string;
begin
  st:= '';
  StrLiga := 'WHERE ';
  FDQuery1.Close;
  with FDQuery1.sql do
    begin
      clear;
      Add('SELECT Categoria.Nome as CatNome,Produto.Status, '
          +'Produto.Nome AS ProdNome, Produto.ID, Produto.Pr_venda, '
          +'Produto.Pr_custo, Produto.Qtde_real, Produto.Comp '
          +'FROM Produto INNER JOIN '
          +'Categoria ON Produto.Id_categoria = Categoria.ID ' );
      if EdtCod1.Text <> '' then
        try
          StrToInt(EdtCod1.Text);
          Add(StrLiga + 'Produto.ID >= ' + EdtCod1.Text);
          StrLiga := ' AND ';
        except
          on EconvertError do;
        end;
      if EdtCod2.Text <> '' then
        try
          StrToInt(EdtCod1.Text);
          Add(StrLiga + 'Produto.ID <= ' + EdtCod2.Text);
          StrLiga := ' AND ';
        except
          on EconvertError do;
        end;
      case RadioGroup2.ItemIndex of
        1: st := 'S';
        2: st := 'N';
      end;
      if st <> '' then
        try
          Add(StrLiga + 'Produto.Status = ' + QuotedStr(st));
          StrLiga := ' AND ';
        except
          on EconvertError do;
        end;
      if ComboBox1.ItemIndex <> 0 then
        begin
          Add(StrLiga + 'Categoria.Nome = ' + QuotedStr(ComboBox1.Text));
          StrLiga := ' AND ';
        end;
      case RadioGroup1.ItemIndex of
        0: Add(' ORDER BY Produto.ID');
        1: Add(' ORDER BY Produto.Nome');
      end;
    end;
  //ShowMessage ( FDQuery1.sql.Text);
  inherited;
end;

procedure TfrmRelProdutos.FormActivate(Sender: TObject);
begin
  inherited;
  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('Todas');
  FDQuery2.Open();
  FDQuery2.First;
  while not FDQuery2.Eof do
    begin
      Combobox1.Items.Add(FDQuery2.FieldByName('nome').asString);
      FDQuery2.Next;
    end;
  FDQuery2.Close;
  Combobox1.ItemIndex := 0;
  RadioGroup1.ItemIndex := 0;
  RadioGroup2.ItemIndex := 0;
end;

end.
