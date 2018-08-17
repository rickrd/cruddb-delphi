object FormGrid: TFormGrid
  Left = 0
  Top = 0
  Caption = 'Busca:'
  ClientHeight = 255
  ClientWidth = 370
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 10
  object StringGrid1: TStringGrid
    Left = 0
    Top = 32
    Width = 369
    Height = 221
    ColCount = 4
    DefaultColWidth = 86
    RowCount = 10
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 370
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
    object btExcluir: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Excluir'
      TabOrder = 0
    end
    object btEscolher: TButton
      Left = 75
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Escolher'
      TabOrder = 1
    end
  end
end
