unit unitrelatCargaOuDescarga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, frxClass, frxDBSet, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFRMRELATCARGAOUDESCARGA = class(TForm)
    Edit1: TEdit;
    PnlSearch: TPanel;
    PnlTool: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    PnlUser: TPanel;
    ImageList1: TImageList;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    ADODataSet1nome: TStringField;
    ADODataSet1PLACAFK: TStringField;
    ADODataSet1TIPO: TStringField;
    ADODataSet1PRODUTO: TStringField;
    ADODataSet1HORAENTRADA: TStringField;
    ADODataSet1HORASAIDA: TStringField;
    ADODataSet1NUMLACRE: TStringField;
    ADODataSet1NUMNFE: TStringField;
    ADODataSet1PESOBALANCAENTRADA: TFloatField;
    ADODataSet1PESOBALANCASAIDA: TFloatField;
    ADODataSet1PESOLIQUIDO: TFloatField;
    ADODataSet1PESONFE: TStringField;
    ADODataSet1TRANSPORTADORA: TStringField;
    ToolBar1: TToolBar;
    Button1: TButton;
    EDIT2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    ADODataSet1DATAENTRADA: TDateTimeField;
    ADODataSet1DATASAIDA: TDateTimeField;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMRELATCARGAOUDESCARGA: TFRMRELATCARGAOUDESCARGA;

implementation

{$R *.dfm}

uses DM, COLAB, UNITCAMINHAO, unitcracha, UnitRELATFLUXO;

procedure TFRMRELATCARGAOUDESCARGA.BitBtn1Click(Sender: TObject);
var coringa:string;
begin
coringa:=' ';
  if RadioGroup1.ItemIndex=-1 then showmessage('Escolha CARGA ou DESCARGA ')
  else
  if RadioGroup1.ItemIndex=0 then//carga
  begin
  coringa:= ('where CARGAOUDESCARGA.PLACAFK= PLACA AND CODIGOCOLABFK = CODIGO and TIPO =''CARGA'' and DATAENTRADA >= '''+edit4.text+'''and DATAENTRADA <= '''+edit3.text+'''');
  ADODataSet1.Close;
  ADODataSet1.CommandText:=('SELECT CAMINHAO.TRANSPORTADORA,nome, PLACAFK,TIPO,PRODUTO, DATAENTRADA,HORAENTRADA,DATASAIDA,HORASAIDA,NUMLACRE,NUMNFE, PESOBALANCAENTRADA,PESOBALANCASAIDA,PESOLIQUIDO,PESONFE from CARGAOUDESCARGA,COLABORADOR,CAMINHAO '+coringa);


  ADODataSet1.open;
  DBGrid1.Refresh;
  end
   ELSE if RadioGroup1.ItemIndex=1 then//descarga
  begin
  coringa:= ('where CARGAOUDESCARGA.PLACAFK= PLACA AND CODIGOCOLABFK = CODIGO and TIPO =''DESCARGA'' and DATAENTRADA >= '''+edit4.text+'''and DATAENTRADA <= '''+edit3.text+'''');
  ADODataSet1.Close;
  ADODataSet1.CommandText:=('SELECT CAMINHAO.TRANSPORTADORA,nome, PLACAFK,TIPO,PRODUTO, DATAENTRADA,HORAENTRADA,DATASAIDA,HORASAIDA,NUMLACRE,NUMNFE, PESOBALANCAENTRADA,PESOBALANCASAIDA,PESOLIQUIDO,PESONFE from CARGAOUDESCARGA,COLABORADOR,CAMINHAO '+coringa);


  ADODataSet1.open;
  DBGrid1.Refresh;
  end;

end;

procedure TFRMRELATCARGAOUDESCARGA.Button1Click(Sender: TObject);
begin
 if (EDIT2.Text='HSE') OR (EDIT2.Text='hse') then
 BEGIN
  if DBGrid1.ReadOnly=TRUE  then
     BEGIN
     FRMCAMINHAO.BTN_Excluir.Enabled:=true;
     frmcolab.BTN_Excluir.Enabled:=true;
     frmcracha.BTN_Excluir.Enabled:=true;

     //FRMRELATFLUXO.SpeedButton2.Visible:=TRUE;
     SpeedButton2.Visible:=TRUE;

     DBGrid1.ReadOnly:=FALSE;
     BUTTON1.Caption:='BLOQUEAR';
     EDIT2.Clear;
     END

  ELSE if DBGrid1.ReadOnly=FALSE  then
     BEGIN
     FRMCAMINHAO.BTN_Excluir.Enabled:=false;
     frmcolab.BTN_Excluir.Enabled:=false;
     frmcracha.BTN_Excluir.Enabled:=false;
     //FRMRELATFLUXO.SpeedButton2.Visible:=FALSE;
     SpeedButton2.Visible:=FALSE;
     DBGrid1.ReadOnly:=TRUE;
     BUTTON1.Caption:='DESBLOQUEAR';
     EDIT2.Clear;
     END
  ELSE
  SHOWMESSAGE('SENHA INCORRETA PARA LIBERAR EDI��O');
 end;
end;

procedure TFRMRELATCARGAOUDESCARGA.FormActivate(Sender: TObject);
begin

//fim do bloqueio
Edit4.Text:= formatdatetime('dd/mm/yyyy',now);
Edit3.Text:= formatdatetime('dd/mm/yyyy',now);
ADODataSet1.CLOSE;
ADODataSet1.OPEN;

end;

procedure TFRMRELATCARGAOUDESCARGA.SpeedButton1Click(Sender: TObject);
begin
  frxReport1.Report;
  frxReport1.ShowReport();
end;

procedure TFRMRELATCARGAOUDESCARGA.SpeedButton2Click(Sender: TObject);
var conf: integer;
begin
Conf := Application.MessageBox('DESEJA DELETAR ESTE REGISTRO ?','DELETAR FLUXO',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
 if conf=IDYES then
 begin
 ADODataSet1.open;
 ADODataSet1.delete;
 end
 else
 showmessage(' VOCE NAO DELETOU O REGISTRO ! '+#13+'...Para deletar clique em deletar e clique em SIM');
end;

procedure TFRMRELATCARGAOUDESCARGA.ToolButton1Click(Sender: TObject);
begin
if DBGrid1.ReadOnly = true then
begin
DBGrid1.ReadOnly:=false ;
end
else
begin
DBGrid1.ReadOnly:=true;

end;
end;
end.
