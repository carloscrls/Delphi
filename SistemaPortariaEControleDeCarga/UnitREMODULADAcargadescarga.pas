unit UnitREMODULADAcargadescarga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
   IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile;

type
  TfrmREMODULADAcargadescarga = class(TForm)
    NOME: TPanel;
    PNLBOTOES: TPanel;
    PNLCADASTRO: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PNLGRID: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    ADOGRID: TADOQuery;
    DSGRID: TDataSource;
    ADOGRIDCODCARGAOUDESCARGA: TAutoIncField;
    ADOGRIDPLACAFK: TStringField;
    ADOGRIDCODIGOCOLABFK: TIntegerField;
    ADOGRIDDATAENTRADA: TStringField;
    ADOGRIDHORAENTRADA: TStringField;
    ADOGRIDDATASAIDA: TStringField;
    ADOGRIDHORASAIDA: TStringField;
    ADOGRIDTIPO: TStringField;
    ADOGRIDNUMNFE: TStringField;
    ADOGRIDNUMLACRE: TStringField;
    ADOGRIDPESONFE: TStringField;
    ADOGRIDPESOBALANCAENTRADA: TFloatField;
    ADOGRIDPESOBALANCASAIDA: TFloatField;
    ADOGRIDPESOLIQUIDO: TFloatField;
    ADOGRIDPRODUTO: TStringField;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    CADASTRARCAM: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    CADASTRARMOT: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
    ADOPLACA: TADOQuery;
    ADOPLACAPLACA: TStringField;
    ADOPLACASIT: TStringField;
    DSPLACA: TDataSource;
    ADOMOTORISTA: TADOQuery;
    ADOMOTORISTACODIGO: TAutoIncField;
    ADOMOTORISTANOME: TStringField;
    ADOMOTORISTACARGO: TStringField;
    ADOMOTORISTASIT: TStringField;
    DSMOTORISTA: TDataSource;
    BTNSALVAR: TBitBtn;
    BTNCANCELAR: TBitBtn;
    DSUCAMINHAO: TDataSource;
    UPDATECAMINHAO: TADOQuery;
    UPDATECAMINHAOPLACA: TStringField;
    UPDATECAMINHAOSIT: TStringField;
    UPDATECOLAB: TADOQuery;
    UPDATECOLABNOME: TStringField;
    UPDATECOLABSIT: TStringField;
    DSUCOLAB: TDataSource;
    AGORAENTRADA: TButton;
    AGORASAIDA: TButton;
    EMAIL: TButton;
    IdSMTP1: TIdSMTP;
    LabelCLIE: TLabel;
    EditCLIENTE: TEdit;
    DBEditTransportadora: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BTNSALVARClick(Sender: TObject);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure AGORAENTRADAClick(Sender: TObject);
    procedure AGORASAIDAClick(Sender: TObject);
    procedure CADASTRARCAMClick(Sender: TObject);
    procedure CADASTRARMOTClick(Sender: TObject);
    procedure EMAILClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREMODULADAcargadescarga: TfrmREMODULADAcargadescarga;
   VERIFICA,ACAO:STRING;
implementation

{$R *.dfm}

uses DM, UNITCAMINHAO, COLAB;

