object FormDatabaseController: TFormDatabaseController
  Left = 0
  Top = 0
  Caption = 'FormDatabaseController'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 368
    Top = 184
  end
  object IBDatabase1: TIBDatabase
    ServerType = 'IBServer'
    Left = 408
    Top = 184
  end
  object IBTransaction1: TIBTransaction
    Left = 448
    Top = 184
  end
end
