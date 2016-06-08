unit UntRelEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadraoRel1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelEstoque = class(TfrmPadraoRel)
    GroupBox1: TGroupBox;
    EdtCod1: TLabeledEdit;
    EdtCod2: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstoque: TfrmRelEstoque;

implementation

{$R *.dfm}

procedure TfrmRelEstoque.BitBtn1Click(Sender: TObject);
var StrLiga, st:string;
begin
  st:= '';
  StrLiga := 'WHERE ';
  FDQuery1.Close;
  with FDQuery1.sql do
    begin
      clear;
      add('SELECT * from Estoque ');
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
      case RadioGroup2.ItemIndex of
        1: st := 'S';
        2: st := 'N';
      end;
      if st <> '' then
        try
          Add(StrLiga + 'Status = ' + QuotedStr(st));
          StrLiga := ' AND ';
        except
          on EconvertError do;
        end;
      case RadioGroup1.ItemIndex of
        0: Add(' ORDER BY ID');
        1: Add(' ORDER BY Nome');
      end;
    end;
  //ShowMessage ( FDQuery1.sql.Text);
  inherited;
end;

procedure TfrmRelEstoque.FormActivate(Sender: TObject);
begin
  inherited;
  RadioGroup1.ItemIndex := 0;
  RadioGroup2.ItemIndex := 0;
end;

end.
