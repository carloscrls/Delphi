unit UnitContacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmContacts = class(TForm)
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
  FrmContacts: TFrmContacts;

implementation

{$R *.dfm}

uses UnitDM, UnitRegContacts;

procedure TFrmContacts.BTN_AlterarClick(Sender: TObject);
begin
    DM.adodscontacts.edit;
  frmregcontacts.BTN_Save.Enabled := True;
  frmregcontacts.BTN_Cancel.Enabled := True;
  frmregcontacts.BTN_Exit.Enabled := false;
  frmregcontacts.PnlReg.Enabled := True;
  frmregcontacts.ShowModal;
end;

procedure TFrmContacts.BTN_ExcluirClick(Sender: TObject);


  var confdelete: integer;

begin
   confdelete := Application.MessageBox('Confirma a exclusão deste registro?','Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
   if (confdelete = IDYES) then
      begin
        DM.adodscontacts.Delete;
        application.MessageBox('Registro excluído!','Informação',MB_OK+MB_ICONINFORMATION);
    end
    else
      begin
        application.MessageBox('Exclusão Cancelada','Informação',MB_OK+MB_ICONINFORMATION);
      end;

end;

procedure TFrmContacts.BTN_InserirClick(Sender: TObject);
begin
  DM.adodscontacts.Insert;
  frmregcontacts.BTN_Save.Enabled := True;
  frmregcontacts.BTN_Cancel.Enabled := True;
  frmregcontacts.BTN_Exit.Enabled := false;
  frmregcontacts.PnlReg.Enabled := True;
  frmregcontacts.ShowModal;
end;

procedure TFrmContacts.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrmContacts.Edit2Change(Sender: TObject);
begin
DM.adodscontacts.Active:=true;
DM.adodscontacts.Close;
DM.adodscontacts.CommandText:=('Select * from contacts '+
' where name like '+'''%'+edit2.text+'%'+''''+'');
DM.adodscontacts.Open;
end;

procedure TFrmContacts.FormActivate(Sender: TObject);
begin
  DM.adodscontacts.Close;
  DM.adodscontacts.CommandText := '';
  DM.adodscontacts.CommandText := 'Select * from contacts order by name';
  DM.adodscontacts.Open;
end;

end.
