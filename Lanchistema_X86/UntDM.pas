unit UntDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTblControleProd: TFDTable;
    FDTblCupom: TFDTable;
    FDQryCupom: TFDQuery;
    FDTblCupomID: TFDAutoIncField;
    FDTblCupomNum: TIntegerField;
    FDTblCupomDt_inc: TSQLTimeStampField;
    FDTblCupomUsado: TStringField;
    FDTblCupomflag: TStringField;
    FDTblControleProdID: TFDAutoIncField;
    FDTblControleProdNome: TStringField;
    FDTblControleProdDescricao: TMemoField;
    FDTblControleProdPr_venda: TBCDField;
    FDTblControleProdPr_custo: TBCDField;
    FDTblControleProdData_inc: TSQLTimeStampField;
    FDTblControleProdData_alt: TSQLTimeStampField;
    FDTblControleProdQtde_real: TBCDField;
    FDTblControleProdUnidade: TStringField;
    FDTblControleProdStatus: TStringField;
    FDTblControleProdId_categoria: TIntegerField;
    FDTblControleProdComp: TStringField;
    FDTblControleProdQtde_minima: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }


end.
