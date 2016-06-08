unit UntCadPaciente;

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
  TFrmCadPaciente = class(TFrmPadrao1)
    DSPerfil: TDataSource;
    FDQryPerfil: TFDQuery;
    FDTabelaID: TFDAutoIncField;
    FDTabelaDATA_INC: TSQLTimeStampField;
    FDTabelaDATA_ALT: TSQLTimeStampField;
    FDTabelaSTATUS: TStringField;
    FDTabelaPAC_NOME: TStringField;
    FDTabelaPAC_ENDERECO: TStringField;
    FDTabelaPAC_BAIRRO: TStringField;
    FDTabelaPAC_CIDADE: TStringField;
    FDTabelaPAC_CEP: TStringField;
    FDTabelaPAC_TELEFONE: TStringField;
    FDTabelaPAC_CELULAR1: TStringField;
    FDTabelaPAC_CELULAR2: TStringField;
    FDTabelaPAC_CELULAR3: TStringField;
    FDTabelaPAC_EMAIL: TStringField;
    FDTabelaPAC_DATA_NASC: TSQLTimeStampField;
    FDTabelaPAC_OBSERVACAO: TMemoField;
    FDTabelaPAC_CPF: TStringField;
    FDTabelaPAC_RG: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPaciente: TFrmCadPaciente;

implementation

{$R *.dfm}

uses UntDM, UntMenuPrincipal;

procedure TFrmCadPaciente.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Paciente';
  tipoID:= 0;

  //Captura o Modo de edição do usuário
  modoEdicao:=
    FrmMenuPrincipal.QueryLogin.FieldByName('PER_PACIENTE_I').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('PER_PACIENTE_A').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('PER_PACIENTE_E').AsString;

  Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  Executar:= habilitaBotoes;
  FDQryPerfil.Close;
  FDQryPerfil.SQL.Clear;
  FDQryPerfil.SQL.Add('select ID, '+
      'PER_DESCRICAO from PERFIL '+
      'where STATUS = '+#39+'S'+#39 +
      'order by PER_DESCRICAO ');
  FDQryPerfil.Open();
end;

end.
