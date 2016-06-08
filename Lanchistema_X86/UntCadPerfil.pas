unit UntCadPerfil;

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
  TfrmCadPerfil = class(TFrmPadrao1)
    FDTabelaID: TFDAutoIncField;
    FDTabelaDescricao: TStringField;
    FDTabelaData_inc: TSQLTimeStampField;
    FDTabelaData_alt: TSQLTimeStampField;
    FDTabelaStatus: TStringField;
    FDTabelaOcultar: TStringField;
    FDTabelaUsuario: TStringField;
    FDTabelaUsuario_I: TStringField;
    FDTabelaUsuario_A: TStringField;
    FDTabelaUsuario_E: TStringField;
    FDTabelaCategoria: TStringField;
    FDTabelaCategoria_I: TStringField;
    FDTabelaCategoria_A: TStringField;
    FDTabelaCategoria_E: TStringField;
    FDTabelaEntrada: TStringField;
    FDTabelaEntrada_I: TStringField;
    FDTabelaEntrada_A: TStringField;
    FDTabelaEntrada_E: TStringField;
    FDTabelaEstoque: TStringField;
    FDTabelaEstoque_I: TStringField;
    FDTabelaEstoque_A: TStringField;
    FDTabelaEstoque_E: TStringField;
    FDTabelaFuncionario: TStringField;
    FDTabelaFuncionario_I: TStringField;
    FDTabelaFuncionario_A: TStringField;
    FDTabelaFuncionario_E: TStringField;
    FDTabelaPedido: TStringField;
    FDTabelaPedido_I: TStringField;
    FDTabelaPedido_A: TStringField;
    FDTabelaPedido_E: TStringField;
    FDTabelaProduto: TStringField;
    FDTabelaProduto_I: TStringField;
    FDTabelaProduto_A: TStringField;
    FDTabelaProduto_E: TStringField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPerfil: TfrmCadPerfil;

implementation

{$R *.dfm}

uses UntMenuPrincipal;

procedure TfrmCadPerfil.FormActivate(Sender: TObject);
begin
  inherited;
  FDTabela.TableName:= 'Perfil';

  //Executar:= exibeBotoes;
  inherited;
  FDTabela.Open();
  //executar:= habilitaBotoes;
end;

end.
