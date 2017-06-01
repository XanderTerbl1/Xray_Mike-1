object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 418
  Width = 492
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Xander Ter' +
      'blanche\Documents\GitHUB Reo\Xray_Mike-1\Database\PAT\Real Park ' +
      'Database.mdb;Mode=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 32
  end
  object con2: TADOConnection
    Left = 400
    Top = 48
  end
  object tbl_Plants: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Plants'
    Left = 40
    Top = 88
  end
  object tbl_Employees: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Employees'
    Left = 88
    Top = 88
  end
  object tbl_Equipment: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'Equipment'
    Left = 64
    Top = 136
  end
  object tbl4: TADOTable
    Left = 368
    Top = 96
  end
  object tbl5: TADOTable
    Left = 424
    Top = 96
  end
  object ds_Plant: TDataSource
    DataSet = tbl_Plants
    Left = 24
    Top = 200
  end
  object ds_Employee: TDataSource
    DataSet = tbl_Employees
    Left = 64
    Top = 232
  end
  object ds_Equip: TDataSource
    DataSet = tbl_Equipment
    Left = 112
    Top = 200
  end
  object ds4: TDataSource
    Left = 376
    Top = 200
  end
  object ds5: TDataSource
    Left = 424
    Top = 200
  end
end
