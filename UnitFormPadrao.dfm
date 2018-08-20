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
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 0
    ExplicitWidth = 377
    object btAnterior: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 22
      Caption = '<'
      TabOrder = 0
    end
    object btProximo: TButton
      Left = 75
      Top = 0
      Width = 75
      Height = 22
      Caption = '>'
      TabOrder = 1
    end
    object btBuscar: TButton
      Left = 150
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Buscar'
      TabOrder = 2
    end
    object btInserir: TButton
      Left = 225
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Inserir'
      TabOrder = 3
    end
    object btExcluir: TButton
      Left = 300
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Excluir'
      TabOrder = 4
    end
    object btLimpar: TButton
      Left = 375
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Limpar'
      TabOrder = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 219
    Width = 450
    Height = 19
    Panels = <>
    ExplicitWidth = 377
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 450
    Height = 190
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 377
  end
end