procedure TfrmREMODULADAcargadescarga.BitBtn1Click(Sender: TObject);
begin
ACAO:='ENTRADA';
AGORAENTRADA.Visible:=TRUE;
AGORASAIDA.Visible:=FALSE;
NOME.Caption:= 'REGISTRAR ENTRADA';
PNLGRID.Visible:=false;
PNLCADASTRO.Visible:=true;
PNLBOTOES.Visible:=false;
BTNSALVAR.Caption:='SALVAR ENTRADA';
verifica:='ENTRADA';
DMUNT.ADODSCARGADESCARGA.INSERT;
  DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
  DBEdit1.Text:=formatdatetime('hh:mm',now);

  BEGIN
    CADASTRARCAM.Visible:=TRUE;
    CADASTRARMOT.Visible:=TRUE;
    DBEdit1.Visible:=TRUE;    // HORA ENTRADA
    DBEdit2.Visible:=TRUE;   //  N LACRE
    DBEdit3.Visible:=TRUE;  //  DENTRADA
    DBEdit4.Visible:=FALSE;  //HSAIDA
    DBEdit5.Visible:=FALSE;  //DSAIDA
    DBEdit6.Visible:=TRUE;  //N NFE
    DBEdit7.Visible:=FALSE;  //entrada
    DBEdit8.Visible:=FALSE;  // saida
    DBEdit9.Visible:=true;  // PESO NFE
    DBEdit10.Visible:=TRUE;  //PRODUTO
    DBEdit11.Visible:=FALSE;  //PESOLQDO
    EditCLIENTE.Visible:=TRUE; //CLIENTE


    DBEdit1.ENABLED:=TRUE;    // HORA ENTRADA
    DBEdit2.ENABLED:=TRUE;   //  N LACRE
    DBEdit3.ENABLED:=TRUE;  //  DENTRADA
    DBEdit4.ENABLED:=TRUE;  //HSAIDA
    DBEdit5.ENABLED:=TRUE;  //DSAIDA
    DBEdit6.ENABLED:=TRUE;  //N NFE
    DBEdit7.ENABLED:=TRUE;  //BRUTO
    DBEdit8.ENABLED:=TRUE;  // PESOSAIDA
    DBEdit9.ENABLED:=TRUE;  // PESO NFE
    DBEdit10.ENABLED:=TRUE;  //PRODUTO
    DBEdit11.ENABLED:=false;  //PESOLQDO
    EditCLIENTE.ENABLED:=TRUE; //CLIENTE

    Label2.Visible:=TRUE;  //HENTRADA
    Label3.Visible:=TRUE;  //PLACA
    Label4.Visible:=TRUE;  //MOTOR
    Label5.Visible:=TRUE;  // DENTRADA
    Label6.Visible:=TRUE;  // CARGA OU DESCARGA
    Label7.Visible:=FALSE;  // HSAIDA
    Label8.Visible:=FALSE;  // DSAIDA
    Label9.Visible:=TRUE;  // NLACRE
    Label10.Visible:=TRUE;  // N NFE
    Label11.Visible:=FALSE; // PESOENTRADA
    Label12.Visible:=FALSE; // PESOSAIDA
    Label13.Visible:=true;  //  PESO NFE
    Label14.Visible:=TRUE;  //   PRODUTO
    Label15.Visible:=FALSE;  //PES LQDO
    LabelCLIE.Visible:=TRUE; // CLIENTE LABEL

    DBLookupComboBox1.Enabled:=TRUE; //carga
    DBLookupComboBox2.Enabled:=TRUE; //motorista
    DBComboBox1.Enabled:=TRUE;//placa
   END;

ADOMOTORISTA.SQL.Clear;
ADOMOTORISTA.active:=false;
ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''SAIDA'' ORDER BY NOME');
ADOMOTORISTA.Active:=true;
ADOPLACA.SQL.Clear;
ADOPLACA.active:=false;
ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''SAIDA'' ORDER BY PLACA');
ADOPLACA.Active:=true;

end;

