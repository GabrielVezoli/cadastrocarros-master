unit uPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCarro, Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TFrmPesquisa = class(TForm)
    ListBox1: TListBox;
    EdtPesquisa: TEdit;
    BtnBusca: TButton;
    procedure BtnBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisa: TFrmPesquisa;
  Carro: TCarro;

implementation

{$R *.dfm}

procedure TFrmPesquisa.BtnBuscaClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 1 to 100 do
    if AnsiCompareText(EdtPesquisa.Text, Carro.Modelo[I]) = 0 then
    begin
      ListBox1.Items.Add(Carro.Modelo[I])
    end
    else
      MessageDlg('Nenhum carro encontrado!', mtError, [mbOK], 0);
end;

end.