unit REGCOLAB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFRMREGCOLAB = class(TForm)
    PnlReg: TPanel;
    Label1: TLabel;
    PnlProducts: TPanel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    ImageList1: TImageList;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMREGCOLAB: TFRMREGCOLAB;

implementation

{$R *.dfm}

uses DM;

procedure TFRMREGCOLAB.BTN_CancelClick(Sender: TObject);
begin
DMUNT.ADODSCOLAB.CANCEL;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
BTN_Exit.Click;

end;

procedure TFRMREGCOLAB.BTN_ExitClick(Sender: TObject);
begin
CLOSE;
PnlReg.Enabled:=FALSE;
DMUNT.adodscolab.close;
DMUNT.adodscolab.open;
end;

procedure TFRMREGCOLAB.BTN_SaveClick(Sender: TObject);
begin
if DBCOMBOBOX1.Text<>'' then
BEGIN
DBEdit11.Text:='SAIDA';
DMUNT.ADODSCOLAB.Post;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;
END
ELSE
SHOWMESSAGE('Favor nao deixar nenhum campo em branco');
end;

procedure TFRMREGCOLAB.DBComboBox1Change(Sender: TObject);
    begin
    if DBComboBox1.ItemIndex=0 then //EFETIVO
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true;  //NOME
      DBEdit3.Visible:=true;  //CPF
      DBEdit4.Visible:=true;  //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=TRUE;  //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit10.CLEAR; //PRESTADORA
      DBMemo1.CLEAR;  //CONTATO INTERNO
      DBEdit5.CLEAR; //CNH
      DBEdit6.CLEAR; //VALIDADECNH

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=1 then //ESTAG
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=FALSE; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit10.CLEAR;
      DBMemo1.CLEAR;
      DBEdit4.CLEAR; //RG
      DBEdit5.CLEAR; //CNH
      DBEdit6.CLEAR; //VALIDADECNH

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=FALSE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=2 then //VISITANTE
      begin
      DBEdit1.Visible:=false; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=true; //PRESTADORA
      DBMemo1.Visible:=true;  //CONTATO INTERNO

      DBEdit1.CLEAR;//:=false; // RAMAL
      DBEdit5.CLEAR;//:=FALSE; //CNH
      DBEdit6.CLEAR;//:=FALSE; //VALIDADECNH

      Label14.Visible:=false;
      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=TRUE;
      LABEL13.Visible:=TRUE;
      end;

    if DBComboBox1.ItemIndex=3 then  //TERCEIRO
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=true; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit5.CLEAR;//:=FALSE; //CNH
      DBEdit6.CLEAR;//:=FALSE; //VALIDADECNH
      DBMemo1.CLEAR;//:=FALSE;  //CONTATO INTERNO

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=TRUE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=4 then //MOTORISTA
      begin
      DBEdit1.Visible:=false; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=true; //CNH
      DBEdit6.Visible:=true; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit1.CLEAR;//:=false; // RAMAL
      DBEdit10.CLEAR;//:=FALSE; //PRESTADORA
      DBMemo1.CLEAR;//:=FALSE;  //CONTATO INTERNO


      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=TRUE;
      LABEL8.Visible:=TRUE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=false;
      end;
    end;


