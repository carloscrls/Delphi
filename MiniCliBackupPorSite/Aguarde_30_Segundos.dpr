program Aguarde_30_Segundos;

uses
  Vcl.Forms,
  UnitMiniCli in 'UnitMiniCli.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
