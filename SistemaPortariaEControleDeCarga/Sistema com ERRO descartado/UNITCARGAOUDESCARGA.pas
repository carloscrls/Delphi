unit UNITCARGAOUDESCARGA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFRMCARGADESCARGA = class(TForm)
    PnlSearch: TPanel;
    PnlUser: TPanel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label5: TLabel;
    atribui: TLabel;
    DBEdit3: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    CADASTRARCAM: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    CADASTRARMOT: TBitBtn;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    ADOPLACA: TADOQuery;
    ADOMOTORISTA: TADOQuery;
    DSPLACA: TDataSource;
    DSMOTORISTA: TDataSource;
    BitBtnENTRADA: TBitBtn;
    BitBtnSAIDA: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit22: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    ADOMOTORISTACODIGO: TAutoIncField;
    ADOMOTORISTANOME: TStringField;
    ADOMOTORISTACARGO: TStringField;
    ADOMOTORISTASIT: TStringField;
    UPDATECOLAB: TADOQuery;
    UPDATECAMINHAO: TADOQuery;
    DSUCOLAB: TDataSource;
    DSUCAMINHAO: TDataSource;
    UPDATECOLABNOME: TStringField;
    UPDATECOLABSIT: TStringField;
    UPDATECAMINHAOPLACA: TStringField;
    UPDATECAMINHAOSIT: TStringField;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    ADOPLACAPLACA: TStringField;
    ADOPLACASIT: TStringField;
    adogrid: TADOQuery;
    adogridcodcargaoudescarga: TAutoIncField;
    adogridplacafk: TStringField;
    adogridhoraentrada: TStringField;
    adogridhorasaida: TStringField;
    adogridtipo: TStringField;
    DSGRID: TDataSource;
    adogridNOME: TStringField;
    Panel2: TPanel;
    Label20: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnENTRADAClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtnSAIDAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure CADASTRARMOTClick(Sender: TObject);
    procedure CADASTRARCAMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMCARGADESCARGA: TFRMCARGADESCARGA;
    VERIFICA:STRING;
    acao:string;
implementation

{$R *.dfm}

uses DM, UNITCAMINHAO, COLAB, UnitEDITAR, REGCOLAB, UNITREGCAMINHAO;

procedure TFRMCARGADESCARGA.BitBtn1Click(Sender: TObject);
begin
  acao:='TIKET';
  CADASTRARCAM.Visible:=false;
  CADASTRARMOT.Visible:=false;
  if DBComboBox1.ItemIndex=0 then // carga
  begin
  Button1.Visible:=false;
  dbedit6.visible:=true;
  Label10.Visible:=true;
  DBEdit9.Visible:=true;
  DBEdit9.Text:='';//deixar em branco para inserir dados
  Label13.Visible:=true;
  end
  else if DBComboBox1.ItemIndex=1 then // descarga
  begin
  dbedit6.visible:=false;
  Label10.Visible:=false;
  DBEdit9.Visible:=false;
  Label13.Visible:=false;
  end;

ADOMOTORISTA.SQL.Clear;
ADOMOTORISTA.active:=false;
ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''ENTRADA'' ORDER BY NOME');
ADOMOTORISTA.Active:=true;

ADOPLACA.SQL.Clear;
ADOPLACA.active:=false;
ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''ENTRADA'' ORDER BY PLACA');
ADOPLACA.Active:=true;


//UPDATE VERIFICADOR
ADOPLACA.CLOSE;
ADOMOTORISTA.CLOSE;
ADOPLACA.OPEN;
ADOMOTORISTA.OPEN;
ADOPLACA.REFRESH;
ADOMOTORISTA.REFRESH;
  BEGIN

    DBEdit1.Visible:=FALSE;
    DBEdit2.Visible:=FALSE;
    DBEdit3.Visible:=FALSE;
    DBEdit4.Visible:=false;
    DBEdit5.Visible:=false;
    //DBEdit6.Visible:=FALSE;
    DBEdit7.Visible:=FALSE;
    DBEdit8.Visible:=TRUE;
    //DBEdit9.Visible:=FALSE;
    DBEdit10.Visible:=FALSE;
    DBEdit11.Visible:=TRUE;


    Label2.Visible:=FALSE;
    Label3.Visible:=TRUE;
    Label4.Visible:=TRUE;
    Label5.Visible:=FALSE;
    Label6.Visible:=TRUE;
    Label7.Visible:=false;
    Label8.Visible:=false;
    Label9.Visible:=FALSE;
    //Label10.Visible:=FALSE;
    Label11.Visible:=FALSE;
    Label12.Visible:=TRUE;
    //Label13.Visible:=FALSE;
    Label14.Visible:=FALSE;
    Label15.Visible:=TRUE;
    Label20.Visible:=FALSE;

    DBLookupComboBox1.Enabled:=FALSE;
    DBLookupComboBox2.Enabled:=FALSE;
    DBComboBox1.Enabled:=FALSE;

  END;

