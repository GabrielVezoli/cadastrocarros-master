object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisar'
  ClientHeight = 230
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BtnBusca: TButton
    Left = 144
    Top = 8
    Width = 43
    Height = 21
    Caption = 'Busca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object MMBuscaV: TMemo
    Left = 2
    Top = 35
    Width = 185
    Height = 187
    TabOrder = 1
  end
end
