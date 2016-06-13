unit UnitRELATFLUXO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Buttons, frxClass, frxDBSet;

type
  TFRMRELATFLUXO = class(TForm)
    Edit1: TEdit;
    PnlSearch: TPanel;
    DBGrid1: TDBGrid;
    PnlTool: TPanel;
    PnlUser: TPanel;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    Edit4: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    ADODataSet1: TADODataSet;
    RadioGroup1: TRadioGroup;
    frxDBDataset1: TfrxDBDataset;
    SpeedButton1: TSpeedButton;
    frxReport1: TfrxReport;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMRELATFLUXO: TFRMRELATFLUXO;

implementation

{$R *.dfm}

uses DM;

procedure TFRMRELATFLUXO.BitBtn1Click(Sender: TObject);
begin

  if RadioGroup1.ItemIndex=0 then
  begin
  ADODataSet1.Close;
  ADODataSet1.CommandText:=('SELECT NOME,SIT,SITDATE,SITTIME,CARGO FROM COLABORADOR WHERE CARGO<>''MOTORISTA-DE-CAMINHAO'' AND SIT=''ENTRADA''AND SITDATE = '''+EDIT4.TEXT+''' order by nome ');
  ADODataSet1.open;
  DBGrid1.Refresh;
  end
   ELSE if RadioGroup1.ItemIndex=1 then
  begin
  ADODataSet1.Close;
   ADODataSet1.CommandText:=('SELECT NOME,SIT,SITDATE,SITTIME,CARGO FROM COLABORADOR WHERE CARGO<>''MOTORISTA-DE-CAMINHAO'' AND SIT=''SAIDA''AND SITDATE = '''+EDIT4.TEXT+''' order by nome ');
  ADODataSet1.open;
  DBGrid1.Refresh;
  end;

BEGIN





end;
end;

procedure TFRMRELATFLUXO.FormActivate(Sender: TObject);
begin
Edit4.Text:= formatdatetime('dd/mm/yyyy',now);
end;

procedure TFRMRELATFLUXO.SpeedButton1Click(Sender: TObject);
begin
frxReport1.Report;
frxReport1.ShowReport();
end;

end.