procedure TfrmREMODULADAcargadescarga.BitBtn2Click(Sender: TObject);
begin
if DBLookupComboBox2.Text<>'' then
 BEGIN
 ACAO:='PESOENTRADA';
 NOME.Caption:= 'REGISTRAR PESO ENTRADA';
 PNLGRID.Visible:=false;
 PNLCADASTRO.Visible:=true;
 PNLBOTOES.Visible:=false;
 BTNSALVAR.Caption:='SALVAR PESO';
 verifica:='ENTRADA';
 DMUNT.ADODSCARGADESCARGA.EDIT;

 ADOMOTORISTA.SQL.Clear;
 ADOMOTORISTA.active:=false;
 ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''ENTRADA'' ORDER BY NOME');
 ADOMOTORISTA.Active:=true;
 ADOPLACA.SQL.Clear;
 ADOPLACA.active:=false;
 ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''ENTRADA'' ORDER BY PLACA');
 ADOPLACA.Active:=true;
    BEGIN
    CADASTRARCAM.Visible:=FALSE;
    CADASTRARMOT.Visible:=FALSE;
     DBEdit1.Visible:=FALSE;    // HORA ENTRADA
     DBEdit2.Visible:=FALSE;   //  N LACRE
     DBEdit3.Visible:=FALSE;  //  DENTRADA
     DBEdit4.Visible:=FALSE;  //HSAIDA
     DBEdit5.Visible:=FALSE;  //DSAIDA
     DBEdit6.Visible:=FALSE;  //N NFE
     DBEdit7.Visible:=TRUE;  //PESO ENTRADA
     DBEdit8.Visible:=FALSE;  // PESO SAIDA
     DBEdit9.Visible:=FALSE;  // PESO NFE
     DBEdit10.Visible:=true;  //PRODUTO
     DBEdit11.Visible:=FALSE;  //PESOLQDO

     DBEdit1.ENABLED:=TRUE;    // HORA ENTRADA
     DBEdit2.ENABLED:=TRUE;   //  N LACRE
     DBEdit3.ENABLED:=TRUE;  //  DENTRADA
     DBEdit4.ENABLED:=TRUE;  //HSAIDA
     DBEdit5.ENABLED:=TRUE;  //DSAIDA
     DBEdit6.ENABLED:=TRUE;  //N NFE
     DBEdit7.ENABLED:=TRUE;  //PESO ENTRADA
     DBEdit8.ENABLED:=TRUE;  // PESO SAIDA
     DBEdit9.ENABLED:=TRUE;  // PESO NFE
     DBEdit10.ENABLED:=false;  //PRODUTO
     DBEdit11.ENABLED:=false;  //PESOLQDO
      EditCLIENTE.Visible:=FALSE; //CLIENTE


     Label2.Visible:=FALSE;  //HENTRADA
     Label3.Visible:=TRUE;  //PLACA
     Label4.Visible:=TRUE;  //MOTOR
     Label5.Visible:=FALSE;  // DENTRADA
     Label6.Visible:=TRUE;  // CARGA OU DESCARGA
     Label7.Visible:=FALSE;  // HSAIDA
     Label8.Visible:=FALSE;  // DSAIDA
     Label9.Visible:=FALSE;  // NLACRE
     Label10.Visible:=FALSE;  // N NFE
     Label11.Visible:=TRUE; // PESOENTRADA
     Label12.Visible:=FALSE; // PESOSAIDA
     Label13.Visible:=FALSE;  //  PESO NFE
     Label14.Visible:=true;  //   PRODUTO
     Label15.Visible:=FALSE;  //PES LQDO
     LabelCLIE.Visible:=FALSE; // CLIENTE LABEL

     DBLookupComboBox1.Enabled:=FALSE; //carga
     DBLookupComboBox2.Enabled:=FALSE; //motorista
     DBComboBox1.Enabled:=FALSE;//placa
    END;
 END
 ELSE
 BEGIN
   SHOWMESSAGE('Primeiro e preciso atribuir entrada a algum caminh�o');
 END;

 end;

