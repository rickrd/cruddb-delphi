inherited FormFuncionario: TFormFuncionario
  Left = 32
  Caption = 'Cadastro de funcion'#225'rio:'
  ClientHeight = 240
  ClientWidth = 376
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 392
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 10
  inherited ToolBar1: TToolBar
    Width = 376
    ExplicitWidth = 451
    inherited btBuscar: TButton
      OnClick = btBuscarClick
    end
    inherited btInserir: TButton
      OnClick = btInserirClick
    end
    inherited btExcluir: TButton
      OnClick = btExcluirClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 221
    Width = 376
    ExplicitTop = 221
    ExplicitWidth = 451
  end
  inherited Panel1: TPanel
    Width = 376
    Height = 192
    ExplicitWidth = 451
    ExplicitHeight = 192
    object Label1: TLabel
      Left = 39
      Top = 26
      Width = 26
      Height = 10
      Anchors = []
      Caption = 'C'#243'digo:'
      ExplicitLeft = 49
    end
    object Label2: TLabel
      Left = 42
      Top = 48
      Width = 23
      Height = 10
      Anchors = []
      Caption = 'Nome:'
      ExplicitLeft = 52
    end
    object Label3: TLabel
      Left = 26
      Top = 77
      Width = 40
      Height = 10
      Anchors = []
      Caption = 'Cod.Depto.:'
      ExplicitLeft = 35
    end
    object Label4: TLabel
      Left = 29
      Top = 101
      Width = 37
      Height = 10
      Anchors = []
      Caption = 'Admissao:'
      ExplicitLeft = 38
    end
    object edCod: TEdit
      Left = 75
      Top = 17
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 0
      ExplicitLeft = 97
    end
    object edNome: TEdit
      Left = 75
      Top = 42
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 1
      ExplicitLeft = 97
    end
    object edCodDepto: TEdit
      Left = 75
      Top = 68
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 2
      ExplicitLeft = 97
    end
    object dtDataAdmissao: TDateTimePicker
      Left = 75
      Top = 93
      Width = 75
      Height = 18
      Anchors = []
      Date = 43328.491908333330000000
      Time = 43328.491908333330000000
      TabOrder = 3
      ExplicitLeft = 97
    end
  end
end
