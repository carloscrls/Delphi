unit UntCadUsuario;

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
  TfrmCadUsuario = class(TFrmPadrao1)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQryPerfil: TFDQuery;
    DSPerfil: TDataSource;
    FDTabelaID: TFDAutoIncField;
    FDTabelaNome: TStringField;
    FDTabelaSenha: TStringField;
    FDTabelaStatus: TStringField;
    FDTabelaData_alt: TSQLTimeStampField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaID_Perfil: TIntegerField;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

uses UntDM, UntMenuPrincipal;

procedure TfrmCadUsuario.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Usuario';

  //Captura o Modo de edição do usuário
  modoEdicao:=
    FrmMenuPrincipal.QueryLogin.FieldByName('Usuario_I').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Usuario_A').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Usuario_E').AsString;

  Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  FDQryPerfil.Open();
  executar:= habilitaBotoes;
end;

end.
