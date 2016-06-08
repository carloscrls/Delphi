unit UntRelEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelEntrada = class(TfrmPadraoRel)
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    GroupBox1: TGroupBox;
    edt_id: TLabeledEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEntrada: TfrmRelEntrada;

implementation

{$R *.dfm}

uses UntDM;

procedure TfrmRelEntrada.BitBtn1Click(Sender: TObject);
begin
  if edt_id.Text = '' then
      ShowMessage('Você deve informar o ID de uma Entrada!!')
  else
    begin
      FDQuery1.Close();
      with FDQuery1.SQL do
        begin
          clear;
          Add('SELECT Entrada.*, Usuario.Nome '
              +'FROM Entrada INNER JOIN '
              +'Usuario ON Entrada.ID = Usuario.ID '
              +'WHERE Entrada.ID = ' + edt_id.Text);
        end;
      FDQuery2.Open();
      inherited;
    end;
end;

end.
