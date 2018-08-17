inherited FormFuncionario: TFormFuncionario
  Left = 32
  Caption = 'FormFuncionario'
  ClientHeight = 240
  ClientWidth = 451
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 467
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 10
  inherited ToolBar1: TToolBar
    Width = 451
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 451
    inherited btBuscar: TButton
      OnClick = Button3Click
    end
    inherited Button4: TButton
      OnClick = Button4Click
    end
    inherited Button6: TButton
      OnClick = Button6Click
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 221
    Width = 451
    ExplicitLeft = 0
    ExplicitTop = 221
    ExplicitWidth = 451
  end
  inherited Panel1: TPanel
    Width = 451
    Height = 192
    ExplicitLeft = 0
    ExplicitTop = 29
    ExplicitWidth = 451
    ExplicitHeight = 192
    object Label1: TLabel
      Left = 49
      Top = 26
      Width = 26
      Height = 10
      Anchors = []
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 52
      Top = 48
      Width = 23
      Height = 10
      Anchors = []
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 35
      Top = 77
      Width = 40
      Height = 10
      Anchors = []
      Caption = 'Cod.Depto.:'
    end
    object Label4: TLabel
      Left = 38
      Top = 101
      Width = 37
      Height = 10
      Anchors = []
      Caption = 'Admissao:'
    end
    object edCod: TEdit
      Left = 97
      Top = 17
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 0
    end
    object edNome: TEdit
      Left = 97
      Top = 42
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 1
    end
    object edCodDepto: TEdit
      Left = 97
      Top = 68
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 2
    end
    object dtDataAdmissao: TDateTimePicker
      Left = 97
      Top = 93
      Width = 75
      Height = 18
      Anchors = []
      Date = 43328.491908333330000000
      Time = 43328.491908333330000000
      TabOrder = 3
    end
  end
end
