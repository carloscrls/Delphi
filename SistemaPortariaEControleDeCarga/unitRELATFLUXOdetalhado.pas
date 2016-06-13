unit unitRELATFLUXOdetalhado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, frxClass, frxDBSet;

type
  TFRMRELATFLUXODETALHADO = class(TForm)
    Edit1: TEdit;
    PnlSearch: TPanel;
    DBGrid1: TDBGrid;
    PnlTool: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    PnlUser: TPanel;
    ImageList1: TImageList;
    ADOQueryFLUXO: TADOQuery;
    DataSourceFLUXO: TDataSource;
    ADOQueryFLUXOCOD_COLAB: TIntegerField;
    ADOQueryFLUXODATAFLUXO: TStringField;
    ADOQueryFLUXOHORAFLUXO: TStringField;
    ADOQueryFLUXOSAIDAouENTRADA: TStringField;
    ADOQueryFLUXOFKNCRACHA: TStringField;
    ADOQueryFLUXOnome: TStringField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    ADODataSet1: TADODataSet;
    Edit3: TEdit;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMRELATFLUXODETALHADO: TFRMRELATFLUXODETALHADO;

implementation

{$R *.dfm}

uses DM;

procedure TFRMRELATFLUXODETALHADO.BitBtn1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then //entrada
  begin
      if Edit2.Text='' then
    BEGIN
    adoqueryfluxo.Close;
    ADOQueryFLUXO.sql.Clear;
    ADOQueryFLUXO.sql.add('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND SAIDAouENTRADA=''ENTRADA''AND DATAFLUXO >= '''+EDIT4.TEXT+'''AND DATAFLUXO <= '''+EDIT3.TEXT+''' order by nome ');
    ADOQueryFLUXO.open;
    DBGrid1.Refresh;
    END
    ELSE
    BEGIN
    adoqueryfluxo.Close;
    ADOQueryFLUXO.sql.Clear;
    ADOQueryFLUXO.sql.add('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND SAIDAouENTRADA=''ENTRADA''AND DATAFLUXO >= '''+EDIT4.TEXT+'''AND DATAFLUXO <= '''+EDIT3.TEXT+''' AND COLABORADOR.NOME like '+'''%'+edit2.Text+'%'+''''+' order by nome ');
    ADOQueryFLUXO.open;
    DBGrid1.Refresh;

    END;
  end ELSE

  if RadioGroup1.ItemIndex=1 then //saida
  begin
    if Edit2.Text='' then
    BEGIN
    adoqueryfluxo.Close;
    ADOQueryFLUXO.sql.Clear;
    ADOQueryFLUXO.sql.add('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND SAIDAouENTRADA=''SAIDA''AND DATAFLUXO >= '''+EDIT4.TEXT+'''AND DATAFLUXO <= '''+EDIT3.TEXT+''' order by nome ');
    ADOQueryFLUXO.open;
    DBGrid1.Refresh;
    END
    ELSE
    BEGIN
    adoqueryfluxo.Close;
    ADOQueryFLUXO.sql.Clear;
    ADOQueryFLUXO.sql.add('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND SAIDAouENTRADA=''SAIDA''AND DATAFLUXO >= '''+EDIT4.TEXT+'''AND DATAFLUXO <= '''+EDIT3.TEXT+''' AND COLABORADOR.NOME like '+'''%'+edit2.Text+'%'+''''+' order by nome ');
    ADOQueryFLUXO.open;
    DBGrid1.Refresh;

    END;
    END;

     if RadioGroup1.ItemIndex=2 then //TODOS
    begin
      if Edit2.Text='' then
      BEGIN
      adoqueryfluxo.Close;
      ADOQueryFLUXO.sql.Clear;
      ADOQueryFLUXO.sql.add('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND DATAFLUXO >= '''+EDIT4.TEXT+'''AND DATAFLUXO <= '''+EDIT3.TEXT+''' order by nome ');
      ADOQueryFLUXO.open;
      DBGrid1.Refresh;
      END
      ELSE
      BEGIN
      adoqueryfluxo.Close;
      ADOQueryFLUXO.sql.Clear;
      ADOQueryFLUXO.sql.add('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND DATAFLUXO >= '''+EDIT4.TEXT+''' AND DATAFLUXO <= '''+EDIT3.TEXT+''' AND COLABORADOR.NOME like '+'''%'+edit2.Text+'%'+''''+' order by nome ');
      ADOQueryFLUXO.open;
      DBGrid1.Refresh;

      END;
    end;
  end;



procedure TFRMRELATFLUXODETALHADO.Edit2Change(Sender: TObject);
begin
ADOQUERYFLUXO.close;
ADOQUERYFLUXO.SQL.Clear;
ADOQUERYFLUXO.SQL.ADD('SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND COLABORADOR.NOME like '+'''%'+edit2.Text+'%'+''''+'');
ADOQUERYFLUXO.open;
ADOQUERYFLUXO.EXECSQL;
//SELECT colaborador.nome,fluxo.* FROM FLUXO,colaborador where  fluxo.cod_colab = colaborador.codigo AND COLABORADOR.NOME

end;

procedure TFRMRELATFLUXODETALHADO.FormActivate(Sender: TObject);
begin
Edit4.Text:= formatdatetime('dd/mm/yyyy',now);
Edit3.Text:= formatdatetime('dd/mm/yyyy',now);
end;

procedure TFRMRELATFLUXODETALHADO.SpeedButton1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TFRMRELATFLUXODETALHADO.SpeedButton2Click(Sender: TObject);
var conf: integer;
begin
Conf := Application.MessageBox('DESEJA DELETAR ESTE REGISTRO ?','DELETAR FLUXO DETALHADO',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
 if conf=IDYES then
 begin
 ADODataSet1.open;
 ADODataSet1.delete;
 ADOQueryFLUXO.Refresh;
 DBGrid1.Refresh;
 ADODataSet1.Refresh;
 ADODataSet1.CLOSE;
 ADODataSet1.OPEN;

 end
 else
 showmessage(' VOCE NAO DELETOU O REGISTRO ! '+#13+'...Para deletar clique em deletar e clique em SIM');
end;


end.
