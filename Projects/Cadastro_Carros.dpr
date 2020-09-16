program Cadastro_Carros;

uses
  Vcl.Forms,
  uFrmPrincipal in '..\Sources\uFrmPrincipal.pas' {FrmPrincipal},
  uFrmMenu in '..\Sources\uFrmMenu.pas' {FrmMenu},
  uCarro in '..\Sources\uCarro.pas',
  uPesquisa in '..\Sources\uPesquisa.pas' {FrmPesquisa},
  uConnection in '..\Sources\uConnection.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cadastrado!';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmPesquisa, FrmPesquisa);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
