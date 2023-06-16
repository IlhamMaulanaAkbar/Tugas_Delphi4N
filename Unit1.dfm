object Form1: TForm1
  Left = 569
  Top = 126
  Width = 649
  Height = 498
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 81
    Height = 13
    Caption = 'Nama Kostumer*'
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 44
    Height = 13
    Caption = 'Telepon*'
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 32
    Top = 120
    Width = 22
    Height = 13
    Caption = 'Kota'
  end
  object Label5: TLabel
    Left = 32
    Top = 152
    Width = 44
    Height = 13
    Caption = 'Kode Pos'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 296
    Width = 569
    Height = 153
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 168
    Top = 24
    Width = 425
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 168
    Top = 56
    Width = 425
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 168
    Top = 88
    Width = 425
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 168
    Top = 120
    Width = 425
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 168
    Top = 152
    Width = 425
    Height = 21
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 200
    Width = 89
    Height = 57
    Caption = 'BARU'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 200
    Width = 75
    Height = 57
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 280
    Top = 200
    Width = 75
    Height = 57
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 400
    Top = 200
    Width = 75
    Height = 57
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 520
    Top = 200
    Width = 75
    Height = 57
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Latihan Delphi 4' +
      'N\libmysql.dll'
    Left = 176
    Top = 384
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kostumer')
    Params = <>
    Left = 112
    Top = 400
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 56
    Top = 400
  end
end
