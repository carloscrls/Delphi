unit UntRelAtendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, frxClass, frxExportPDF, frxDBSet, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmRelAtendimento = class(TFrmPadraoRel)
    FDQuery2: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAtendimento: TFrmRelAtendimento;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelAtendimento.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery2.Close;
  edit1.Clear;
  close;
end;

procedure TFrmRelAtendimento.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FDQuery1.Close;
  FDQuery2.Close;

  with FDQuery1.sql do
  begin
    Clear;
    Add( 'SELECT Atendimento.*, Paciente.PAC_NOME, Funcionario.FUN_NOME FROM Funcionario INNER JOIN Atendimento ON Funcionario.ID = Atendimento.AT_ID_MEDICO INNER JOIN Paciente ON Atendimento.AT_ID_PACIENTE = Paciente.ID');
    if Edit1.text <> '' then
    try
      StrToint(edit1.Text);
      add('WHERE Atendimento.ID = ' + Edit1.Text);
    Except
    on ECOnvertError do;
    end;
  end;
 FDQuery1.Open();
 FDQuery2.Open();
 frxReport1.ShowReport();

end;

end.