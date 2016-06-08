unit UntPadraoRel1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TfrmPadraoRel = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    frxReport1: TfrxReport;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadraoRel: TfrmPadraoRel;

implementation

{$R *.dfm}

uses UntDM;

procedure TfrmPadraoRel.BitBtn1Click(Sender: TObject);
begin
  FDQuery1.Open();
  frxReport1.ShowReport();
end;

procedure TfrmPadraoRel.BitBtn2Click(Sender: TObject);
begin
  FDQuery1.Close();
  Close;
end;

end.
