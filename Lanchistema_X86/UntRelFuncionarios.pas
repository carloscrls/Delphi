unit UntRelFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelFuncionarios = class(TfrmPadraoRel)
    GroupBox1: TGroupBox;
    EdtCod1: TLabeledEdit;
    EdtCod2: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFuncionarios: TfrmRelFuncionarios;

implementation

{$R *.dfm}

procedure TfrmRelFuncionarios.BitBtn1Click(Sender: TObject);
var StrLiga: string;
begin
  StrLiga := 'WHERE ';
  FDQuery1.Close;
  with FDQuery1.sql do
    begin
      clear;
      add('SELECT * from Funcionario ');
      if EdtCod1.Text <> '' then
        try
          StrToInt(EdtCod1.Text);
          Add(StrLiga + 'ID >= ' + EdtCod1.Text);
          StrLiga := ' AND ';
        except
          on EconvertError do;
        end;
      if EdtCod2.Text <> '' then
        try
          StrToInt(EdtCod1.Text);
          Add(StrLiga + 'ID <= ' + EdtCod2.Text);
          StrLiga := ' AND ';
        except
          on EconvertError do;
        end;
      if ComboBox1.ItemIndex <> 0 then
        Add(StrLiga + ' situacao ='''+Combobox1.Text+'''');
      case RadioGroup1.ItemIndex of
        0: Add(' ORDER BY ID');
        1: Add(' ORDER BY Nome');
        2: Add(' ORDER BY dt_admissao');
      end;

    end;

  inherited;
end;

procedure TfrmRelFuncionarios.BitBtn2Click(Sender: TObject);
begin
  inherited;

  {
  FDQuery1.Close;
  FDQuery2.Close;

  with FDQuery1.SQL do
  begin
    Clear;
    Add('SELECT Atendimento.*, Paciente.PAC_NOME, '+
        'Funcionario.FUN_NOME '+
        'FROM Atendimento INNER JOIN Paciente '+
        'ON Atendimento.AT_ID_PACIENTE = Paciente.ID INNER JOIN '+
        'Funcionario '+
        'ON Atendimento.AT_ID_MEDICO = Funcionario.ID');

        if Edit1.Text <> '' then
        try
          StrToInt(Edit1.Text);
          Add('WHERE Atendimento.ID = ' + Edit1.Text);
        except
          on EConvertError do ;
        end;
    end;
    FDQuery1.Open();
    FDQuery2.Open();
    frxReport1.ShowReport();
    }
end;

procedure TfrmRelFuncionarios.FormActivate(Sender: TObject);
begin
  inherited;
  ComboBox1.ItemIndex := 0;
end;

end.
