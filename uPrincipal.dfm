object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Migrador'
  ClientHeight = 457
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EdtbdOrigem: TEdit
    Left = 32
    Top = 384
    Width = 473
    Height = 21
    TabOrder = 0
    Text = 'C:\PROJETO\cria DB\BASE.FDB'
  end
  object EdtbdDestino: TEdit
    Left = 32
    Top = 411
    Width = 473
    Height = 21
    TabOrder = 1
    Text = 'C:\SISTEMAS\FDCMARKET\DADOS\FDCMARKET.Gdb'
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 144
    Width = 97
    Height = 17
    Caption = 'Cliente'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 480
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 448
    Top = 96
    Width = 267
    Height = 121
    TabOrder = 4
  end
  object Sqlcliente: TFDQuery
    Left = 64
    Top = 8
  end
  object conexaoold: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMAS\FDCMARKET\DADOS\DADOS.GBD'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object FDQuery2: TFDQuery
    Connection = conexaonew
    SQL.Strings = (
      'select * from cliente')
    Left = 271
    Top = 48
  end
  object conexaonew: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMAS\FDCMARKET\DADOS\FDCMARKET.GDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    LoginPrompt = False
    Left = 271
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 43
    Top = 429
  end
  object FDBatchMoveSQLReader1: TFDBatchMoveSQLReader
    Connection = conexaoold
    Left = 9
    Top = 64
  end
  object FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter
    Connection = conexaoold
    Left = 271
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 8
    Top = 429
  end
  object FDTransaction1: TFDTransaction
    Connection = conexaoold
    Left = 184
    Top = 192
  end
end
