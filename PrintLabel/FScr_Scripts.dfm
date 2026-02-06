object F_Scripts: TF_Scripts
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1074#1074#1086#1076#1072' '#1089#1082#1088#1080#1087#1090#1086#1074' '#1090#1077#1082#1089#1090#1072
  ClientHeight = 527
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_pos1: TLabel
    Left = 344
    Top = 13
    Width = 65
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' 1'
  end
  object lbl_pos2: TLabel
    Left = 344
    Top = 237
    Width = 51
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' 2'
  end
  object lbl_pos3: TLabel
    Left = 760
    Top = 13
    Width = 51
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' 3'
  end
  object lbl_pos4: TLabel
    Left = 766
    Top = 237
    Width = 51
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' 4'
  end
  object mmo_pos1: TMemo
    Left = 24
    Top = 32
    Width = 377
    Height = 201
    Lines.Strings = (
      'vlan database'
      ' vlan 2-6'
      'interface x15,wl1-2,wl1.sta1'
      ' switchport mode access'
      ' switchport access vlan 2'
      'interface x12,x13'
      ' switchport mode access'
      ' switchport access vlan 4'
      'interface x14,x16'
      ' switchport mode access'
      ' switchport access vlan 5'
      'interface x17,x18'
      ' switchport mode access'
      ' switchport access vlan 6'
      'switch'
      ' no spanning-tree'
      'briss'
      ' briss instance default'
      ' no back-protection')
    TabOrder = 0
  end
  object mmo_pos2: TMemo
    Left = 24
    Top = 256
    Width = 377
    Height = 201
    Lines.Strings = (
      'vlan database'
      ' vlan 2-6'
      'interface x15,wl1-2,wl1.sta1'
      ' switchport mode access'
      ' switchport access vlan 2'
      'interface x12,x13'
      ' switchport mode access'
      ' switchport access vlan 4'
      'interface x14,x16'
      ' switchport mode access'
      ' switchport access vlan 5'
      'interface x17,x18'
      ' switchport mode access'
      ' switchport access vlan 6'
      'switch'
      ' no spanning-tree'
      'briss'
      ' briss instance default'
      ' no back-protection')
    TabOrder = 1
  end
  object mmo_pos3: TMemo
    Left = 440
    Top = 32
    Width = 377
    Height = 201
    Lines.Strings = (
      'vlan database'
      ' vlan 2-6'
      'interface x15,wl1-2,wl1.sta1'
      ' switchport mode access'
      ' switchport access vlan 2'
      'interface x12,x13'
      ' switchport mode access'
      ' switchport access vlan 4'
      'interface x14,x16'
      ' switchport mode access'
      ' switchport access vlan 5'
      'interface x17,x18'
      ' switchport mode access'
      ' switchport access vlan 6'
      'switch'
      ' no spanning-tree'
      'briss'
      ' briss instance default'
      ' no back-protection')
    TabOrder = 2
  end
  object mmo_pos4: TMemo
    Left = 440
    Top = 256
    Width = 377
    Height = 201
    Lines.Strings = (
      'vlan database'
      ' vlan 2-6'
      'interface x15,wl1-2,wl1.sta1'
      ' switchport mode access'
      ' switchport access vlan 2'
      'interface x12,x13'
      ' switchport mode access'
      ' switchport access vlan 4'
      'interface x14,x16'
      ' switchport mode access'
      ' switchport access vlan 5'
      'interface x17,x18'
      ' switchport mode access'
      ' switchport access vlan 6'
      'switch'
      ' no spanning-tree'
      'briss'
      ' briss instance default'
      ' no back-protection')
    TabOrder = 3
  end
  object btn_com_execute: TBitBtn
    Left = 24
    Top = 483
    Width = 120
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = btn_com_executeClick
  end
end