PANEL2.Visible:=FALSE;
atribui.Caption:='Atribuir SAIDA ao CAMINHAO:';
verifica:='SAIDA';
//TESTE
DMUNT.ADODSCARGADESCARGA.CLOSE;
DMUNT.ADODSCARGADESCARGA.CommandText:=('SELECT * FROM CARGAOUDESCARGA WHERE datasaida IS NULL');
DMUNT.ADODSCARGADESCARGA.OPEN;
DMUNT.ADODSCARGADESCARGA.EDIT;

  //DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
  //DBEdit1.Text:=formatdatetime('hh:mm:ss',now);
  //DBEdit4.Text:=formatdatetime('dd/mm/yyyy',now);
  //DBEdit5.Text:=formatdatetime('hh:mm',now);

DBEdit22.Text:='SAIDA'; //DBEDIT INVISIVEL PARA INSER��O

Panel1.Visible:=TRUE;

BitBtnENTRADA.VISIBLE:=FALSE;
BitBtnSAIDA.VISIBLE:=FALSE;

 {if DBEDIT3.Text='' then
  BEGIN
  SHOWMESSAGE('NAO TEM NENHUM CAMINHAO DENTRO DA PQ ATUALMENTE');
  BitBtn4.Click;
  END;}

 end;



procedure TFRMCARGADESCARGA.BitBtn3Click(Sender: TObject);
VAR PESOLIQUIDO,PESOENTRADA,PESOSAIDA :REAL;

    begin
     PESOLIQUIDO:=0;//inicializa variavel
    if DBEdit23.Text=VERIFICA then    //TESTE DE VERIFICA�AO ENTRADA SAIDA
     begin
      SHOWMESSAGE('IMPOSSIVEL ATRIBUIR '+VERIFICA+ ' AO '+ DBLookupComboBox2.Text);
      BitBtn4.Click;
     end
     else if DBEdit24.Text=VERIFICA then
     begin
      SHOWMESSAGE('IMPOSSIVEL ATRIBUIR '+ VERIFICA+' A PLACA: '+DBLookupComboBox1.Text);
      PESOLIQUIDO:=0;
      BitBtn4.Click;
     end
     else //FIM DO TESTE DE VERIFICA�AO ENTRADA SAIDA

      BEGIN
      if verifica='SAIDA' then
       begin
        PESOENTRADA:= StrToFloat(DBEdit7.Text);
        PESOSAIDA:= StrToFloat(DBEdit8.Text);

        if DBComboBox1.ItemIndex=0 then //CARGA
        PESOLIQUIDO:=PESOSAIDA - PESOENTRADA
        ELSE if DBComboBox1.ItemIndex=1 then //DESCARGA
        PESOLIQUIDO:=PESOENTRADA - PESOSAIDA ;
       end;
      END;

      begin
      if (DBEdit23.Text<>VERIFICA) AND (DBEdit24.Text<>VERIFICA)
      and (DBEdit7.text<>'') and (DBedit9.text<>'')  THEN
       BEGIN
        DBEdit11.Text:=FLOATTOSTR (PESOLIQUIDO);
        DMUNT.ADODSCARGADESCARGA.POST;
        ShowMessage('INSERIDO COM SUCESSO');
        Panel1.Visible:=FALSE;
        BITBTNENTRADA.VISIBLE:=TRUE;
        BITBTNSAIDA.VISIBLE:=TRUE;
             begin
              if acao<>'TIKET' then
              begin
               UPDATECAMINHAO.Close;
               UPDATECAMINHAO.SQL.Clear;
               UPDATECAMINHAO.SQL.Add('UPDATE CAMINHAO SET SIT= '''+VERIFICA+''' WHERE PLACA = '''+DBLOOKUPCOMBOBOX1.TEXT+'''');
               UPDATECOLAB.Close;
               UPDATECOLAB.SQL.Clear;
               UPDATECOLAB.SQL.Add('UPDATE COLABORADOR SET SIT= '''+VERIFICA+''' WHERE NOME = '''+DBLOOKUPCOMBOBOX2.TEXT+'''');
              end;


              TRY
               BEGIN
                UPDATECAMINHAO.ExecSQL;
                UPDATECOLAB.ExecSQL;
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
               END;
              FINALLY
              END;
             END;
         Button1.Visible:=true;
         PANEL2.Visible:=TRUE;
         adogrid.Close;
         adogrid.Open;
         ADOGRID.ExecSQL;
         END
         else
         begin
           ShowMessage('ERRO Nenhum campo pode estar vazio'+#13+'Campos de PESO ou Num da nota fiscal n�o podem estar vazios');
         end;
       end;


    end;




procedure TFRMCARGADESCARGA.BitBtn4Click(Sender: TObject);
begin
Button1.Visible:=true;
DMUNT.ADODSCARGADESCARGA.CANCEL;
ShowMessage('CANCELADO COM SUCESSO');
Panel1.Visible:=FALSE;
BitBtnENTRADA.VISIBLE:=TRUE;
BitBtnSAIDA.VISIBLE:=TRUE;

PANEL2.Visible:=TRUE;
adogrid.Close;
adogrid.Open;
end;

procedure TFRMCARGADESCARGA.CADASTRARMOTClick(Sender: TObject);
begin
frmcolab.Showmodal;
BitBtn4.Click;
end;

procedure TFRMCARGADESCARGA.BitBtnENTRADAClick(Sender: TObject);
BEGIN
  acao:='ENTRADA';
  CADASTRARCAM.Visible:=true;
  CADASTRARMOT.Visible:=true;
  if DBComboBox1.ItemIndex=0 then // carga
  begin
  Button1.Visible:=false;
  dbedit6.visible:=false;
  Label10.Visible:=false;
  DBEdit9.Visible:=false;
  DBEdit9.Text:='0';//nao deixar em branco
  Label13.Visible:=false;
  end
  else if DBComboBox1.ItemIndex=1 then // descarga
  begin
  dbedit6.visible:=true;
  Label10.Visible:=true;
  DBEdit9.Visible:=true;
  Label13.Visible:=true;
  end;

//lista somente pessoas e placas que est�o fora
ADOMOTORISTA.SQL.Clear;
ADOMOTORISTA.active:=false;
ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''SAIDA'' ORDER BY NOME');
ADOMOTORISTA.Active:=true;

ADOPLACA.SQL.Clear;
ADOPLACA.active:=false;
ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''SAIDA'' ORDER BY PLACA');
ADOPLACA.Active:=true;


//UPDATE VERIFICADOR
ADOPLACA.CLOSE;
ADOMOTORISTA.CLOSE;
ADOPLACA.OPEN;
ADOMOTORISTA.OPEN;
ADOPLACA.REFRESH;
ADOMOTORISTA.REFRESH;

  BEGIN

    DBEdit1.Visible:=TRUE;
    DBEdit2.Visible:=TRUE;
    DBEdit3.Visible:=TRUE;
    DBEdit4.Visible:=FALSE;
    DBEdit5.Visible:=FALSE;
    //DBEdit6.Visible:=TRUE;
    DBEdit7.Visible:=TRUE;
    DBEdit8.Visible:=FALSE;
    //DBEdit9.Visible:=TRUE;
    DBEdit10.Visible:=TRUE;
    DBEdit11.Visible:=FALSE;


    Label2.Visible:=TRUE;
    Label3.Visible:=TRUE;
    Label4.Visible:=TRUE;
    Label5.Visible:=TRUE;
    Label6.Visible:=TRUE;
    Label7.Visible:=FALSE;
    Label8.Visible:=FALSE;
    Label9.Visible:=TRUE;
    //Label10.Visible:=TRUE;
    Label11.Visible:=TRUE;
    Label12.Visible:=FALSE;
    //Label13.Visible:=TRUE;
    Label14.Visible:=TRUE;
    Label15.Visible:=FALSE;
    Label20.Visible:=TRUE;

    DBLookupComboBox1.Enabled:=TRUE;
    DBLookupComboBox2.Enabled:=TRUE;
    DBComboBox1.Enabled:=TRUE;


  END;


PANEL2.Visible:=FALSE;
atribui.Caption:='Atribuir ENTRADA ao CAMINHAO:';
verifica:='ENTRADA';
DMUNT.ADODSCARGADESCARGA.Insert;

  DBEdit3.Text:=formatdatetime('dd/mm/yyyy',now);
  DBEdit1.Text:=formatdatetime('hh:mm',now);

//  DBEdit4.Text:=formatdatetime('dd/mm/yyyy',now);
//  DBEdit5.Text:=formatdatetime('hh:mm:ss',now);

DBEdit22.Text:='ENTRADA'; //DBEDIT INVISIVEL PARA INSER��O

Panel1.Visible:=TRUE;

BitBtnENTRADA.VISIBLE:=FALSE;
BitBtnSAIDA.VISIBLE:=FALSE;

end;

procedure TFRMCARGADESCARGA.BitBtnSAIDAClick(Sender: TObject);
begin
  acao:='SAIDA';
  CADASTRARCAM.Visible:=false;
  CADASTRARMOT.Visible:=false;
  if DBComboBox1.ItemIndex=0 then // carga
  begin
  Button1.Visible:=false;
  dbedit6.visible:=true;
  Label10.Visible:=true;
  DBEdit9.Visible:=true;
  DBEdit9.Text:='';//deixar em branco para inserir dados
  Label13.Visible:=true;
  end
  else if DBComboBox1.ItemIndex=1 then // descarga
  begin
  dbedit6.visible:=false;
  Label10.Visible:=false;
  DBEdit9.Visible:=false;
  Label13.Visible:=false;
  end;

ADOMOTORISTA.SQL.Clear;
ADOMOTORISTA.active:=false;
ADOMOTORISTA.SQL.Add('SELECT CODIGO, NOME, CARGO,SIT FROM COLABORADOR WHERE CARGO = ''MOTORISTA-DE-CAMINHAO'' and SIT=''ENTRADA'' ORDER BY NOME');
ADOMOTORISTA.Active:=true;

ADOPLACA.SQL.Clear;
ADOPLACA.active:=false;
ADOPLACA.SQL.Add('SELECT PLACA,SIT FROM CAMINHAO where sit=''ENTRADA'' ORDER BY PLACA');
ADOPLACA.Active:=true;


//UPDATE VERIFICADOR
ADOPLACA.CLOSE;
ADOMOTORISTA.CLOSE;
ADOPLACA.OPEN;
ADOMOTORISTA.OPEN;
ADOPLACA.REFRESH;
ADOMOTORISTA.REFRESH;
  BEGIN

    DBEdit1.Visible:=FALSE;
    DBEdit2.Visible:=FALSE;
    DBEdit3.Visible:=FALSE;
    DBEdit4.Visible:=TRUE;
    DBEdit5.Visible:=TRUE;
    //DBEdit6.Visible:=FALSE;
    DBEdit7.Visible:=FALSE;
    DBEdit8.Visible:=TRUE;
    //DBEdit9.Visible:=FALSE;
    DBEdit10.Visible:=FALSE;
    DBEdit11.Visible:=TRUE;


    Label2.Visible:=FALSE;
    Label3.Visible:=TRUE;
    Label4.Visible:=TRUE;
    Label5.Visible:=FALSE;
    Label6.Visible:=TRUE;
    Label7.Visible:=TRUE;
    Label8.Visible:=TRUE;
    Label9.Visible:=FALSE;
    //Label10.Visible:=FALSE;
    Label11.Visible:=FALSE;
    Label12.Visible:=TRUE;
    //Label13.Visible:=FALSE;
    Label14.Visible:=FALSE;
    Label15.Visible:=TRUE;
    Label20.Visible:=FALSE;

    DBLookupComboBox1.Enabled:=FALSE;
    DBLookupComboBox2.Enabled:=FALSE;
    DBComboBox1.Enabled:=FALSE;

  END;

PANEL2.Visible:=FALSE;
atribui.Caption:='Atribuir SAIDA ao CAMINHAO:';
verifica:='SAIDA';
//TESTE
DMUNT.ADODSCARGADESCARGA.CLOSE;
DMUNT.ADODSCARGADESCARGA.CommandText:=('SELECT * FROM CARGAOUDESCARGA WHERE PESOBALANCASAIDA IS NULL');
DMUNT.ADODSCARGADESCARGA.OPEN;
DMUNT.ADODSCARGADESCARGA.EDIT;

  DBEdit4.Text:=formatdatetime('dd/mm/yyyy',now);
  DBEdit5.Text:=formatdatetime('hh:mm',now);

DBEdit22.Text:='SAIDA'; //DBEDIT INVISIVEL PARA INSER��O

Panel1.Visible:=TRUE;

BitBtnENTRADA.VISIBLE:=FALSE;
BitBtnSAIDA.VISIBLE:=FALSE;

 if DBEDIT3.Text='' then
  BEGIN
  SHOWMESSAGE('NAO TEM NENHUM CAMINHAO DENTRO DA PQ ATUALMENTE');
  BitBtn4.Click;
  END;

 end;

procedure TFRMCARGADESCARGA.Button1Click(Sender: TObject);
begin
FRMEDITAR.SHOWMODAL;
end;

procedure TFRMCARGADESCARGA.CADASTRARCAMClick(Sender: TObject);
begin
FRMCAMINHAO.ShowModal;
BitBtn4.Click;
end;

procedure TFRMCARGADESCARGA.DBComboBox1Change(Sender: TObject);
begin
  if DBComboBox1.ItemIndex=0 then // carga
  begin
  dbedit6.visible:=false;
  Label10.Visible:=false;
  DBEdit9.Visible:=false;
  DBEdit9.Text:='0';//nao deixar em branco
  Label13.Visible:=false;
  end
  else if DBComboBox1.ItemIndex=1 then // descarga
  begin
  dbedit6.visible:=true;
  Label10.Visible:=true;
  DBEdit9.Visible:=true;
  Label13.Visible:=true;
  end;
end;

procedure TFRMCARGADESCARGA.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  DBEdit4.Text:=formatdatetime('dd/mm/yyyy',now);
  DBEdit5.Text:=formatdatetime('hh:mm',now);
end;

procedure TFRMCARGADESCARGA.FormActivate(Sender: TObject);
begin
      BEGIN
      DBEdit1.Visible:=TRUE;
      DBEdit2.Visible:=TRUE;
      DBEdit3.Visible:=TRUE;
      DBEdit4.Visible:=TRUE;
      DBEdit5.Visible:=TRUE;
      DBEdit6.Visible:=TRUE;
      DBEdit7.Visible:=TRUE;
      DBEdit8.Visible:=TRUE;
      DBEdit9.Visible:=TRUE;
      DBEdit10.Visible:=TRUE;
      DBEdit11.Visible:=TRUE;


      Label2.Visible:=TRUE;
      Label3.Visible:=TRUE;
      Label4.Visible:=TRUE;
      Label5.Visible:=TRUE;
      Label6.Visible:=TRUE;
      Label7.Visible:=TRUE;
      Label8.Visible:=TRUE;
      Label9.Visible:=TRUE;
      Label10.Visible:=TRUE;
      Label11.Visible:=TRUE;
      Label12.Visible:=TRUE;
      Label13.Visible:=TRUE;
      Label14.Visible:=TRUE;
      Label15.Visible:=TRUE;
      Label20.Visible:=TRUE;


  END;

BitBtnENTRADA.Glyph.TransparentColor:=CLRED;
BitBtnSAIDA.Glyph.TransparentColor:=CLRED;
SpeedButton1.Glyph.TransparentColor:=CLRED;

ADOPLACA.ClOSE;
ADOPLACA.Open;
ADOPLACA.ExecSQL;
ADOPLACA.REFRESH;

ADOMOTORISTA.ClOSE;
ADOMOTORISTA.Open;
ADOMOTORISTA.ExecSQL;
ADOMOTORISTA.REFRESH;

Panel1.Visible:=FALSE;
Panel1.Visible:=FALSE;
BitBtnENTRADA.VISIBLE:=TRUE;
BitBtnSAIDA.VISIBLE:=TRUE;
BitBtnENTRADA.Enabled:=TRUE;
BitBtnSAIDA.Enabled:=TRUE;


end;

procedure TFRMCARGADESCARGA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
BitBtn4.Click;
DMUNT.ADODSCARGADESCARGA.CANCEL;
Panel1.Visible:=FALSE;
BitBtnENTRADA.VISIBLE:=TRUE;
BitBtnSAIDA.VISIBLE:=TRUE;
close;
end;

end.
