unit UnitUsers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.ToolWin,
  Vcl.ExtCtrls;

type
  TFrmUsers = class(TForm)
    PnlUser: TPanel;
    PnlSearch: TPanel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    BTN_Inserir: TToolButton;
    BTN_Alterar: TToolButton;
    BTN_Excluir: TToolButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    ToolButton4: TToolButton;
    BTN_Imprimir: TToolButton;
    ToolButton6: TToolButton;
    BTN_Sair: TToolButton;
    procedure Edit1Change(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsers: TFrmUsers;

implementation

{$R *.dfm}

uses UnitDM, UnitRegUsers;

{ Form de visualização e consulta dos registros de usuários do sistema
}

procedure TFrmUsers.Edit1Change(Sender: TObject);
begin
  DM.ADODSUsers.Locate('ID',Edit1.Text,[loCaseInsensitive,loPartialKey]);
  {Localiza no ado data set users, no campo ID, os caracteres que o usuário digitou no
  edit1.text, despresando a diferença entre maiusculas e minisculas e pesquisando registro
  parcialmente}
end;



procedure TFrmUsers.FormActivate(Sender: TObject);
var count: integer;
begin
  {Quando o form for ativada, o Ado Data Set será fechadom limpado, atribuido
  o Comando SQL desejado para a seleção e então será reaberto o Ado Data Set}
  DM.ADODSUsers.Close;
  DM.ADODSUsers.CommandText := '';
  DM.ADODSUsers.CommandText := 'Select * from users order by ID';
  DM.ADODSUsers.Open;
end;

procedure TFrmUsers.BTN_AlterarClick(Sender: TObject);
begin
  DM.ADODSUsers.Edit;
  //Requisita uma edição(update) no registro selecionado no grid
  FrmRegUsers.BTN_Save.Enabled := True;
  FrmRegUsers.BTN_Cancel.Enabled := True;
  FrmRegUsers.BTN_Exit.Enabled := false;
  FrmRegUsers.PnlReg.Enabled := True;
  FrmRegUsers.ShowModal;
  //Desativa e ativa os botões e formulários
end;

procedure TFrmUsers.BTN_ExcluirClick(Sender: TObject);
  var confdelete: integer;
begin
  confdelete := Application.Messagebox('Confirma Exclusão deste registro?','Atenção',
  MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
  { var confdelete(confirma Exclusão) está recebendo um application messagebox. Onde o usuário
  irá informar com um YES or NO se deseja excluir aquele registro. O valor recebido pela variavel
  Sera o ID (um valor integer) da resposta. }
  if (confdelete = IDYes) then
    begin
      DM.ADODSUsers.delete;
      Application.Messagebox('Registro deleteado com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    end
  else
    begin
      Application.Messagebox('A exclusão do registro foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);

    end;

end;

procedure TFrmUsers.BTN_InserirClick(Sender: TObject);
begin
  {Prepara para inserção o ADODSUSERS e habilita e desabilita os botões e paineis. Além de
  chamar o form responsável pelo registro}
  DM.ADODSUsers.Insert;
  FrmRegUsers.BTN_Save.Enabled := True;
  FrmRegUsers.BTN_Cancel.Enabled := True;
  FrmRegUsers.BTN_Exit.Enabled := false;
  FrmRegUsers.PnlReg.Enabled := True;
  FrmRegUsers.ShowModal;
end;

procedure TFrmUsers.BTN_SairClick(Sender: TObject);
begin
  close;
end;

end.
