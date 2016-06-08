unit UntDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnectionWeb: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDTblEstoque: TFDTable;
    FDTblEstoqueID: TFDAutoIncField;
    FDTblEstoqueDATA_INC: TSQLTimeStampField;
    FDTblEstoqueDATA_ALT: TSQLTimeStampField;
    FDTblEstoqueSTATUS: TStringField;
    FDTblEstoqueMED_NOME: TStringField;
    FDTblEstoqueMED_VALOR_CUSTO: TBCDField;
    FDTblEstoqueMED_VALOR_VENDA: TBCDField;
    FDTblEstoqueMED_QTDE_ESTOQUE: TBCDField;
    FDTblEstoqueMED_QTDE_MINIMA: TBCDField;
    FDTblEstoqueMED_ID_LABORATORIO: TIntegerField;
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

end.
