unit UNITEMPRESAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRMEMPRESAS = class(TForm)
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
    ToolButton6: TToolButton;
    BTN_Sair: TToolButton;
    PnlUser: TPanel;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    procedure Edit2Change(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMEMPRESAS: TFRMEMPRESAS;

implementation

{$R *.dfm}

uses DM, UNITREGEMPRESAS;

procedure TFRMEMPRESAS.BTN_AlterarClick(Sender: TObject);
begin
 DMUNT.ADODSEMPRESA.EDIT;
 FRMREGEMPRESAS.BTN_Exit.Enabled:=FALSE;
 FRMREGEMPRESAS.BTN_Cancel.Enabled:=TRUE;
 FRMREGEMPRESAS.BTN_SAVE.Enabled:=TRUE;
 FRMREGEMPRESAS.PnlReg.Enabled:=TRUE;
 FRMREGEMPRESAS.showmodal;
end;

procedure TFRMEMPRESAS.BTN_ExcluirClick(Sender: TObject);
var conf: integer;
begin
Conf := Application.MessageBox('DESEJA DELETAR ESTE REGISTRO ?','DELETAR EMPRESA',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
 if conf=IDYES then
 begin
 DMUNT.ADODSEMPRESA.open;
 DMUNT.ADODSEMPRESA.delete;
 end
 else
 showmessage(' VOCE NAO DELETOU O REGISTRO ! '+#13+'...Para deletar clique em deletar e clique em SIM');
end;

procedure TFRMEMPRESAS.BTN_InserirClick(Sender: TObject);
begin
 DMUNT.ADODSEMPRESA.Insert;
 FRMREGEMPRESAS.BTN_Exit.Enabled:=FALSE;
 FRMREGEMPRESAS.BTN_Cancel.Enabled:=TRUE;
 FRMREGEMPRESAS.BTN_SAVE.Enabled:=TRUE;
 FRMREGEMPRESAS.PnlReg.Enabled:=TRUE;
 FRMREGEMPRESAS.showmodal;
end;

procedure TFRMEMPRESAS.BTN_SairClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFRMEMPRESAS.Edit2Change(Sender: TObject);
begin
DMUNT.ADODSEMPRESA.close;
DMUNT.ADODSEMPRESA.CommandText:=('select * from EMPRESA where EMPRESA.nome_EMPRESA like '+'''%'+edit2.Text+'%'+''''+'');
DMUNT.ADODSEMPRESA.open;
end;

procedure TFRMEMPRESAS.FormActivate(Sender: TObject);
begin
 DMUNT.ADODSEMPRESA.Close;
 DMUNT.ADODSEMPRESA.CommandText:='select * from EMPRESA ';
 DMUNT.ADODSEMPRESA.Active:=true;
 DMUNT.ADODSEMPRESA.open;
end;

end.
