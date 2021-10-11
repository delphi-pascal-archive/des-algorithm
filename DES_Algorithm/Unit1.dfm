object Form1: TForm1
  Left = 221
  Top = 132
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DES Algorithm'
  ClientHeight = 564
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 23
    Height = 16
    Caption = 'Key'
  end
  object Label2: TLabel
    Left = 10
    Top = 42
    Width = 57
    Height = 16
    Caption = 'Message'
  end
  object Label3: TLabel
    Left = 10
    Top = 303
    Width = 115
    Height = 16
    Caption = 'Encoded Message'
  end
  object Label4: TLabel
    Left = 262
    Top = 16
    Width = 63
    Height = 16
    Caption = 'Char count'
  end
  object Edit1: TEdit
    Left = 52
    Top = 10
    Width = 200
    Height = 24
    TabOrder = 0
    Text = 'password'
    OnChange = Edit1Change
  end
  object Memo1: TMemo
    Left = 10
    Top = 63
    Width = 347
    Height = 95
    Lines.Strings = (
      'Sample Message'
      'In Two Lines!!')
    ScrollBars = ssBoth
    TabOrder = 1
    OnChange = Memo1Change
  end
  object Button1: TButton
    Left = 366
    Top = 63
    Width = 98
    Height = 32
    Caption = 'Encode'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 10
    Top = 324
    Width = 347
    Height = 96
    ScrollBars = ssBoth
    TabOrder = 3
    OnChange = Memo2Change
  end
  object Button2: TButton
    Left = 366
    Top = 324
    Width = 98
    Height = 33
    Caption = 'Decode'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Memo3: TMemo
    Left = 10
    Top = 167
    Width = 347
    Height = 127
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object Memo4: TMemo
    Left = 10
    Top = 429
    Width = 347
    Height = 127
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
end
