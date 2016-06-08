unit UntCadEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadrao1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask;

type
  TfrmCadEstoque = class(TFrmPadrao1)
    FDTabelaID: TFDAutoIncField;
    FDTabelaNome: TStringField;
    FDTabelaQtde_real: TSingleField;
    FDTabelaValidade: TSQLTimeStampField;
    FDTabelaPr_custo: TSingleField;
    FDTabelaPr_venda: TSingleField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_Alt: TSQLTimeStampField;
    FDTabelaStatus: TStringField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    FDTabelaUnidade: TStringField;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    FDQryCategorias: TFDQuery;
    DSCategorias: TDataSource;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEstoque: TfrmCadEstoque;

implementation

{$R *.dfm}

uses UntDM, UntMenuPrincipal;

procedure TfrmCadEstoque.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Estoque';

    //Captura o Modo de edição do usuário
    modoEdicao:=
      FrmMenuPrincipal.QueryLogin.FieldByName('Estoque_I').AsString +
      FrmMenuPrincipal.QueryLogin.FieldByName('Estoque_A').AsString +
      FrmMenuPrincipal.QueryLogin.FieldByName('Estoque_E').AsString;

    Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  FDQryCategorias.Open();
  executar:= habilitaBotoes;
end;

end.
