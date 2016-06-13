unit UNITREGINTEGRACAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TFRMREGINTEGRACAO = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    PnlReg: TPanel;
    PnlINTEGRACAO: TPanel;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    ImageList1: TImageList;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    listcolab: TADOQuery;
    dslistcolab: TDataSource;
    listcolabCODIGO: TAutoIncField;
    listcolabNOME: TStringField;
    listcolabCPF: TStringField;
    listcolabRG: TStringField;
    listcolabCNH: TStringField;
    listcolabDATAVALIDCNH: TStringField;
    listcolabCARGO: TStringField;
    listcolabSIT: TStringField;
    listcolabNOMEPRESTADORA: TStringField;
    listcolabCONTATOINTERNO: TMemoField;
    listcolabRESPONSAVELPORTARIA: TStringField;
    listcolabSITDATE: TStringField;
    listcolabSITTIME: TStringField;
    listcolabRAMAL: TStringField;
    listcolabintegrado: TStringField;
    Button3: TButton;
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMREGINTEGRACAO: TFRMREGINTEGRACAO;
  VCTO4meses,HOJE,VCTOdb1,VCTOdb7,VCTOdb6,VCTOdb14,VCTOdb15,VCTOdb16,VCTOdb17,VCTOdb18,VCTOdb19:tdatetime;

implementation

{$R *.dfm}

uses DM, UNITINSTRUTOR, UNITEMPRESAS, COLAB;

procedure TFRMREGINTEGRACAO.BTN_CancelClick(Sender: TObject);
begin
DMUNT.ADODSCONTROLEDEINTEGRACAO.CANCEL;
BTN_Exit.Enabled:=TRUE;
BTN_Cancel.Enabled:=FALSE;
BTN_SAVE.Enabled:=FALSE;
PnlReg.Enabled:=FALSE;

DBEdit1.Color:= $003B3B3B;
DBEdit2.Color:= $003B3B3B;
DBEdit3.Color:= $003B3B3B;
DBEdit14.Color:= $003B3B3B;
DBEdit15.Color:= $003B3B3B;
DBEdit16.Color:= $003B3B3B;
DBEdit17.Color:= $003B3B3B;
DBEdit18.Color:= $003B3B3B;
DBEdit19.Color:= $003B3B3B;
end;

procedure TFRMREGINTEGRACAO.BTN_ExitClick(Sender: TObject);
begin
DMUNT.ADODSCONTROLEDEINTEGRACAO.CANCEL;
BTN_Exit.Enabled:=FALSE;
BTN_Cancel.Enabled:=TRUE;
BTN_SAVE.Enabled:=TRUE;
PnlReg.Enabled:=TRUE;
CLOSE;
end;

