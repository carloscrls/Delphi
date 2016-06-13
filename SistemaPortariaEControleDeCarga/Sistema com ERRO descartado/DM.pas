unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TDMUNT = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODSCOLAB: TADODataSet;
    ADODSFLUXO: TADODataSet;
    DSCOLAB: TDataSource;
    DSFLUXO: TDataSource;
    ADODSCOLABCODIGO: TAutoIncField;
    ADODSCOLABNOME: TStringField;
    ADODSCOLABCPF: TStringField;
    ADODSCOLABRG: TStringField;
    ADODSCOLABCNH: TStringField;
    ADODSCOLABDATAVALIDCNH: TStringField;
    ADODSCOLABSIT: TStringField;
    ADODSFLUXOCOD_COLAB: TIntegerField;
    ADODSFLUXODATAFLUXO: TStringField;
    ADODSFLUXOHORAFLUXO: TStringField;
    ADODSFLUXOSAIDAouENTRADA: TStringField;
    ADODSCOLABNOMEPRESTADORA: TStringField;
    ADODSCOLABCONTATOINTERNO: TMemoField;
    ADODSCOLABRESPONSAVELPORTARIA: TStringField;
    ADODSCOLABSITDATE: TStringField;
    ADODSCOLABSITTIME: TStringField;
    ADODSCOLABRAMAL: TStringField;
    ADODSCARGADESCARGA: TADODataSet;
    ADODSCAMINHAO: TADODataSet;
    DSCARGADESCARGA: TDataSource;
    DSCAMINHAO: TDataSource;
    ADODSCARGADESCARGACODCARGAOUDESCARGA: TAutoIncField;
    ADODSCARGADESCARGAPLACAFK: TStringField;
    ADODSCARGADESCARGACODIGOCOLABFK: TIntegerField;
    ADODSCARGADESCARGADATAENTRADA: TStringField;
    ADODSCARGADESCARGAHORAENTRADA: TStringField;
    ADODSCARGADESCARGADATASAIDA: TStringField;
    ADODSCARGADESCARGAHORASAIDA: TStringField;
    ADODSCARGADESCARGATIPO: TStringField;
    ADODSCARGADESCARGANUMNFE: TStringField;
    ADODSCARGADESCARGANUMLACRE: TStringField;
    ADODSCARGADESCARGAPESONFE: TStringField;
    ADODSCARGADESCARGAPESOBALANCAENTRADA: TFloatField;
    ADODSCARGADESCARGAPESOBALANCASAIDA: TFloatField;
    ADODSCARGADESCARGAPRODUTO: TStringField;
    ADODSCOLABCARGO: TStringField;
    ADODSCAMINHAOPLACA: TStringField;
    ADODSCAMINHAOMODELO: TStringField;
    ADODSCAMINHAOSIT: TStringField;
    ADODSCARGADESCARGAPESOLIQUIDO: TFloatField;
    ADODSCAMINHAOTRANSPORTADORA: TStringField;
    updpessoa: TDataSource;
    updmotorista: TDataSource;
    updcaminhao: TDataSource;
    ADODSUPDCAMINHAO: TADODataSet;
    IntegerField2: TIntegerField;
    ADODSUPMOTORISTA: TADODataSet;
    IntegerField1: TIntegerField;
    ADODSUPDpessoa: TADODataSet;
    ADODSUPDpessoaCOLUMN1: TIntegerField;
    adodscracha: TADODataSet;
    adodscrachaNCRACHA: TStringField;
    adodscrachaDISPONIBILIDADE: TWideStringField;
    adodscrachaCODCOLABCRACHA: TIntegerField;
    DSCRACHA: TDataSource;
    ADODSFLUXOFKNCRACHA: TStringField;
    ADODSCARGADESCARGAcolabnome: TStringField;
    ADODSCARGADESCARGAtransportadora: TStringField;
    ADODSCONTROLEDEINTEGRACAO: TADODataSet;
    ADODSINSTRUTOR: TADODataSet;
    DSCONTROLINTEGRACAO: TDataSource;
    DSINSTRUTOR: TDataSource;
    ADODSEMPRESA: TADODataSet;
    DSEMPRESA: TDataSource;
    ADODSEMPRESACOD_EMPRESA: TIntegerField;
    ADODSEMPRESANOME_EMPRESA: TStringField;
    ADODSINSTRUTORCOD_INSTRUTOR: TIntegerField;
    ADODSINSTRUTORNOME_INSTRUTOR: TStringField;
    ADODSCONTROLEDEINTEGRACAONOME_INSTRUTOR: TStringField;
    ADODSCONTROLEDEINTEGRACAONOME_EMPRESA: TStringField;
    ADODSCONTROLEDEINTEGRACAONOME_COLABORADOR: TStringField;
    ADODSCONTROLEDEINTEGRACAOordem: TAutoIncField;
    ADODSCONTROLEDEINTEGRACAODATAINTEGRA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAODATAINTEGRA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAODATAINTEGRA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOFK_INSTRUTOR_COD: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOFK_COD_EMPRESA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOFK_COLAB_CODCOLAB: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOASO_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOASO_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOASO_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOVALIDADE_ASO_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOVALIDADE_ASO_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOVALIDADE_ASO_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC1: TStringField;
    ADODSCONTROLEDEINTEGRACAONR_OPC2: TStringField;
    ADODSCONTROLEDEINTEGRACAONR_OPC3: TStringField;
    ADODSCONTROLEDEINTEGRACAONR_OPC4: TStringField;
    ADODSCONTROLEDEINTEGRACAONR_OPC5: TStringField;
    ADODSCONTROLEDEINTEGRACAONR_OPC6: TStringField;
    ADODSCONTROLEDEINTEGRACAONR_OPC1_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC2_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC3_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC4_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC5_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC6_DATA_DIA: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC1_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC2_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC3_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC4_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC5_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC6_DATA_MES: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC1_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC2_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC3_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC4_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC5_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAONR_OPC6_DATA_ANO: TIntegerField;
    ADODSCONTROLEDEINTEGRACAOOBS: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUNT: TDMUNT;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PRINCIPAL;

{$R *.dfm}

end.