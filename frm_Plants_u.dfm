object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form3'
  ClientHeight = 638
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 8
    Width = 145
    Height = 51
    Caption = 'Plants'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Audiowide'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 26
    Top = 80
    Width = 673
    Height = 435
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grp1: TGroupBox
    Left = 705
    Top = 80
    Width = 256
    Height = 435
    TabOrder = 1
    object img1: TImage
      Left = 24
      Top = 22
      Width = 211
      Height = 179
    end
    object btn1: TButton
      Left = 3
      Top = 384
      Width = 250
      Height = 48
      Caption = 'Close'
      TabOrder = 0
    end
    object btn4: TButton
      Left = 3
      Top = 330
      Width = 250
      Height = 48
      Caption = 'Edit Plant Details'
      TabOrder = 1
    end
  end
end
