unit UnitREGEmployees;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TFrmREGEmployees = class(TForm)
    PnlReg: TPanel;
    Label1: TLabel;
    Label2: TLabel;
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
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery1: TADOQuery;
    DSDEpartamentos2: TDataSource;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmREGEmployees: TFrmREGEmployees;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmREGEmployees.BTN_CancelClick(Sender: TObject);
begin
 DM.ADODSEmployees.Cancel;
  application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
  BTN_Save.Enabled   := False;
  BTN_Cancel.Enabled := False;
  BTN_Exit.Enabled     := True;
  PnlReg.Enabled     := False;
end;

procedure TFrmREGEmployees.BTN_ExitClick(Sender: TObject);
begin
close;
end;

procedure TFrmREGEmployees.BTN_SaveClick(Sender: TObject);
begin
 DM.ADODSEmployees.Post;
                  application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
                  BTN_save.Enabled   := False;
                  BTN_cancel.Enabled := False;
                  BTN_Exit.Enabled     := True;
                  PnlReg.Enabled     := False;
end;

end.
