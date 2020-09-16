unit uPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCarro, Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TFrmPesquisa = class(TForm)
    BtnBusca: TButton;
    MMBuscaV: TMemo;
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

uses uFrmMenu;

end.
