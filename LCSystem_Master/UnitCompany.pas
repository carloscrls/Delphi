unit UnitCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmCompany = class(TForm)
    PnlUser: TPanel;
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
    ImageList1: TImageList;
    procedure FormActivate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompany: TFrmCompany;

implementation

{$R *.dfm}

uses UnitDM, UnitREGCompany;

procedure TFrmCompany.BTN_AlterarClick(Sender: TObject);
begin
  DM.ADODScompany.edit;
  FrmREGCompany.BTN_Save.Enabled := True;
  FrmREGCompany.BTN_Cancel.Enabled := True;
  FrmREGCompany.BTN_Exit.Enabled := false;
  FrmREGCompany.PnlReg.Enabled := True;
  FrmREGCompany.ShowModal;

end;

procedure TFrmCompany.BTN_ExcluirClick(Sender: TObject);


  var confdelete: integer;

begin
   confdelete := Application.MessageBox('Confirma a exclusão deste registro?','Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
   if (confdelete = IDYES) then
      begin
        DM.ADODSCompany.Delete;
        application.MessageBox('Registro excluído!','Informação',MB_OK+MB_ICONINFORMATION);
    end
    else
      begin
        application.MessageBox('Exclusão Cancelada','Informação',MB_OK+MB_ICONINFORMATION);
      end;
end;


procedure TFrmCompany.BTN_InserirClick(Sender: TObject);
begin
  DM.ADODScompany.Insert;
  FrmREGCompany.BTN_Save.Enabled := True;
  FrmREGCompany.BTN_Cancel.Enabled := True;
  FrmREGCompany.BTN_Exit.Enabled := false;
  FrmREGCompany.PnlReg.Enabled := True;
  FrmREGCompany.ShowModal;
end;

procedure TFrmCompany.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrmCompany.Edit2Change(Sender: TObject);
begin
DM.ADODScompany.Active:=true;
DM.ADODScompany.Close;
DM.ADODScompany.CommandText:=('Select * from company '+
' where company_name like '+'''%'+edit2.text+'%'+''''+'');
DM.ADODScompany.Open;
end;

procedure TFrmCompany.FormActivate(Sender: TObject);
begin
  DM.ADODScompany.Close;
  DM.ADODScompany.CommandText := '';
  DM.ADODScompany.CommandText := 'Select * from company order by company_name';
  DM.ADODScompany.Open;
end;

end.