procedure TfrmREMODULADAcargadescarga.BitBtn3Click(Sender: TObject);
begin
if (DBEdit7.Text<>'') AND (DBEdit8.Text<>'') then
 BEGIN
 DMUNT.ADODSCARGADESCARGA.EDIT;
 ACAO:='SAIDA';
 AGORAENTRADA.Visible:=FALSE;
 AGORASAIDA.Visible:=TRUE;
 NOME.Caption:= 'REGISTRAR SAIDA';
 PNLGRID.Visible:=false;
 PNLCADASTRO.Visible:=true;
 PNLBOTOES.Visible:=false;
 BTNSALVAR.Caption:='SALVAR SAIDA';
 verifica:='SAIDA';
   DBEdit4.Text:=formatdatetime('dd/mm/yyyy',now);
   DBEdit5.Text:=formatdatetime('hh:mm',now);

 ADOMOTORISTA.SQL.Clear;
 ADOMOTORISTA.active:=false;
 ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''ENTRADA'' ORDER BY NOME');
 ADOMOTORISTA.Active:=true;
 ADOPLACA.SQL.Clear;
 ADOPLACA.active:=false;
 ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''ENTRADA'' ORDER BY PLACA');
 ADOPLACA.Active:=true;

   BEGIN
    if DBComboBox1.ItemIndex=1 then //descarga
     begin
     DBEdit9.Visible:=FALSE;  // PESO NFE
     DBEdit6.Visible:=FALSE;  //N NFE
     DBEdit9.enabled:=FALSE;  // PESO NFE
     DBEdit6.enabled:=FALSE;  //N NFE
     Label13.Visible:=FALSE;  //  PESO NFE
     Label10.Visible:=FALSE;  // N NFE
     end;
     if DBComboBox1.ItemIndex=0 then //carga
     begin
     DBEdit9.Visible:=true;  // PESO NFE
     DBEdit6.Visible:=true;  //N NFE
     DBEdit9.enabled:=true;  // PESO NFE
     DBEdit6.enabled:=true;  //N NFE
     Label13.Visible:=true;  //  PESO NFE
     Label10.Visible:=true;  // N NFE
     end;

     begin
     CADASTRARCAM.Visible:=FALSE;
     CADASTRARMOT.Visible:=FALSE;
     DBEdit1.Visible:=TRUE;    // HORA ENTRADA
     DBEdit2.Visible:=TRUE;   //  N LACRE
     DBEdit3.Visible:=TRUE;  //  DENTRADA
     DBEdit4.Visible:=true;  //HSAIDA
     DBEdit5.Visible:=true;  //DSAIDA
     DBEdit7.Visible:=true;  //entrada
     DBEdit8.Visible:=true;  // saida
     DBEdit10.Visible:=true;  //PRODUTO
     DBEdit11.Visible:=true;  //PESOLQDO
      EditCLIENTE.Visible:=TRUE; //CLIENTE

     DBEdit1.ENABLED:=false;    // HORA ENTRADA
     DBEdit2.ENABLED:=false;   //  N LACRE
     DBEdit3.ENABLED:=false;  //  DENTRADA
     DBEdit4.ENABLED:=true;  //HSAIDA
     DBEdit5.ENABLED:=true;  //DSAIDA
     DBEdit7.ENABLED:=false;  //BRUTO
     DBEdit8.ENABLED:=false;  // PESOSAIDA
     DBEdit10.ENABLED:=false;  //PRODUTO
     DBEdit11.ENABLED:=false;  //PESOLQDO
      EditCLIENTE.ENABLED:=FALSE; //CLIENTE


     Label2.Visible:=TRUE;  //HENTRADA
     Label3.Visible:=TRUE;  //PLACA
     Label4.Visible:=TRUE;  //MOTOR
     Label5.Visible:=TRUE;  // DENTRADA
     Label6.Visible:=TRUE;  // CARGA OU DESCARGA
     Label7.Visible:=true;  // HSAIDA
     Label8.Visible:=true;  // DSAIDA
     Label9.Visible:=TRUE;  // NLACRE
     Label11.Visible:=true; // PESOENTRADA
     Label12.Visible:=true; // PESOSAIDA
     Label14.Visible:=TRUE;  //   PRODUTO
     Label15.Visible:=true;  //PES LQDO
     LabelCLIE.Visible:=TRUE; // CLIENTE LABEL

     DBLookupComboBox1.Enabled:=false; //carga
     DBLookupComboBox2.Enabled:=false; //motorista
     DBComboBox1.Enabled:=false;//placa

     END;
   END;
 END
 ELSE
 BEGIN
   SHOWMESSAGE('� necess�rio atribuir peso entrada e peso saida antes de "Registrar saida"');
 END;

