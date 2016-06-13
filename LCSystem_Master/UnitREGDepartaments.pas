unit UnitREGDepartaments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmRegDepartaments = class(TForm)
    PnlReg: TPanel;
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegDepartaments: TFrmRegDepartaments;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmRegDepartaments.BTN_CancelClick(Sender: TObject);
begin
  DM.ADODSDepartments.Cancel;
  application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
  BTN_Save.Enabled   := False;
  BTN_Cancel.Enabled := False;
  BTN_Exit.Enabled     := True;
  PnlReg.Enabled     := False;
end;

procedure TFrmRegDepartaments.BTN_ExitClick(Sender: TObject);
begin
close;
end;

procedure TFrmRegDepartaments.BTN_SaveClick(Sender: TObject);
begin
 begin
                  DM.ADODSDepartments.Post;
                  application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
                  BTN_save.Enabled   := False;
                  BTN_cancel.Enabled := False;
                  BTN_Exit.Enabled     := True;
                  PnlReg.Enabled     := False;
                end
end;

end.
