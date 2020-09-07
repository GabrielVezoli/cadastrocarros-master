unit uFrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg, uCarro, uPesquisa;

type
  TFrmMenu = class(TForm)
    EdtMarca: TEdit;
    EdtModelo: TEdit;
    EdtCor: TEdit;
    EdtAnoFabri: TEdit;
    Panel1: TPanel;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Consulta1: TMenuItem;
    Consultarcarro1: TMenuItem;
    Panel2: TPanel;
    Label1: TLabel;
    LblHora: TLabel;
    BtnCadastrar: TButton;
    Image1: TImage;
    LblMarca: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure Consultarcarro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;
  Carro: TCarro;
  Pesquisa: TFrmPesquisa;

implementation

{$R *.dfm}

procedure TFrmMenu.BtnCadastrarClick(Sender: TObject);
var
  Veiculos: array [1 .. 100] of Integer;
  I: Integer;
begin
  try
    if (EdtMarca.Modified = True) and (EdtModelo.Modified = True) and
      (EdtCor.Modified = True) and (EdtAnoFabri.Modified = True) then
    begin
      for I := 1 to High(Veiculos) do
        Carro := TCarro.Create;

      Carro.Marca := EdtMarca.Text;
      Carro.Modelo := EdtModelo.Text;
      Carro.Cor := EdtCor.Text;
      Carro.AnoFabricacao := EdtAnoFabri.Text;

      ShowMessage('Marca: ' + Carro.Marca + #13 + 'Modelo: ' + Carro.Modelo +
        #13 + 'Cor: ' + Carro.Cor + #13 + 'Ano de Fabricação: ' +
        Carro.AnoFabricacao + #13);
      Veiculos[I] := I + 1;
      exit
    end
    else
      MessageDlg('Insira todos os campos!', mtError, [mbOK], 0);
  finally
    FreeAndNil(Carro);
    EdtMarca.Clear;
    EdtModelo.Clear;
    EdtCor.Clear;
    EdtAnoFabri.Clear;
  end;
end;

procedure TFrmMenu.Consultarcarro1Click(Sender: TObject);
begin
  try
  Pesquisa := TFrmPesquisa.Create(Self);
  Pesquisa.ShowModal;
  finally
    FreeAndNil(Pesquisa);
  end;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := True;

  LblHora.Caption := TimeToStr(time);
end;

end.