end;

procedure TfrmREMODULADAcargadescarga.BitBtn4Click(Sender: TObject);
begin
if DBEdit7.text<>'' then
 begin
 ACAO:='PESOSAIDA';
 NOME.Caption:= 'REGISTRAR PESO SAIDA';
 PNLGRID.Visible:=false;
 PNLCADASTRO.Visible:=true;
 PNLBOTOES.Visible:=false;
 BTNSALVAR.Caption:='SALVAR PESO';
 verifica:='ENTRADA';//ainda nao demos saida no motorista e caminhao
 DMUNT.ADODSCARGADESCARGA.EDIT;

 ADOMOTORISTA.SQL.Clear;
 ADOMOTORISTA.active:=false;
 ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''ENTRADA'' ORDER BY NOME');
 ADOMOTORISTA.Active:=true;
 ADOPLACA.SQL.Clear;
 ADOPLACA.active:=false;
 ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''ENTRADA'' ORDER BY PLACA');
 ADOPLACA.Active:=true;
   BEGIN
     CADASTRARCAM.Visible:=FALSE;
     CADASTRARMOT.Visible:=FALSE;
     DBEdit1.Visible:=false;    // HORA ENTRADA oi
     DBEdit2.Visible:=false;   //  N LACRE
     DBEdit3.Visible:=false;  //  DENTRADA
     DBEdit4.Visible:=false;  //HSAIDA
     DBEdit5.Visible:=false;  //DSAIDA
     DBEdit6.Visible:=false;  //N NFE
     DBEdit7.Visible:=true;  //pentrada
     DBEdit8.Visible:=true;  // psaida
     DBEdit9.Visible:=false;  // PESO NFE
     DBEdit10.Visible:=true;  //PRODUTO
     DBEdit11.Visible:=true;  //PESOLQDO

     DBEdit1.ENABLED:=false;    // HORA ENTRADA
     DBEdit2.ENABLED:=false;   //  N LACRE
     DBEdit3.ENABLED:=false;  //  DENTRADA
     DBEdit4.ENABLED:=false;  //HSAIDA
     DBEdit5.ENABLED:=false;  //DSAIDA
     DBEdit6.ENABLED:=false;  //N NFE
     DBEdit7.ENABLED:=false;  //BRUTO
     DBEdit8.ENABLED:=true;  // PESOSAIDA
     DBEdit9.ENABLED:=false;  // PESO NFE
     DBEdit10.ENABLED:=false;  //PRODUTO
     DBEdit11.ENABLED:=false;  //PESOLQDO


     Label2.Visible:=false;  //HENTRADA
     Label3.Visible:=false;  //PLACA
     Label4.Visible:=false;  //MOTOR
     Label5.Visible:=false;  // DENTRADA
     Label6.Visible:=true;  // CARGA OU DESCARGA
     Label7.Visible:=false;  // HSAIDA
     Label8.Visible:=false;  // DSAIDA
     Label9.Visible:=false;  // NLACRE
     Label10.Visible:=false;  // N NFE
     Label11.Visible:=true; // PESOENTRADA
     Label12.Visible:=true; // PESOSAIDA
     Label13.Visible:=false;  //  PESO NFE
     Label14.Visible:=true;  //   PRODUTO
     Label15.Visible:=true;  //PES LQDO
     EditCLIENTE.Visible:=FALSE; //CLIENTE
     LabelCLIE.Visible:=FALSE; // CLIENTE LABEL

     DBLookupComboBox1.Enabled:=false; //carga
     DBLookupComboBox2.Enabled:=false; //motorista
     DBComboBox1.Enabled:=false;//placa
    END;
 end
 else
 begin
   showmessage('Falta atribuir peso entrada a um caminh�o'+#13+'Abrindo "Registrar Peso Entrada"');
   BitBtn2.Click;

 end;

end;

procedure TfrmREMODULADAcargadescarga.BTNCANCELARClick(Sender: TObject);
begin
NOME.Caption:= 'CARGA E DESCARGA';
AGORAENTRADA.Visible:=FALSE;
AGORASAIDA.Visible:=FALSE;
DMUNT.ADODSCARGADESCARGA.Cancel;
PNLCADASTRO.Visible:=false;
PNLBOTOES.Visible:=true;
PNLGRID.Visible:=true;
end;

procedure TfrmREMODULADAcargadescarga.BTNSALVARClick(Sender: TObject);
VAR VALIDADO : string;
begin
  VALIDADO:='ERRO';

  if (ACAO='ENTRADA')   and
     (DBEdit1.text<>'')and
     (DBEdit3.text<>'')and
     (DBEdit10.text<>'')and
     (DBLookupComboBox1.text<>'')and
     (DBLookupComboBox2.text<>'')and
     (DBComboBox1.text<> '')and
     (EditCLIENTE.TEXT<>'')
      then
      begin
         VALIDADO:='OK';

         if DBComboBox1.ItemIndex=0 then //carga
          begin
           showmessage('ENRTADA REGISTRADA'+#13'CLIQUE OK PARA GERAR O TICKET E AGUARDE...');
           EMAIL.Click;

          end
          ELSE
          if DBComboBox1.ItemIndex=1 then //descarga
          BEGIN
            showmessage('ENRTADA REGISTRADA');
          END;

      end;

  if (ACAO='PESOENTRADA')  and
     (DBEdit7.text<>  '')     //pentrada
      then
      begin
         VALIDADO:='OK';
         showmessage('PESO ENTRADA REGISTRADO');

      end;

  if (ACAO='PESOSAIDA')   and
     (DBEdit8.text<>  '')and     // psaida
     (DBEdit11.text<> '')    //PESOLQDO
      then
      begin
         VALIDADO:='OK';
         showmessage('PESO SAIDA REGISTRADO');

      end;

  if (ACAO='SAIDA')   and
     (DBEdit1.text<>  '')and    // HORA ENTRADA oi
     (DBEdit3.text<>  '')and    //  DENTRADA
     (DBEdit4.text<>  '')and     //HSAIDA
     (DBEdit5.text<>  '')and     //DSAIDA
     (DBEdit6.text<>  '')and     //N NFE
     (DBEdit7.text<>  '')and     //pentrada
     (DBEdit8.text<>  '')and     // psaida
     (DBEdit9.text<>  '')and     // PESO NFE
     (DBEdit10.text<> '')and     //PRODUTO
     (DBEdit11.text<> '')and    //PESOLQDO
     (DBLookupComboBox1.text<> '')and  //carga
     (DBLookupComboBox2.text<> '')and  //motorista
     (DBComboBox1.text<> '')//placa
      then
      begin
         VALIDADO:='OK';
         showmessage('SAIDA REGISTRADA');
      end;




 if (VALIDADO = 'OK') then
  begin
    begin
    UPDATECAMINHAO.Close;
    UPDATECAMINHAO.SQL.Clear;
    UPDATECAMINHAO.SQL.Add('UPDATE CAMINHAO SET SIT= '''+VERIFICA+''' WHERE PLACA = '''+DBLOOKUPCOMBOBOX1.TEXT+'''');
    UPDATECOLAB.Close;
    UPDATECOLAB.SQL.Clear;
    UPDATECOLAB.SQL.Add('UPDATE COLABORADOR SET SIT= '''+VERIFICA+''' WHERE NOME = '''+DBLOOKUPCOMBOBOX2.TEXT+'''');
    UPDATECAMINHAO.ExecSQL;
    UPDATECOLAB.ExecSQL;

      // inicio do upd contador
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
    end;



   //fim de tudo
   PNLCADASTRO.Visible:=false;
   PNLBOTOES.Visible:=true;
   PNLGRID.Visible:=true;

   DMUNT.ADODSCARGADESCARGA.POST; //!!!!!!!POST !!!!!!!!!!!
   NOME.Caption:= 'CARGA E DESCARGA';
   AGORAENTRADA.Visible:=FALSE;
   AGORASAIDA.Visible:=FALSE;

   PNLCADASTRO.Visible:=false;
   PNLBOTOES.Visible:=true;
   PNLGRID.Visible:=true;
  //UPDATE GRID
  DMUNT.ADODSCARGADESCARGA.CLOSE;
  DMUNT.ADODSCARGADESCARGA.CommandText:='select * from CARGAOUDESCARGA  WHERE DATASAIDA IS NULL ';
  DMUNT.ADODSCARGADESCARGA.OPEN;
  end
  else
  begin
    Showmessage('Favor Preencher todos os campos corretamente !!!');
  end;
end;

procedure TfrmREMODULADAcargadescarga.CADASTRARCAMClick(Sender: TObject);
begin
FRMCAMINHAO.ShowModal;
BTNCANCELAR.Click;

end;

procedure TfrmREMODULADAcargadescarga.CADASTRARMOTClick(Sender: TObject);
begin
frmcolab.ShowModal;
BTNCANCELAR.Click;
end;

procedure TfrmREMODULADAcargadescarga.AGORAENTRADAClick(Sender: TObject);
begin
  DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
  DBEdit1.Text:=formatdatetime('hh:mm',now);
end;

procedure TfrmREMODULADAcargadescarga.AGORASAIDAClick(Sender: TObject);
begin
  DBEdit4.Text:=formatdatetime('dd/mm/yyyy',now);
  DBEdit5.Text:=formatdatetime('hh:mm',now);
end;

procedure TfrmREMODULADAcargadescarga.DBComboBox1Change(Sender: TObject);
begin
    if DBComboBox1.ItemIndex=0 then //carga
    begin
    DBEdit9.Visible:=FALSE;  // PESO NFE
    DBEdit6.Visible:=FALSE;  //N NFE
    DBEdit9.enabled:=FALSE;  // PESO NFE
    DBEdit6.enabled:=FALSE;  //N NFE
    Label13.Visible:=FALSE;  //  PESO NFE
    Label10.Visible:=FALSE;  // N NFE
    NOME.Caption:='REGISTRAR ENTRADA CARGA';
    end;
    if DBComboBox1.ItemIndex=1 then //descarga
    begin
    DBEdit9.Visible:=true;  // PESO NFE
    DBEdit6.Visible:=true;  //N NFE
    DBEdit9.enabled:=true;  // PESO NFE
    DBEdit6.enabled:=true;  //N NFE
    Label13.Visible:=true;  //  PESO NFE
    Label10.Visible:=true;  // N NFE
    NOME.Caption:='REGISTRAR ENTRADA DESCARGA';
    end;
end;

procedure TfrmREMODULADAcargadescarga.DBEdit8Change(Sender: TObject);
begin
if DBEdit8.Text='' then
//DBEdit8.Text:='0'
ELSE
 BEGIN

  if ACAO='PESOSAIDA' then
   BEGIN
   if DBComboBox1.ItemIndex=0 then //CARGA
    BEGIN
      if (dbedit8.Text <> '') and (DBEdit7.Text <> '') then
       DBEdit11.Text:= FLOATTOSTR (STRTOFLOAT (DBEdit8.TEXT) - STRTOFLOAT (DBEdit7.TEXT));
     END;
    if DBComboBox1.ItemIndex=1 then //DESCARGA
    BEGIN
      if (dbedit8.Text <> '') and (DBEdit7.Text <> '') then
      DBEdit11.Text:= FLOATTOSTR (STRTOFLOAT (DBEdit7.TEXT) - STRTOFLOAT (DBEdit8.TEXT));
    END;

   END;
 END;
end;

procedure TfrmREMODULADAcargadescarga.EMAILClick(Sender: TObject);
var
  // vari�veis e objetos necess�rios para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
  // instancia��o dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configura��o do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configura��o do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseExplicitTLS;//utUseImplicitTLS; //ISTO RESOLVE O PROBLEMA DO SSL
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 587;
    IdSMTP.Host := 'webmail.pqcorp.com';
    IdSMTP.Username := 'portariarc';
    IdSMTP.Password := 'portariarc';

    // Configura��o da mensagem (TIdMessage)
    IdMessage.From.Address := 'portaria.rioclaro@pqcorp.com';
    IdMessage.From.Name := 'portariarc';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := 'EXPEDICAO.PQRC@pqcorp.com';
    IdMessage.Recipients.Add.Text := 'CARLOS.TAVARES@pqcorp.com'; // opcional
    //IdMessage.Recipients.Add.Text := 'destinatario3@email.com'; // opcional
    IdMessage.Subject := 'Ticket de carga  '+ EditCLIENTE.TEXT +'  '+ FormatDateTime('DD/MM/YYYY',now);
    IdMessage.Encoding := meMIME;

    // Configura��o do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('CLIENTE: '+   EditCLIENTE.text); //CLIENTE
    IdText.Body.Add('TRANPORTADORA: '+   DBEditTransportadora.text);
    IdText.Body.Add('PRODUTO: '+   DBEdit10.text);  //PRODUTO
    IdText.Body.Add('DATA DA ENTRADA:   '+   DBEdit3.text);  //  DENTRADA
    IdText.Body.Add('HORA ENTRADA: '+   DBEdit1.text);    // HORA ENTRADA
    IdText.Body.Add('PLACA: '+   DBLOOKUPCOMBOBOX1.TEXT);//PLACA
    IdText.Body.Add('MOTORISTA: '+   DBLOOKUPCOMBOBOX2.TEXT);//MOTORISTA
    IdText.Body.Add('NUMERO DO LACRE:'+   DBEdit2.text);   //  N LACRE

    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    sAnexo := 'C:\relatorio.pdf';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;

    // Conex�o e autentica��o
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conex�o ou autentica��o: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Tiket enviado com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Erro ao enviar o Tiket : ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // libera��o da DLL
    UnLoadOpenSSLLibrary;
    // libera��o dos objetos da mem�ria
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;


procedure TfrmREMODULADAcargadescarga.FormActivate(Sender: TObject);
begin
frmREMODULADAcargadescarga.Height:=412;

DBComboBox1.Items.Add('CARGA');
DBComboBox1.Items.Add('DESCARGA');


 NOME.Caption:= 'CARGA E DESCARGA';
 DMUNT.ADODSCARGADESCARGA.CLOSE;
 DMUNT.ADODSCARGADESCARGA.CommandText:=' select * from CARGAOUDESCARGA  WHERE DATASAIDA IS NULL ';
 DMUNT.ADODSCARGADESCARGA.OPEN;

PNLCADASTRO.Visible:=false;
PNLBOTOES.Visible:=true;
PNLGRID.Visible:=true;

DMUNT.ADODSCARGADESCARGA.Active :=FALSE;
DMUNT.ADODSCOLAB.Active:=FALSE;
DMUNT.ADODSCAMINHAO.Active:=FALSE;

DMUNT.ADODSCARGADESCARGA.Active :=TRUE;
DMUNT.ADODSCOLAB.Active:=TRUE;
DMUNT.ADODSCAMINHAO.Active:=TRUE;
end;

procedure TfrmREMODULADAcargadescarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
BTNCANCELAR.Click;
close;
end;

end.