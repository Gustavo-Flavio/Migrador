object dm: Tdm
  OldCreateOrder = False
  Height = 508
  Width = 809
  object Sqlcliente: TFDQuery
    Connection = conexaoold
    SQL.Strings = (
      'select * from clientes')
    Left = 32
    Top = 88
    object SqlclienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlclienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 50
    end
    object SqlclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object SqlclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object SqlclienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object SqlclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object SqlclienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object SqlclienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object SqlclienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object SqlclienteDOCTOCLIENTE: TStringField
      FieldName = 'DOCTOCLIENTE'
      Origin = 'DOCTOCLIENTE'
      Required = True
      FixedChar = True
      Size = 18
    end
    object SqlclienteTIPODOCTO: TStringField
      FieldName = 'TIPODOCTO'
      Origin = 'TIPODOCTO'
      FixedChar = True
      Size = 1
    end
    object SqlclienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Origin = 'IDENTIDADE'
      FixedChar = True
      Size = 11
    end
    object SqlclienteDATANASC: TSQLTimeStampField
      FieldName = 'DATANASC'
      Origin = 'DATANASC'
    end
    object SqlclienteSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object conexaoold: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMAS\FDCMARKET\DADOS\DADOS.GBD'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = conexaonew
    SQL.Strings = (
      'select * from cliente')
    Left = 699
    Top = 88
  end
  object conexaonew: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMAS\FDCMARKET\DADOS\FDCMARKET.GDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 699
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 123
    Top = 434
  end
  object FDBatchMoveSQLReader1: TFDBatchMoveSQLReader
    Connection = conexaoold
    Left = 41
    Top = 160
  end
  object FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter
    Connection = conexaoold
    Left = 704
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 432
  end
end
