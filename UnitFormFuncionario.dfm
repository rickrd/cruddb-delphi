inherited FormFuncionario: TFormFuncionario
  Left = 32
  Caption = 'FormFuncionario'
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 10
  inherited ToolBar1: TToolBar
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 505
    inherited Button4: TButton
      OnClick = Button4Click
    end
  end
  inherited StatusBar1: TStatusBar
    ExplicitLeft = 0
    ExplicitTop = 212
    ExplicitWidth = 505
  end
  inherited Panel1: TPanel
    ExplicitLeft = 150
    ExplicitTop = 229
    ExplicitWidth = 377
    ExplicitHeight = 183
    object Label1: TLabel
      Left = 34
      Top = 22
      Width = 26
      Height = 15
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 37
      Top = 43
      Width = 23
      Height = 10
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 20
      Top = 70
      Width = 40
      Height = 10
      Caption = 'Cod.Depto.:'
    end
    object Label4: TLabel
      Left = 23
      Top = 93
      Width = 37
      Height = 10
      Caption = 'Admissao:'
    end
    object edCod: TEdit
      Left = 75
      Top = 16
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 0
    end
    object edNome: TEdit
      Left = 75
      Top = 40
      Width = 150
      Height = 18
      Anchors = []
      TabOrder = 1
    end
    object edCodDepto: TEdit
      Left = 75
      Top = 64
      Width = 75
      Height = 18
      Anchors = []
      TabOrder = 2
    end
    object dtDataAdmissao: TDateTimePicker
      Left = 75
      Top = 88
      Width = 75
      Height = 18
      Anchors = []
      Date = 43328.491908333330000000
      Time = 43328.491908333330000000
      TabOrder = 3
    end
  end
end
