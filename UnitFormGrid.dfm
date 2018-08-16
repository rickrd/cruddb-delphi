object FormGrid: TFormGrid
  Left = 0
  Top = 0
  Caption = 'FormGrid'
  ClientHeight = 237
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 281
    Height = 233
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'C'#243'digo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C'#243'digo Depto.'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data Admiss'#227'o'
        Width = 75
        Visible = True
      end>
  end
end
