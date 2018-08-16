object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 265
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 37
    Top = 27
    Width = 19
    Height = 13
    Caption = 'Cod'
  end
  object Label2: TLabel
    Left = 29
    Top = 54
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 8
    Top = 81
    Width = 48
    Height = 13
    Caption = 'CodDepto'
  end
  object Label4: TLabel
    Left = 33
    Top = 108
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object edCod: TEdit
    Left = 72
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edNome: TEdit
    Left = 72
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edDeptoCod: TEdit
    Left = 72
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btAdicionar: TButton
    Left = 72
    Top = 132
    Width = 75
    Height = 25
    Caption = 'btAdicionar'
    TabOrder = 4
    OnClick = btAdicionarClick
  end
  object btBuscar: TButton
    Left = 72
    Top = 163
    Width = 75
    Height = 25
    Caption = 'btBuscar'
    TabOrder = 5
    OnClick = btBuscarClick
  end
  object edDataAdmissao: TEdit
    Left = 72
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'c:\program files\firebird\firebird_2_5\examples\teste.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 400
    Top = 200
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      'select * from FUNCIONARIO')
    Left = 336
    Top = 200
    object wCod: TIntegerField
      FieldName = 'wCod'
    end
    object wNome: TWideStringField
      FieldName = 'wNome'
      Size = 50
    end
    object wDataAdmissao: TWideStringField
      FieldName = 'wDataAdmissao'
      Size = 50
    end
    object wDeptoCod: TIntegerField
      FieldName = 'wDeptoCod'
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 272
    Top = 200
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 464
    Top = 200
  end
end