procedure TFRMREGCOLAB.FormActivate(Sender: TObject);
    begin
    if DBComboBox1.ItemIndex=0 then //EFETIVO
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true;  //NOME
      DBEdit3.Visible:=true;  //CPF
      DBEdit4.Visible:=true;  //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=TRUE;  //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit10.CLEAR; //PRESTADORA
      DBMemo1.CLEAR;  //CONTATO INTERNO
      DBEdit5.CLEAR; //CNH
      DBEdit6.CLEAR; //VALIDADECNH

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=1 then //ESTAG
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=FALSE; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit10.CLEAR;
      DBMemo1.CLEAR;
      DBEdit4.CLEAR; //RG
      DBEdit5.CLEAR; //CNH
      DBEdit6.CLEAR; //VALIDADECNH

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=FALSE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=2 then //VISITANTE
      begin
      DBEdit1.Visible:=false; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=true; //PRESTADORA
      DBMemo1.Visible:=true;  //CONTATO INTERNO

      DBEdit1.CLEAR;//:=false; // RAMAL
      DBEdit5.CLEAR;//:=FALSE; //CNH
      DBEdit6.CLEAR;//:=FALSE; //VALIDADECNH

      Label14.Visible:=false;
      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=TRUE;
      LABEL13.Visible:=TRUE;
      end;

    if DBComboBox1.ItemIndex=3 then  //TERCEIRO
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=true; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit5.CLEAR;//:=FALSE; //CNH
      DBEdit6.CLEAR;//:=FALSE; //VALIDADECNH
      DBMemo1.CLEAR;//:=FALSE;  //CONTATO INTERNO

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=TRUE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=4 then //MOTORISTA
      begin
      DBEdit1.Visible:=false; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=true; //CNH
      DBEdit6.Visible:=true; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit1.CLEAR;//:=false; // RAMAL
      DBEdit10.CLEAR;//:=FALSE; //PRESTADORA
      DBMemo1.CLEAR;//:=FALSE;  //CONTATO INTERNO


      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=TRUE;
      LABEL8.Visible:=TRUE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=false;
      end;
    end;




procedure TFRMREGCOLAB.FormClick(Sender: TObject);
begin
    begin
    if DBComboBox1.ItemIndex=0 then //EFETIVO
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true;  //NOME
      DBEdit3.Visible:=true;  //CPF
      DBEdit4.Visible:=true;  //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=TRUE;  //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit10.CLEAR; //PRESTADORA
      DBMemo1.CLEAR;  //CONTATO INTERNO
      DBEdit5.CLEAR; //CNH
      DBEdit6.CLEAR; //VALIDADECNH

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=1 then //ESTAG
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=FALSE; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit10.CLEAR;
      DBMemo1.CLEAR;
      DBEdit4.CLEAR; //RG
      DBEdit5.CLEAR; //CNH
      DBEdit6.CLEAR; //VALIDADECNH

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=FALSE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=2 then //VISITANTE
      begin
      DBEdit1.Visible:=false; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=true; //PRESTADORA
      DBMemo1.Visible:=true;  //CONTATO INTERNO

      DBEdit1.CLEAR;//:=false; // RAMAL
      DBEdit5.CLEAR;//:=FALSE; //CNH
      DBEdit6.CLEAR;//:=FALSE; //VALIDADECNH

      Label14.Visible:=false;
      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=TRUE;
      LABEL13.Visible:=TRUE;
      end;

    if DBComboBox1.ItemIndex=3 then  //TERCEIRO
      begin
      DBEdit1.Visible:=true; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=FALSE; //CNH
      DBEdit6.Visible:=FALSE; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=true; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit5.CLEAR;//:=FALSE; //CNH
      DBEdit6.CLEAR;//:=FALSE; //VALIDADECNH
      DBMemo1.CLEAR;//:=FALSE;  //CONTATO INTERNO

      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=FALSE;
      LABEL8.Visible:=FALSE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=TRUE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=true;
      end;

    if DBComboBox1.ItemIndex=4 then //MOTORISTA
      begin
      DBEdit1.Visible:=false; // RAMAL
      DBEdit2.Visible:=true; //NOME
      DBEdit3.Visible:=true; //CPF
      DBEdit4.Visible:=true; //RG
      DBEdit5.Visible:=true; //CNH
      DBEdit6.Visible:=true; //VALIDADECNH
      DBEdit9.Visible:=true; //RESP*
      DBEdit10.Visible:=FALSE; //PRESTADORA
      DBMemo1.Visible:=FALSE;  //CONTATO INTERNO

      DBEdit1.CLEAR;//:=false; // RAMAL
      DBEdit10.CLEAR;//:=FALSE; //PRESTADORA
      DBMemo1.CLEAR;//:=FALSE;  //CONTATO INTERNO


      LABEL4.Visible:=TRUE;
      LABEL5.Visible:=TRUE;
      LABEL6.Visible:=TRUE;
      LABEL7.Visible:=TRUE;
      LABEL8.Visible:=TRUE;
      LABEL11.Visible:=TRUE;
      LABEL12.Visible:=FALSE;
      LABEL13.Visible:=FALSE;
      Label14.Visible:=false;
      end;
    end;

end;

procedure TFRMREGCOLAB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BTN_EXIT.Click;
end;

end.
