unit UnitProvider;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmProvider = class(TForm)
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
  FrmProvider: TFrmProvider;

implementation

{$R *.dfm}

uses UnitDM, UnitRegProvider;

procedure TFrmProvider.BTN_AlterarClick(Sender: TObject);
begin
  DM.ADODSProvider.edit;
  FrmRegProvider.BTN_Save.Enabled := True;
  FrmRegProvider.BTN_Cancel.Enabled := True;
  FrmRegProvider.BTN_Exit.Enabled := false;
  FrmRegProvider.PnlReg.Enabled := True;
  FrmRegProvider.ShowModal;
end;

procedure TFrmProvider.BTN_ExcluirClick(Sender: TObject);


  var confdelete: integer;

begin
   confdelete := Application.MessageBox('Confirma a exclusão deste registro?','Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
   if (confdelete = IDYES) then
      begin
        DM.ADODSProvider.Delete;
        application.MessageBox('Registro excluído!','Informação',MB_OK+MB_ICONINFORMATION);
    end
    else
      begin
        application.MessageBox('Exclusão Cancelada','Informação',MB_OK+MB_ICONINFORMATION);
      end;
end;


procedure TFrmProvider.BTN_InserirClick(Sender: TObject);
begin
  DM.ADODSProvider.Insert;
  FrmRegProvider.BTN_Save.Enabled := True;
  FrmRegProvider.BTN_Cancel.Enabled := True;
  FrmRegProvider.BTN_Exit.Enabled := false;
  FrmRegProvider.PnlReg.Enabled := True;
  FrmRegProvider.ShowModal;
end;

procedure TFrmProvider.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrmProvider.Edit2Change(Sender: TObject);
begin
//ERRO->  DM.ADODSProducts.Locate('description_pr',Edit2.Text,[loCaseInsensitive,loPartialKey]);
DM.ADODSProvider.Active:=true;
DM.ADODSProvider.Close;
DM.ADODSProvider.CommandText:=('Select * from providers '+
' where company_name like '+'''%'+edit2.text+'%'+''''+'');
DM.ADODSProvider.Open;
end;

procedure TFrmProvider.FormActivate(Sender: TObject);
begin
  DM.ADODSProvider.Close;
  DM.ADODSProvider.CommandText := '';
  DM.ADODSProvider.CommandText := 'Select * from providers order by fantasy_name';
  DM.ADODSProvider.Open;
end;

end.
