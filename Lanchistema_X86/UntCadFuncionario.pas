unit UntCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPadrao1, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  System.ImageList, Vcl.ImgList, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ToolWin;

type
  TfrmCadFuncionario = class(TFrmPadrao1)
    FDTabelaID: TFDAutoIncField;
    FDTabelaNome: TStringField;
    FDTabelaCPF: TStringField;
    FDTabelaRG: TStringField;
    FDTabelaEndereco: TStringField;
    FDTabelaBairro: TStringField;
    FDTabelaNum: TIntegerField;
    FDTabelaComplemento: TStringField;
    FDTabelaDt_admissao: TSQLTimeStampField;
    FDTabelaDt_demissao: TSQLTimeStampField;
    FDTabelaStatus: TStringField;
    FDTabelaTelefone: TStringField;
    FDTabelaCelular: TStringField;
    FDTabelaSituacao: TStringField;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Contato: TTabSheet;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    CEP: TLabel;
    DBComboBox1: TDBComboBox;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_alt: TSQLTimeStampField;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;

implementation

{$R *.dfm}

uses UntMenuPrincipal;

procedure TfrmCadFuncionario.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Funcionario';

    //Captura o Modo de edição do usuário
    modoEdicao:=
      FrmMenuPrincipal.QueryLogin.FieldByName('Funcionario_I').AsString +
      FrmMenuPrincipal.QueryLogin.FieldByName('Funcionario_A').AsString +
      FrmMenuPrincipal.QueryLogin.FieldByName('Funcionario_E').AsString;

    Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  executar:= habilitaBotoes;
end;

end.
