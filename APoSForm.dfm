object FormAPoS: TFormAPoS
  Left = 637
  Top = 116
  Width = 354
  Height = 139
  BorderStyle = bsSizeToolWin
  Caption = 'FormAPoS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 117
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1082#1083#1072#1089#1089#1072' '#1090#1086#1074#1072#1088#1072': '
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 87
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103': '
  end
  object DBComboBoxNumberClass: TDBComboBox
    Left = 128
    Top = 8
    Width = 201
    Height = 21
    DataField = 'number_class_product'
    DataSource = FormStorage.DataSource2
    ItemHeight = 13
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 32
    Width = 201
    Height = 21
    DataField = 'date_get_product'
    DataSource = FormStorage.DataSource2
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
    Left = 240
    Top = 64
    Width = 83
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
