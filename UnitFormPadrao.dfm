object FormPadrao: TFormPadrao
  Left = 0
  Top = 0
  Caption = 'FormPadrao'
  ClientHeight = 238
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 10
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 450
    Height = 43
    ButtonHeight = 30
    Caption = 'ToolBar1'
    TabOrder = 0
    object btAnterior: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 30
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btProximo: TButton
      Left = 75
      Top = 0
      Width = 75
      Height = 30
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btBuscar: TButton
      Left = 150
      Top = 0
      Width = 75
      Height = 30
      Caption = 'Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btInserir: TButton
      Left = 225
      Top = 0
      Width = 75
      Height = 30
      Caption = 'Inserir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object btExcluir: TButton
      Left = 300
      Top = 0
      Width = 75
      Height = 30
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object btLimpar: TButton
      Left = 375
      Top = 0
      Width = 75
      Height = 30
      Caption = 'Limpar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 212
    Width = 450
    Height = 26
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 450
    Height = 169
    Align = alClient
    TabOrder = 2
    ExplicitTop = 29
    ExplicitHeight = 190
    DesignSize = (
      450
      169)
    object Panel2: TPanel
      Left = 75
      Top = 10
      Width = 300
      Height = 150
      Anchors = []
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 20
    end
  end
end