procedure TFRMREGINTEGRACAO.BTN_SaveClick(Sender: TObject);
VAR CONF:INTEGER;
begin
if (DBLOOKUPCOMBOBOX1.Text<>'') AND
   (DBLOOKUPCOMBOBOX2.Text<>'') AND
   (DBLOOKUPCOMBOBOX3.Text<>'') then
 BEGIN
   Conf := Application.MessageBox('DESEJA INSERIR UMA NOVA INTEGRA플O?','NOVA INTEGRA플O',MB_YESNO+MB_DEFBUTTON2+MB_ICONWARNING);
  if conf=IDYES then
   BEGIN
         begin
          ADOQuery1.CLOSE;
          ADOQUERY1.SQL.Clear;
          ADOQuery1.SQL.Add('update COLABORADOR set  integrado = ''SIM'' where nome= '''+DBLookupComboBox1.Text+'''');
          ADOQuery1.ExecSQL;
         end;
   DMUNT.ADODSCONTROLEDEINTEGRACAO.Post;
   DMUNT.ADODSCONTROLEDEINTEGRACAO.INSERT;
   FRMREGINTEGRACAO.Button1.Enabled:=TRUE;
   FRMREGINTEGRACAO.Button2.Enabled:=TRUE;
   FRMREGINTEGRACAO.Button3.Enabled:=TRUE;

   BTN_Exit.Enabled:=FALSE;
   BTN_Cancel.Enabled:=TRUE;
   BTN_SAVE.Enabled:=TRUE;
   PnlReg.Enabled:=TRUE;

   END

   ELSE if conf=IDNO then
   BEGIN
   DMUNT.ADODSCONTROLEDEINTEGRACAO.Post;
   BTN_Exit.Enabled:=TRUE;
   BTN_Cancel.Enabled:=FALSE;
   BTN_SAVE.Enabled:=FALSE;
   PnlReg.Enabled:=FALSE;
        begin
          ADOQuery1.CLOSE;
          ADOQUERY1.SQL.Clear;
          ADOQuery1.SQL.Add('update COLABORADOR set  integrado = ''SIM'' where nome= '''+DBLookupComboBox1.Text+'''');
          ADOQuery1.ExecSQL;
         end;

   END;

 end
 ELSE
 BEGIN
  SHOWMESSAGE('Favor nao deixar nenhum campo em branco');
 END;
 end;

procedure TFRMREGINTEGRACAO.Button1Click(Sender: TObject);
begin
FRMINSTRUTOR.ShowModal;

end;

procedure TFRMREGINTEGRACAO.Button2Click(Sender: TObject);
begin
FRMEMPRESAS.SHOWMODAL;

end;

procedure TFRMREGINTEGRACAO.Button3Click(Sender: TObject);
begin
frmcolab.ShowModal;

end;

procedure TFRMREGINTEGRACAO.DBEdit2Change(Sender: TObject);
var qtde:integer;
data:TDateTime;
begin
qtde:=Length(DBEdit2.Text);
  if (qtde>9) then
  begin
    data:=strtodate (DBedit2.text);
    DBEdit3.Text:= datetostr(data+365);
  end;


end;

procedure TFRMREGINTEGRACAO.DBLookupComboBox1Click(Sender: TObject);
begin
DMUNT.ADODSCOLAB.Close;
DMUNT.ADODSINSTRUTOR.Close;
LISTCOLAB.Close;

DMUNT.ADODSCOLAB.OPEN;
DMUNT.ADODSINSTRUTOR.OPEN;
LISTCOLAB.OPEN;

DBLookupComboBox1.Refresh;
DBLookupComboBox2.Refresh;
DBLookupComboBox3.Refresh;


end;

procedure TFRMREGINTEGRACAO.DBLookupComboBox2Click(Sender: TObject);
begin
DMUNT.ADODSCOLAB.Close;
DMUNT.ADODSINSTRUTOR.Close;
LISTCOLAB.Close;

DMUNT.ADODSCOLAB.OPEN;
DMUNT.ADODSINSTRUTOR.OPEN;
LISTCOLAB.OPEN;

DBLookupComboBox1.Refresh;
DBLookupComboBox2.Refresh;
DBLookupComboBox3.Refresh;
end;

procedure TFRMREGINTEGRACAO.DBLookupComboBox3Click(Sender: TObject);
begin
DMUNT.ADODSCOLAB.Close;
DMUNT.ADODSINSTRUTOR.Close;
LISTCOLAB.Close;

DMUNT.ADODSCOLAB.OPEN;
DMUNT.ADODSINSTRUTOR.OPEN;
LISTCOLAB.OPEN;

DBLookupComboBox1.Refresh;
DBLookupComboBox2.Refresh;
DBLookupComboBox3.Refresh;
end;

procedure TFRMREGINTEGRACAO.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
Key := AnsiUpperCase(Key)[1];
end;

procedure TFRMREGINTEGRACAO.FormActivate(Sender: TObject);
VAR VALIDA:INTEGER;
begin

 HOJE:= strtodate (formatdatetime('DD/MM/YYYY',now));
 VCTO4meses:= hoje + 120;
 listcolab.ExecSQL;

 if (DBEdit14.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O') then
  BEGIN
   VCTOdb14:= strtodate(dbedit14.Text);
   if VCTOdb14 <= HOJE then
    BEGIN
    DBEdit14.Color:=CLRED;
    END
    else if (VCTOdb14 >= HOJE)and (VCTOdb14 <= vcto4meses) then
    BEGIN
    DBEdit14.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit14.Color:= $003B3B3B;
    END;

  END
  else
  begin
  DBEdit14.Color:= $003B3B3B;
  end;

 if( DBEdit15.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O')then
  BEGIN
   VCTOdb15:= strtodate(dbedit15.Text);
   if VCTOdb15 <= HOJE then
    BEGIN
    DBEdit15.Color:=CLRED;
    END
    else if (VCTOdb15 >= HOJE)and (VCTOdb15 <= vcto4meses) then
    BEGIN
    DBEdit15.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit15.Color:= $003B3B3B;
    END;

   END
  else
  begin
  DBEdit15.Color:= $003B3B3B;
  end;


 if (DBEdit16.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O') then
  BEGIN
   VCTOdb16:= strtodate(dbedit16.Text);
   if VCTOdb16 <= HOJE then
    BEGIN
    DBEdit16.Color:=CLRED;
    END
    else if (VCTOdb16 >= HOJE)and (VCTOdb16 <= vcto4meses) then
    BEGIN
    DBEdit16.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit16.Color:= $003B3B3B;
    END;

   END
  else
  begin
  DBEdit16.Color:= $003B3B3B;
  end;


 if (DBEdit17.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O') then
  BEGIN
   VCTOdb17:= strtodate(dbedit17.Text);
   if VCTOdb17 <= HOJE then
    BEGIN
    DBEdit17.Color:=CLRED;
    END
    else if (VCTOdb17 >= HOJE)and (VCTOdb17 <= vcto4meses) then
    BEGIN
    DBEdit17.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit17.Color:= $003B3B3B;
    END;

   END
  else
  begin
  DBEdit17.Color:= $003B3B3B;
  end;


 if (DBEdit18.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O') then
  BEGIN
   VCTOdb18:= strtodate(dbedit18.Text);
   if VCTOdb18 <= HOJE then
    BEGIN
    DBEdit18.Color:=CLRED;
    END
    else if (VCTOdb18 >= HOJE)and (VCTOdb18 <= vcto4meses) then
    BEGIN
    DBEdit18.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit18.Color:= $003B3B3B;
    END;

   END
  else
  begin
  DBEdit18.Color:= $003B3B3B;
  end;


 if (DBEdit19.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O') then
  BEGIN
   VCTOdb19:= strtodate(dbedit19.Text);
   if (VCTOdb19 ) <= HOJE then
    BEGIN
    DBEdit19.Color:=CLRED;
    END
    else if ((VCTOdb19 ) >= HOJE)and (VCTOdb19 <= vcto4meses) then
    BEGIN
    DBEdit19.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit19.Color:= $003B3B3B;
    END;

  END
  else
  begin
  DBEdit19.Color:= $003B3B3B;
  end;


 {if DBEdit1.Text<>'  /  /    ' then
  BEGIN
   VCTOdb1:= strtodate(dbedit1.Text);
   if (VCTOdb1+365) <= HOJE then
    BEGIN
    DBEdit1.Color:=CLRED;
    END
    else if ((VCTOdb1+365) >= HOJE)and ((VCTOdb1+365) <= (vcto4meses+245)) then
    BEGIN
    DBEdit1.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit1.Color:= $003B3B3B;
    END;
   END
  else
  begin
  DBEdit1.Color:= $003B3B3B;
  end; }


 if (DBEdit3.Text<>'  /  /    ')AND (PnlINTEGRACAO.Caption='EDITAR INTEGRA플O') then
  BEGIN
   VCTOdb6:= strtodate(dbedit3.Text);
   if VCTOdb6 <= HOJE then
    BEGIN
    DBEdit3.Color:=CLRED;
    END
    else if (VCTOdb6 >= HOJE)and (VCTOdb6 <= vcto4meses) then
    BEGIN
    DBEdit3.Color:=clOlive;
    END
    ELSE
    BEGIN
    DBEdit3.Color:= $003B3B3B;
    END;

    END
  else
  begin
  DBEdit3.Color:= $003B3B3B;
  end;




end;


procedure TFRMREGINTEGRACAO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
BTN_Exit.Click;
end;

end.
