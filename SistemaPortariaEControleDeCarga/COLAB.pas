unit COLAB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, frxClass, frxDBSet;

type
  Tfrmcolab = class(TForm)
    Edit1: TEdit;
    PnlSearch: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
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
    ImageList1: TImageList;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormActivate(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BTN_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcolab: Tfrmcolab;

implementation

{$R *.dfm}

uses DM, REGCOLAB;

procedure Tfrmcolab.BTN_AlterarClick(Sender: TObject);
begin
    WITH FRMREGCOLAB DO
    BEGIN
    DBCOMBOBOX1.Clear;
    DBComboBox1.Items.Add('EFETIVO');
    DBComboBox1.Items.Add('ESTAGIARIO');
    DBComboBox1.Items.Add('VISITANTE');
    DBComboBox1.Items.Add('TERCEIRO');
    DBComboBox1.Items.Add('MOTORISTA-DE-CAMINHAO');
    DBComboBox1.Items.Add('TEMPORARIO');
    DBComboBox1.Items.Add('APRENDIZ');
    END;
 FRMREGCOLAB.DBComboBox1.Text:= DMUNT.ADODSCOLAB.FieldByName('CARGO').VALUE ;

 DMUNT.ADODSCOLAB.EDIT;
 FRMREGCOLAB.BTN_Exit.Enabled:=FALSE;
 FRMREGCOLAB.BTN_Cancel.Enabled:=TRUE;
 FRMREGCOLAB.BTN_SAVE.Enabled:=TRUE;
 FRMREGCOLAB.PnlReg.Enabled:=TRUE;
 FRMregCOLAB.showmodal;
end;

procedure Tfrmcolab.BTN_ExcluirClick(Sender: TObject);
var conf: integer;
begin
Conf := Application.MessageBox('DESEJA DELETAR ESTE REGISTRO ?','DELETAR PESSOA',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
 if conf=IDYES then
 begin
 DMUNT.ADODSCOLAB.open;
 DMUNT.ADODSCOLAB.delete;
 end
 else
 showmessage(' VOCE NAO DELETOU O REGISTRO ! '+#13+'...Para deletar clique em deletar e clique em SIM');
end;

procedure Tfrmcolab.BTN_ImprimirClick(Sender: TObject);
begin
frxReport1.Report;
frxReport1.ShowReport();
end;

procedure Tfrmcolab.BTN_InserirClick(Sender: TObject);
begin
    WITH FRMREGCOLAB DO
    BEGIN
    DBComboBox1.Items.Clear;
    DBComboBox1.Items.Add('EFETIVO');
    DBComboBox1.Items.Add('ESTAGIARIO');
    DBComboBox1.Items.Add('VISITANTE');
    DBComboBox1.Items.Add('TERCEIRO');
    DBComboBox1.Items.Add('MOTORISTA-DE-CAMINHAO');
    DBComboBox1.Items.Add('TEMPORARIO');
    DBComboBox1.Items.Add('APRENDIZ');
    END;

 DMUNT.ADODSCOLAB.Insert;
 FRMREGCOLAB.BTN_Exit.Enabled:=FALSE;
 FRMREGCOLAB.BTN_Cancel.Enabled:=TRUE;
 FRMREGCOLAB.BTN_SAVE.Enabled:=TRUE;
 FRMREGCOLAB.PnlReg.Enabled:=TRUE;
 FRMregCOLAB.showmodal;
end;

procedure Tfrmcolab.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcolab.Edit2Change(Sender: TObject);
begin
DMUNT.ADODSCOLAB.close;
DMUNT.ADODSCOLAB.Active:=FALSE;
DMUNT.ADODSCOLAB.CommandText:=('select * from COLABORADOR where colaborador.nome like '+'''%'+edit2.Text+'%'+''''+'');
DMUNT.ADODSCOLAB.open;
DMUNT.ADODSCOLAB.Active:=true;
end;

procedure Tfrmcolab.FormActivate(Sender: TObject);
begin
 DMUNT.ADODSCOLAB.Active:=FALSE;
 DMUNT.ADODSCOLAB.Close;
 DMUNT.ADODSCOLAB.CommandText:='select * from COLABORADOR ';
 DMUNT.ADODSCOLAB.open;
 DMUNT.ADODSCOLAB.Active:=true;

end;

procedure Tfrmcolab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BTN_Sair.Click;
end;

end.
