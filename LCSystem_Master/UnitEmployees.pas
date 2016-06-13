unit UnitEmployees;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls;

type
  TFrmEmployees = class(TForm)
    PnlUser: TPanel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Inserir: TToolButton;
    BTN_Alterar: TToolButton;
    BTN_Excluir: TToolButton;
    ToolButton4: TToolButton;
    BTN_Imprimir: TToolButton;
    ToolButton6: TToolButton;
    BTN_Sair: TToolButton;
    ImageList1: TImageList;
    PnlSearch: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    procedure Edit2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmployees: TFrmEmployees;

implementation

{$R *.dfm}

uses UnitDM, UnitREGEmployees;

procedure TFrmEmployees.BTN_AlterarClick(Sender: TObject);
begin
 DM.ADODSEmployees.edit;
 FrmRegEmployees.BTN_Save.Enabled := True;
  FrmRegEmployees.BTN_Cancel.Enabled := True;
  FrmRegEmployees.BTN_Exit.Enabled := false;
  FrmRegEmployees.PnlReg.Enabled := True;
  FrmRegEmployees.ShowModal;
end;

procedure TFrmEmployees.BTN_ExcluirClick(Sender: TObject);
  var confdelete: integer;

begin
   confdelete := Application.MessageBox('Confirma a exclusão deste registro?','Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
   if (confdelete = IDYES) then
      begin
        DM.ADODSEmployees.Delete;
        application.MessageBox('Registro excluído!','Informação',MB_OK+MB_ICONINFORMATION);
    end
    else
      begin
        application.MessageBox('Exclusão Cancelada','Informação',MB_OK+MB_ICONINFORMATION);
      end;
end;


procedure TFrmEmployees.BTN_InserirClick(Sender: TObject);
begin
  DM.ADODSEmployees.Insert;
  FrmRegEmployees.BTN_Save.Enabled := True;
  FrmRegEmployees.BTN_Cancel.Enabled := True;
  FrmRegEmployees.BTN_Exit.Enabled := false;
  FrmRegEmployees.PnlReg.Enabled := True;
  FrmRegEmployees.ShowModal;
end;

procedure TFrmEmployees.BTN_SairClick(Sender: TObject);
begin
  FrmEmployees.close;
end;

procedure TFrmEmployees.Edit2Change(Sender: TObject);
begin
//erro-> DM.ADODSEmployees.Locate('name',Edit2.Text,[loCaseInsensitive,loPartialKey]);
 DM.ADODSEmployees.Active:=true;
DM.ADODSEmployees.Close;
DM.ADODSEmployees.CommandText:=('Select * from Employees '+
' where name like '+'''%'+edit2.text+'%'+''''+'');
DM.ADODSEmployees.Open;
end;

procedure TFrmEmployees.FormActivate(Sender: TObject);
begin
  DM.ADODSEmployees.Close;
  DM.ADODSEmployees.CommandText := '';
  DM.ADODSEmployees.CommandText := 'Select * from employees order by name';
  DM.ADODSEmployees.Open;
end;

end.
