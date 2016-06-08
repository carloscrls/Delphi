unit UntCadCategoria;

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
  TfrmCadCategoria = class(TFrmPadrao1)
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    FDTabelaID: TFDAutoIncField;
    FDTabelaNome: TStringField;
    FDTabelaStatus: TStringField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_alt: TSQLTimeStampField;
    FDTabelaIngrediente: TStringField;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}

uses UntMenuPrincipal;

procedure TfrmCadCategoria.FormActivate(Sender: TObject);
begin
  FDTabela.TableName:= 'Categoria';

  //Captura o Modo de edição do usuário
  modoEdicao:=
    FrmMenuPrincipal.QueryLogin.FieldByName('Categoria_I').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Categoria_A').AsString +
    FrmMenuPrincipal.QueryLogin.FieldByName('Categoria_E').AsString;

  Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  executar:= habilitaBotoes;
end;

end.
