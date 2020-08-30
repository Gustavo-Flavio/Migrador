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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 723
    Height = 137
    Align = alTop
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 723
    Height = 64
    Align = alTop
    TabOrder = 3
    object BtnCopiar: TButton
      Left = 520
      Top = 6
      Width = 75
      Height = 33
      Caption = 'Copiar'
      TabOrder = 0
      OnClick = BtnCopiarClick
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 201
    Width = 723
    Height = 120
    Align = alTop
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    Left = 511
    Top = 327
    Width = 204
    Height = 122
    TabOrder = 5
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 43
    Top = 429
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 8
    Top = 429
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT CODIGO IDCLIENTE,DOCTOCLIENTE,NOMECLIENTE,TELEFONE TELEFO' +
        'NES'
      '     FROM CLIENTES')
    Left = 640
    Top = 64
    object FDQuery1IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQuery1DOCTOCLIENTE: TStringField
      FieldName = 'DOCTOCLIENTE'
      Origin = 'DOCTOCLIENTE'
      Required = True
      FixedChar = True
      Size = 18
    end
    object FDQuery1NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 50
    end
    object FDQuery1TELEFONES: TStringField
      FieldName = 'TELEFONES'
      Origin = 'TELEFONE'
      Size = 15
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMAS\FDCMARKET\DADOS\DADOS.GBD'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 584
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 656
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection2
    SQL.Strings = (
      'SELECT IDCLIENTE,DOCTOCLIENTE,NOMECLIENTE,TELEFONES'
      '     FROM CLIENTE')
    Left = 648
    Top = 283
    object FDQuery2IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object FDQuery2DOCTOCLIENTE: TStringField
      FieldName = 'DOCTOCLIENTE'
      Origin = 'DOCTOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 18
    end
    object FDQuery2NOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 60
    end
    object FDQuery2TELEFONES: TStringField
      FieldName = 'TELEFONES'
      Origin = 'TELEFONES'
      Size = 50
    end
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMAS\FDCMARKET\DADOS\FDCMARKET.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 592
    Top = 227
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 664
    Top = 219
  end
end
