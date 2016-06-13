unit UNITFLUXO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Data.Win.ADODB, Vcl.Mask, Vcl.Buttons;

type
  TFRMFLUXO = class(TForm)
    PnlSearch: TPanel;
    PnlUser: TPanel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    BitBtn3: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    SITCOLAB: TDBEdit;
    Label1: TLabel;
    ADOQuery2: TADOQuery;
    atribui: TLabel;
    BitBtn5: TBitBtn;
    CADASTRAR: TBitBtn;
    SpeedButton1: TSpeedButton;
    cargo: TDBEdit;
    codigo: TDBEdit;
    ADOQuery1CODIGO: TAutoIncField;
    ADOQuery1NOME: TStringField;
    ADOQuery1SIT: TStringField;
    ADOQuery1CARGO: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3NCRACHA: TStringField;
    ADOQuery3DISPONIBILIDADE: TWideStringField;
    ADOQuery3CODCOLABCRACHA: TIntegerField;
    ADOQuery4: TADOQuery;
    DataSource2: TDataSource;
    CRACHA: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BTN_SairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure CADASTRARClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMFLUXO: TFRMFLUXO;
  verifica:string;

implementation

{$R *.dfm}

uses DM, COLAB;

procedure TFRMFLUXO.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.Active:=false;
ADOQuery1.SQL.Add('SELECT CODIGO, NOME,SIT,CARGO FROM COLABORADOR WHERE CARGO<> ''MOTORISTA-DE-CAMINHAO'' and SIT=''SAIDA'' ORDER BY NOME');
ADOQuery1.Active:=true;

ADOQuery3.SQL.Clear;
ADOQuery3.Active:=false;
ADOQuery3.SQL.Add('select * from cracha where disponibilidade= ''DISPONIVEL''');
ADOQuery3.Active:=true;

PnlSearch.Visible:=false;

atribui.Caption:='Atribuir ENTRADA ao Colaborador:';
verifica:='ENTRADA';
DMUNT.ADODSFLUXO.Insert;
 DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
 DBEdit1.Text:=formatdatetime('hh:mm:ss',now);
DBEdit2.Text:='ENTRADA'; //DBEDIT INVISIVEL PARA INSER��O
Panel1.Visible:=TRUE;
Label3.CAPTION:='ENTRADA DO COLABORADOR:';
Label5.Caption:='DATA ENTRADA';
label2.Caption:='HORA ENTRADA';
BitBtn1.VISIBLE:=FALSE;
BitBtn2.VISIBLE:=FALSE;
end;

procedure TFRMFLUXO.BitBtn2Click(Sender: TObject);
begin

ADOQuery1.SQL.Clear;
ADOQuery1.Active:=false;
ADOQuery1.SQL.Add('SELECT CODIGO, NOME,SIT,CARGO FROM COLABORADOR WHERE CARGO<> ''MOTORISTA-DE-CAMINHAO'' and SIT=''ENTRADA'' ORDER BY NOME');
ADOQuery1.Active:=true;

ADOQuery3.SQL.Clear;
ADOQuery3.Active:=false;
ADOQuery3.SQL.Add('select * from cracha where cracha.codcolabcracha='''+codigo.Text+''' and disponibilidade= ''INDISPONIVEL''');
ADOQuery3.Active:=true;

PnlSearch.Visible:=false;
atribui.Caption:='Atribuir SAIDA ao Colaborador:';
verifica:='SAIDA';
DMUNT.ADODSFLUXO.Insert;
 DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
 DBEdit1.Text:=formatdatetime('hh:mm:ss',now);
DBEdit2.Text:='SAIDA';
Panel1.Visible:=TRUE;
Label3.CAPTION:='SAIDA DO COLABORADOR:';
Label5.Caption:='DATA SAIDA';
label2.Caption:='HORA SAIDA';
BitBtn1.VISIBLE:=FALSE;
BitBtn2.VISIBLE:=FALSE;

end;

procedure TFRMFLUXO.BitBtn3Click(Sender: TObject);
BEGIN
    if (DBLookupComboBox1.Text='')or (DBEdit3.Text='') or (DBEdit1.Text='') or ((DBLookupComboBox2.Visible=true) and(DBLookupComboBox2.Text='')) then
    begin
      showmessage('Favor preencher todos os campos corretamente');
      BitBtn4.Click;
    end
