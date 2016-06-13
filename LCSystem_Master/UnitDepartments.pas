unit UnitDepartments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRMDepartments = class(TForm)
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
    procedure FormActivate(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMDepartments: TFRMDepartments;

implementation

{$R *.dfm}

uses UnitDM, UnitREGDepartaments;

procedure TFRMDepartments.BTN_AlterarClick(Sender: TObject);
begin
  DM.ADODSDepartments.edit;
  frmregdepartaments.BTN_Save.Enabled := True;
  frmregdepartaments.BTN_Cancel.Enabled := True;
  frmregdepartaments.BTN_Exit.Enabled := false;
  frmregdepartaments.PnlReg.Enabled := True;
  frmregdepartaments.ShowModal;
end;

procedure TFRMDepartments.BTN_ExcluirClick(Sender: TObject);

  var confdelete: integer;

begin
   confdelete := Application.MessageBox('Confirma a exclusão deste registro?','Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
   if (confdelete = IDYES) then
      begin
        DM.ADODSDepartments.Delete;
        application.MessageBox('Registro excluído!','Informação',MB_OK+MB_ICONINFORMATION);
    end
    else
      begin
        application.MessageBox('Exclusão Cancelada','Informação',MB_OK+MB_ICONINFORMATION);
      end;
end;


procedure TFRMDepartments.BTN_InserirClick(Sender: TObject);
begin
  DM.ADODSDepartments.Insert;
  frmregdepartaments.BTN_Save.Enabled := True;
  frmregdepartaments.BTN_Cancel.Enabled := True;
  frmregdepartaments.BTN_Exit.Enabled := false;
  frmregdepartaments.PnlReg.Enabled := True;
  frmregdepartaments.ShowModal;
end;

procedure TFRMDepartments.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure TFRMDepartments.Edit2Change(Sender: TObject);
begin
DM.ADODSDepartments.Active:=true;
DM.ADODSDepartments.Close;
DM.ADODSDepartments.CommandText:=('Select * from departments '+
' where name like '+'''%'+edit2.text+'%'+''''+'');
DM.ADODSDepartments.Open;
end;

procedure TFRMDepartments.FormActivate(Sender: TObject);
begin
  DM.ADODSDepartments.Close;
  DM.ADODSDepartments.CommandText := '';
  DM.ADODSDepartments.CommandText := 'Select * from departments order by name';
  DM.ADODSDepartments.Open;
end;

end.
