object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Bible Gematria'
  ClientHeight = 440
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = '... load Bible'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Start calc'
    TabOrder = 1
    OnClick = Button2Click
  end
  object qBibleCalc: TUniQuery
    Connection = UniConnection
    Left = 152
    Top = 184
  end
  object UniConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'gematria'
    Username = 'root'
    Server = 'Localhost'
    Left = 160
    Top = 296
    EncryptedPassword = 'CEFFCCFFCCFFC8FFCEFFCCFFCCFFC8FF'
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection
    Left = 240
    Top = 184
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 344
    Top = 264
  end
end
