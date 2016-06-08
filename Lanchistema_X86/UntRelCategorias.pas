unit UntRelCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelCategorias = class(TfrmPadraoRel)
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCategorias: TfrmRelCategorias;

implementation

{$R *.dfm}

procedure TfrmRelCategorias.BitBtn1Click(Sender: TObject);
var where:string;
begin
  inherited;

  if LabeledEdit1.Text <> '' then
    begin
      where := 'ID >= ' +  LabeledEdit1.Text ;
    end;
  if LabeledEdit2.Text <> '' then
    begin

    end;



  FDQuery1.Open();
  frxReport1.ShowReport();
end;

end.
