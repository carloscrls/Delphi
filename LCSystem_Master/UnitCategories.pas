unit UnitCategories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList;

type
  TFrmCategories = class(TForm)
    Edit1: TEdit;
    ImageList1: TImageList;
    PnlSearch: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Insert: TToolButton;
    BTN_Edit: TToolButton;
    BTN_Delete: TToolButton;
    ToolButton4: TToolButton;
    BTN_Print: TToolButton;
    ToolButton6: TToolButton;
    BTN_Exit: TToolButton;
    PnlUser: TPanel;
    Edit2: TEdit;
    procedure BTN_InsertClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
    procedure BTN_EditClick(Sender: TObject);
    procedure BTN_DeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCategories: TFrmCategories;

implementation

{$R *.dfm}

uses UnitDM, UnitREGCategories;

procedure TFrmCategories.BTN_DeleteClick(Sender: TObject);
var confdelete: integer;
begin
  confdelete := Application.Messagebox('Confirma Exclusão deste registro?','Atenção',
  MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
  { var confdelete(confirma Exclusão) está recebendo um application messagebox. Onde o usuário
  irá informar com um YES or NO se deseja excluir aquele registro. O valor recebido pela variavel
  Sera o ID (um valor integer) da resposta. }
  if (confdelete = IDYes) then
    begin
      DM.ADODSCategories.delete;
      Application.Messagebox('Registro deleteado com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    end
  else
    begin
      Application.Messagebox('A exclusão do registro foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);

    end;
end;

procedure TFrmCategories.BTN_EditClick(Sender: TObject);
begin
  DM.ADODSCategories.Edit;
  //Requisita uma edição(update) no registro selecionado no grid
  FrmRegCategories.BTN_Save.Enabled := True;
  FrmRegCategories.BTN_Cancel.Enabled := True;
  FrmRegCategories.BTN_Exit.Enabled := false;
  FrmRegCategories.PnlReg.Enabled := True;
  FrmRegCategories.ShowModal;
end;

procedure TFrmCategories.BTN_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCategories.BTN_InsertClick(Sender: TObject);
begin
  DM.ADODSCategories.Insert;
  FrmRegCategories.BTN_Save.Enabled := True;
  FrmRegCategories.BTN_Cancel.Enabled := True;
  FrmRegCategories.BTN_Exit.Enabled := false;
  FrmRegCategories.PnlReg.Enabled := True;
  FrmRegCategories.ShowModal;
end;

procedure TFrmCategories.Edit2Change(Sender: TObject);
begin
  DM.ADODSCategories.Locate('name',Edit2.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TFrmCategories.FormActivate(Sender: TObject);
begin
  DM.ADODSCategories.Close;
  DM.ADODSCategories.CommandText := '';
  DM.ADODSCategories.CommandText := 'Select * from categories order by name';
  DM.ADODSCategories.Open;
end;

end.
