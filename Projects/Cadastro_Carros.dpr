program Cadastro_Carros;

uses
  Vcl.Forms,
  uFrmPrincipal in '..\Sources\uFrmPrincipal.pas' {FrmPrincipal},
  uFrmMenu in '..\Sources\uFrmMenu.pas' {FrmMenu},
  uCarro in '..\Sources\uCarro.pas',
  uPesquisa in '..\Sources\uPesquisa.pas' {FrmPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cadastrado!';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmPesquisa, FrmPesquisa);
  Application.Run;
end.
