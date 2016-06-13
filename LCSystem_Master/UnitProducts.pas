unit UnitProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList;

type
  TFrmProducts = class(TForm)
    Edit1: TEdit;
    ImageList1: TImageList;
    PnlSearch: TPanel;
    Label1: TLabel;
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
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    procedure BTN_InserirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducts: TFrmProducts;

implementation

{$R *.dfm}

uses UnitDM, UnitREGProducts;

procedure TFrmProducts.BTN_AlterarClick(Sender: TObject);
begin
  DM.ADODSProducts.Edit;
  FrmRegProducts.BTN_Save.Enabled := True;
  FrmRegProducts.BTN_Cancel.Enabled := True;
  FrmRegProducts.BTN_Exit.Enabled := false;
  FrmRegProducts.PnlReg.Enabled := True;
  FrmRegProducts.ShowModal;
end;


procedure TFrmProducts.BTN_ExcluirClick(Sender: TObject);

  var confdelete: integer;

begin
   confdelete := Application.MessageBox('Confirma a exclusão deste registro?','Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
   if (confdelete = IDYES) then
      begin
        DM.ADODSProducts.Delete;
        application.MessageBox('Registro excluído!','Informação',MB_OK+MB_ICONINFORMATION);
    end
    else
      begin
        application.MessageBox('Exclusão Cancelada','Informação',MB_OK+MB_ICONINFORMATION);
      end;
end;


procedure TFrmProducts.BTN_InserirClick(Sender: TObject);
begin
  DM.ADODSProducts.Insert;
  FrmRegProducts.BTN_Save.Enabled := True;
  FrmRegProducts.BTN_Cancel.Enabled := True;
  FrmRegProducts.BTN_Exit.Enabled := false;
  FrmRegProducts.PnlReg.Enabled := True;
  FrmRegProducts.ShowModal;
end;

procedure TFrmProducts.BTN_SairClick(Sender: TObject);
begin
  FrmProducts.close;
end;

procedure TFrmProducts.Edit2Change(Sender: TObject);
begin
//ERRO->  DM.ADODSProducts.Locate('description_pr',Edit2.Text,[loCaseInsensitive,loPartialKey]);
DM.ADODSProducts.Active:=true;
DM.ADODSProducts.Close;
DM.ADODSProducts.CommandText:=('Select * from products '+
' where description_pr like '+'''%'+edit2.text+'%'+''''+'');
DM.ADODSProducts.Open;

end;

procedure TFrmProducts.FormActivate(Sender: TObject);
begin
  DM.ADODSProducts.Close;
  DM.ADODSProducts.CommandText := '';
  DM.ADODSProducts.CommandText := 'Select * from products order by description_pr';
  DM.ADODSProducts.Open;

end;

end.
