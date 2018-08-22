inherited FormFuncionario: TFormFuncionario
  Left = 32
  Caption = 'Cadastro de funcion'#225'rio:'
  ClientHeight = 240
  ClientWidth = 451
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Trebuchet MS'
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 467
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 18
  inherited ToolBar1: TToolBar
    Width = 451
    ButtonHeight = 30
    ExplicitWidth = 451
    inherited btAnterior: TButton
      Height = 30
      OnClick = btAnteriorClick
      ExplicitHeight = 30
    end
    inherited btProximo: TButton
      Height = 30
      OnClick = btProximoClick
      ExplicitHeight = 30
    end
    inherited btBuscar: TButton
      Height = 30
      OnClick = btBuscarClick
      ExplicitHeight = 30
    end
    inherited btInserir: TButton
      Height = 30
      OnClick = btInserirClick
      ExplicitHeight = 30
    end
    inherited btExcluir: TButton
      Height = 30
      OnClick = btExcluirClick
      ExplicitHeight = 30
    end
    inherited btLimpar: TButton
      Height = 30
      OnClick = btLimparClick
      ExplicitHeight = 30
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 221
    Width = 451
    ExplicitTop = 221
    ExplicitWidth = 451
  end
  inherited Panel1: TPanel
    Width = 451
    Height = 192
    ExplicitWidth = 451
    ExplicitHeight = 192
    inherited Panel2: TPanel
      object Label1: TLabel
        Left = 70
        Top = 20
        Width = 50
        Height = 25
        Alignment = taRightJustify
        Anchors = []
        AutoSize = False
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 70
        Top = 50
        Width = 50
        Height = 25
        Alignment = taRightJustify
        Anchors = []
        AutoSize = False
        Caption = 'Nome:'
      end
      object Label3: TLabel
        Left = 70
        Top = 80
        Width = 50
        Height = 25
        Alignment = taRightJustify
        Anchors = []
        AutoSize = False
        Caption = 'C'#243'd. D.:'
      end
      object Label4: TLabel
        Left = 70
        Top = 110
        Width = 50
        Height = 25
        Alignment = taRightJustify
        Anchors = []
        AutoSize = False
        Caption = 'Data:'
      end
      object dtDataAdmissao: TDateTimePicker
        Left = 120
        Top = 110
        Width = 75
        Height = 26
        Anchors = []
        Date = 43328.491908333330000000
        Time = 43328.491908333330000000
        TabOrder = 0
      end
      object edCod: TEdit
        Left = 120
        Top = 20
        Width = 75
        Height = 26
        Anchors = []
        TabOrder = 1
        OnKeyPress = onKeyPress
      end
      object edCodDepto: TEdit
        Tag = 2
        Left = 120
        Top = 80
        Width = 75
        Height = 26
        Anchors = []
        TabOrder = 2
        OnKeyPress = onKeyPress
      end
      object edNome: TEdit
        Tag = 1
        Left = 120
        Top = 50
        Width = 75
        Height = 26
        Anchors = []
        TabOrder = 3
        OnKeyPress = onKeyPress
      end
    end
  end
end
