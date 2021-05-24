object FormAddSeller: TFormAddSeller
  Left = 874
  Top = 213
  Width = 313
  Height = 136
  BorderStyle = bsSizeToolWin
  Caption = 'FormAddSeller'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 79
    Height = 13
    Caption = #1048#1084#1103' '#1087#1088#1086#1076#1072#1074#1094#1072': '
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 106
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103' '#1087#1088#1086#1076#1072#1074#1094#1072': '
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 8
    Width = 169
    Height = 21
    DataField = 'name_seller'
    DataSource = FormAdmin.DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 32
    Width = 169
    Height = 21
    DataField = 'family_seller'
    DataSource = FormAdmin.DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 64
    Width = 73
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 64
    Width = 67
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
end
