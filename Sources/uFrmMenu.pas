unit uFrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg, uCarro, uPesquisa, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uConnection;

type
  TFrmMenu = class(TForm)
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
    Label2: TLabel;
    DBEMarca: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEModelo: TDBEdit;
    Label4: TLabel;
    DBECor: TDBEdit;
    Label5: TLabel;
    DBEAnoFabri: TDBEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBECodigo: TDBEdit;
    BtnCriar: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure Consultarcarro1Click(Sender: TObject);
    procedure BtnCriarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;
  Carro: TCarro;
  Pesquisa: TFrmPesquisa;
  Connection: TDataModule1;

implementation

{$R *.dfm}

procedure TFrmMenu.BtnCadastrarClick(Sender: TObject);
begin
  try
    if (DBEMarca.Modified = True) and (DBEModelo.Modified = True) and
      (DBECor.Modified = True) and (DBEAnoFabri.Modified = True) and
      (DBECodigo.Modified = True) then
    begin
      Carro.Codigo := StrToInt(DBECodigo.Text);
      Carro.Marca := DBEMarca.Text;
      Carro.Modelo := DBEModelo.Text;
      Carro.Cor := DBECor.Text;
      Carro.AnoFabricacao := DBEAnoFabri.Text;

      ShowMessage('Marca: ' + Carro.Marca + #13 + 'Modelo: ' + Carro.Modelo +
        #13 + 'Cor: ' + Carro.Cor + #13 + 'Ano de Fabricação: ' +
        Carro.AnoFabricacao + #13);

    Connection.FDTable1.Append;
    end
    else
      MessageDlg('Insira todos os campos!', mtError, [mbOK], 0);
  finally
    DBEMarca.Clear;
    DBEModelo.Clear;
    DBECor.Clear;
    DBEAnoFabri.Clear;
    DBECodigo.Clear;
  end;
end;

procedure TFrmMenu.BtnCriarClick(Sender: TObject);
begin
  Connection.FDTable1.Append;
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
