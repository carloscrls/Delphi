unit unitcracha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB;

type
  Tfrmcracha = class(TForm)
    Edit1: TEdit;
    PnlSearch: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Inserir: TToolButton;
    BTN_Alterar: TToolButton;
    BTN_Excluir: TToolButton;
    ToolButton4: TToolButton;
    BTN_Imprimir: TToolButton;
    ToolButton6: TToolButton;
    BTN_Sair: TToolButton;
    PnlUser: TPanel;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ADOQuery1: TADOQuery;
    ADOQuery1NCRACHA: TStringField;
    ADOQuery1DISPONIBILIDADE: TWideStringField;
    ADOQuery1CODCOLABCRACHA: TIntegerField;
    ADOQuery1nome: TStringField;
    DataSource1: TDataSource;
    procedure Edit2Change(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_ImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcracha: Tfrmcracha;

implementation

{$R *.dfm}

uses DM, UnitREGCRACHA;

procedure Tfrmcracha.BTN_AlterarClick(Sender: TObject);
begin
DMUNT.adodscracha.edit;
 frmregcracha.BTN_Exit.Enabled:=FALSE;
 frmregcracha.BTN_Cancel.Enabled:=TRUE;
 frmregcracha.BTN_SAVE.Enabled:=TRUE;
  frmregcracha.PnlReg.Enabled:=TRUE;
frmregcracha.ShowModal;
end;

procedure Tfrmcracha.BTN_ExcluirClick(Sender: TObject);
var conf: integer;
begin
Conf := Application.MessageBox('DESEJA DELETAR ESTE REGISTRO ?','DELETAR CRACHA',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
 if conf=IDYES then
 begin
 DMUNT.adodscracha.open;
 DMUNT.adodscracha.delete;
 end
 else
 showmessage(' VOCE NAO DELETOU O CRACHA ! '+#13+'...Para deletar clique em deletar e clique em SIM');
end;

procedure Tfrmcracha.BTN_ImprimirClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure Tfrmcracha.BTN_InserirClick(Sender: TObject);
begin
DMUNT.adodscracha.Insert;
 frmregcracha.BTN_Exit.Enabled:=FALSE;
 frmregcracha.BTN_Cancel.Enabled:=TRUE;
 frmregcracha.BTN_SAVE.Enabled:=TRUE;
  frmregcracha.PnlReg.Enabled:=TRUE;
frmregcracha.ShowModal;
end;

procedure Tfrmcracha.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcracha.Edit2Change(Sender: TObject);
begin
DMUNT.adodscracha.close;
DMUNT.adodscracha.CommandText:=('select * from cracha where ncracha  like '+'''%'+edit2.Text+'%'+''''+'');
DMUNT.adodscracha.open;
end;

procedure Tfrmcracha.FormActivate(Sender: TObject);
begin
DMUNT.adodscracha.close;
DMUNT.adodscracha.open;
DMUNT.adodscracha.refresh;

adoquery1.close;
adoquery1.open;
adoquery1.refresh;
end;

procedure Tfrmcracha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BTN_Sair.Click;
end;

end.