else

 begin

  PnlSearch.Visible:=true;
  Panel1.Visible:=FALSE;
  BitBtn1.VISIBLE:=TRUE;
  BitBtn2.VISIBLE:=TRUE;
  ADOQuery1.Close;
  ADOQuery1.open;
  ADOQuery1.refresh;
  pnluser.Color:=clTeal;


   if ADOQuery1.FieldByName('sit').Value=verifica then
   begin
   showmessage ('Ja foi dada '+verifica+' nesta pessoa'+#13+#13+'Impossivel atribuir '+VERIFICA+' a ' + DBLookupComboBox1.Text);
   end
   else
   begin
         //update cracha para visitantes
          begin
           if (cargo.Text='VISITANTE') and (verifica='ENTRADA') then
            begin
            ADOQuery4.CLOSE;
            ADOQUERY4.SQL.Clear;
            ADOQuery4.SQL.Add('update cracha set codcolabcracha='''+codigo.Text+''' , DISPONIBILIDADE = ''INDISPONIVEL'' where NCRACHA= '''+DBLookupComboBox2.Text+'''');
            ADOQuery4.ExecSQL;
            end;
           if (cargo.Text='VISITANTE') and (verifica='SAIDA') then
            begin
            ADOQuery4.CLOSE;
            ADOQUERY4.SQL.Clear;
            showmessage('FAVOR SOLICITAR DEVOLU��O DO CRACHA AO VISITANTE');
            ADOQuery4.SQL.Add('update cracha set codcolabcracha=NULL , DISPONIBILIDADE = ''DISPONIVEL'' where NCRACHA= '''+DBLookupComboBox2.Text+'''');
            ADOQuery4.ExecSQL;
            end;


          end;
          //fim do update cracha
               BEGIN
                ShowMessage('INSERIDO COM SUCESSO');
                DMUNT.ADODSFLUXO.POST;
                end;


       begin
        ADOQuery2.CLOSE;
        ADOQUERY2.SQL.Clear;
        ADOQUERY2.SQL.Add('UPDATE COLABORADOR SET SITTIME='''+DBEDIT1.Text+''' , SITDATE='''+DBEDIT3.Text+''' , SIT='''+dbedit2.text+''' WHERE NOME = '''+DBLookupComboBox1.text+'''');
        TRY
        ADOQUERY2.ExecSQL;
               //upd contador menu principal
               dmunt.ADODSUPDCAMINHAO.Active:=true;
               dmunt.ADODSUPDCAMINHAO.Open;
               dmunt.ADODSUPDCAMINHAO.Close;
               dmunt.ADODSUPDCAMINHAO.Open;

               dmunt.ADODSUPDpessoa.Active:=true;
               dmunt.ADODSUPDpessoa.Open;
               dmunt.ADODSUPDpessoa.Close;
               dmunt.ADODSUPDpessoa.Open;

               dmunt.ADODSUPMOTORISTA.Active:=true;
               dmunt.ADODSUPMOTORISTA.Open;
               dmunt.ADODSUPMOTORISTA.Close;
               dmunt.ADODSUPMOTORISTA.Open;
                 //fim do upd menu principal
        FINALLY
        end;

        end;
   end;

 end;

end;

procedure TFRMFLUXO.BitBtn4Click(Sender: TObject);
begin
DBLookupComboBox1.Enabled:=true;
DBLookupComboBox1.Visible:=true;

PnlSearch.Visible:=true;
ADOQuery1.Close;
ADOQuery1.open;
ADOQuery1.refresh;
pnluser.Color:=clTeal;

DMUNT.ADODSFLUXO.CANCEL;
Panel1.Visible:=FALSE;
BitBtn1.VISIBLE:=TRUE;
BitBtn2.VISIBLE:=TRUE;

end;

procedure TFRMFLUXO.BitBtn5Click(Sender: TObject);
begin
DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
DBEdit1.Text:=formatdatetime('hh:mm:ss',now);
end;

procedure TFRMFLUXO.BTN_SairClick(Sender: TObject);
begin
close;
end;

procedure TFRMFLUXO.Button1Click(Sender: TObject);
begin
DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
DBEdit1.Text:=formatdatetime('hh:mm:ss',now);
end;

procedure TFRMFLUXO.CADASTRARClick(Sender: TObject);
begin
frmcolab.ShowModal;
end;

procedure TFRMFLUXO.DBLookupComboBox1Click(Sender: TObject);
begin
if cargo.Text='VISITANTE' then
begin
CRACHA.Visible:=true;
DBLookupComboBox2.Visible:=true;
DBLookupComboBox2.Enabled:=true;
end
else if cargo.Text<>'VISITANTE' then
begin
CRACHA.Visible:=false;
DBLookupComboBox2.Visible:=false;
DBLookupComboBox2.Enabled:=false;
end;
end;

procedure TFRMFLUXO.FormActivate(Sender: TObject);
begin
BitBtn1.VISIBLE:=TRUE;
BitBtn2.VISIBLE:=TRUE;

PnlSearch.Visible:=true;
BitBtn1.Glyph.TransparentColor:=CLRED;
BitBtn2.Glyph.TransparentColor:=CLRED;
SpeedButton1.Glyph.TransparentColor:=CLRED;

ADOQuery1.ClOSE;
ADOQuery1.Open;
ADOQuery1.ExecSQL;
ADOQuery1.REFRESH;

ADOQuery3.ClOSE;
ADOQuery3.Open;
ADOQuery3.ExecSQL;
ADOQuery3.REFRESH;

Panel1.Visible:=FALSE;

Panel1.Visible:=FALSE;



end;

procedure TFRMFLUXO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DMUNT.ADODSFLUXO.CANCEL;
Panel1.Visible:=FALSE;
BitBtn1.VISIBLE:=TRUE;
BitBtn2.VISIBLE:=TRUE;
pnluser.Color:=clTeal;
BitBtn4.Click;//clicar no cancelar
close;
end;

procedure TFRMFLUXO.SpeedButton1Click(Sender: TObject);
begin
DMUNT.ADODSFLUXO.CANCEL;
Panel1.Visible:=FALSE;
BitBtn1.VISIBLE:=TRUE;
BitBtn2.VISIBLE:=TRUE;
pnluser.Color:=clTeal;
close;
end;


end.
