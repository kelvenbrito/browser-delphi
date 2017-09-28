object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 429
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 176
    Top = 10
    Width = 372
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 562
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 56
    Width = 629
    Height = 353
    TabOrder = 2
    ControlData = {
      4C000000024100007C2400000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 33
    Height = 25
    Caption = '<-'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 47
    Top = 8
    Width = 34
    Height = 25
    Caption = '->'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 127
    Top = 8
    Width = 33
    Height = 25
    Caption = '()'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 87
    Top = 8
    Width = 34
    Height = 25
    Caption = '<>'
    TabOrder = 6
    OnClick = Button5Click
  end
end
