unit UntRelPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, frxDBSet;

type
  TfrmRelPedido = class(TfrmPadraoRel)
    FDQuery2: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    edt_id: TLabeledEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedido: TfrmRelPedido;

implementation

{$R *.dfm}

uses UntDM;

procedure TfrmRelPedido.BitBtn1Click(Sender: TObject);
begin
  if edt_id.Text = '' then
      ShowMessage('Você deve informar o ID de um pedido!!')
  else
    begin
      FDQuery1.Close();
      with FDQuery1.SQL do
        begin
          clear;
          Add('SELECT * FROM Pedido WHERE ID = ' + edt_id.Text);
        end;
      FDQuery2.Open();
      inherited;
    end;
end;

end.
