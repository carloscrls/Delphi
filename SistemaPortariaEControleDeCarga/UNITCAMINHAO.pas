unit UNITCAMINHAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRMCAMINHAO = class(TForm)
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
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormActivate(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure BTN_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCAMINHAO: TFRMCAMINHAO;

implementation

{$R *.dfm}

uses DM, UNITREGCAMINHAO;

procedure TFRMCAMINHAO.BTN_AlterarClick(Sender: TObject);
begin
 DMUNT.ADODSCAMINHAO.EDIT;
 FRMREGCAMINHAO.BTN_Exit.Enabled:=FALSE;
 FRMREGCAMINHAO.BTN_Cancel.Enabled:=TRUE;
 FRMREGCAMINHAO.BTN_SAVE.Enabled:=TRUE;
 FRMREGCAMINHAO.PnlReg.Enabled:=TRUE;
 FRMREGCAMINHAO.showmodal;
end;

procedure TFRMCAMINHAO.BTN_ExcluirClick(Sender: TObject);
var conf: integer;
begin
Conf := Application.MessageBox('DESEJA DELETAR ESTE REGISTRO ?','DELETAR CAMINHAO',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
 if conf=IDYES then
 begin
 DMUNT.ADODSCAMINHAO.open;
 DMUNT.ADODSCAMINHAO.delete;
 end
 else
 showmessage(' VOCE NAO DELETOU O REGISTRO ! '+#13+'...Para deletar clique em deletar e clique em SIM');
end;

procedure TFRMCAMINHAO.BTN_ImprimirClick(Sender: TObject);
begin
frxReport1.Report;
frxReport1.ShowReport();
end;

procedure TFRMCAMINHAO.BTN_InserirClick(Sender: TObject);
begin
 DMUNT.ADODSCAMINHAO.Insert;
 FRMREGCAMINHAO.BTN_Exit.Enabled:=FALSE;
 FRMREGCAMINHAO.BTN_Cancel.Enabled:=TRUE;
 FRMREGCAMINHAO.BTN_SAVE.Enabled:=TRUE;
 FRMREGCAMINHAO.PnlReg.Enabled:=TRUE;
 FRMREGCAMINHAO.showmodal;
end;

procedure TFRMCAMINHAO.BTN_SairClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFRMCAMINHAO.Edit2Change(Sender: TObject);
begin
DMUNT.ADODSCAMINHAO.close;
DMUNT.ADODSCAMINHAO.CommandText:=('select * from CAMINHAO where CAMINHAO.PLACA like '+'''%'+edit2.Text+'%'+''''+'');
DMUNT.ADODSCAMINHAO.open;
end;

procedure TFRMCAMINHAO.FormActivate(Sender: TObject);
begin
 DMUNT.ADODSCAMINHAO.Close;
 DMUNT.ADODSCAMINHAO.CommandText:='select * from CAMINHAO ';
 DMUNT.ADODSCAMINHAO.Active:=true;
 DMUNT.ADODSCAMINHAO.open;
end;

procedure TFRMCAMINHAO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BTN_Sair.Click;
end;

end.
