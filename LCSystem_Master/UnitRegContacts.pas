unit UnitRegContacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TFrmREGContacts = class(TForm)
    PnlReg: TPanel;
    ID: TLabel;
    DBEdit1: TDBEdit;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    PnlProducts: TPanel;
    e: TImageList;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQueryContact: TADOQuery;
    DSContact2: TDataSource;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmREGContacts: TFrmREGContacts;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmREGContacts.BTN_CancelClick(Sender: TObject);
begin
  DM.ADODSContacts.Cancel;
  application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
  BTN_Save.Enabled   := False;
  BTN_Cancel.Enabled := False;
  BTN_Exit.Enabled     := True;
  PnlReg.Enabled     := False;
end;

procedure TFrmREGContacts.BTN_ExitClick(Sender: TObject);
begin
close;
end;

procedure TFrmREGContacts.BTN_SaveClick(Sender: TObject);
 begin
                  DM.ADODSContacts.Post;
                  application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
                  BTN_save.Enabled   := False;
                  BTN_cancel.Enabled := False;
                  BTN_Exit.Enabled     := True;
                  PnlReg.Enabled     := False;

 end;

procedure TFrmREGContacts.FormActivate(Sender: TObject);
begin
ADOQueryContact.Active:=true;
end;

end.
