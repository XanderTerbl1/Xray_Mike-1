unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    con1: TADOConnection;
    con2: TADOConnection;
    tbl_Plants: TADOTable;
    tbl_Employees: TADOTable;
    tbl_Equipment: TADOTable;
    tbl4: TADOTable;
    tbl5: TADOTable;
    ds_Plant: TDataSource;
    ds_Employee: TDataSource;
    ds_Equip: TDataSource;
    ds4: TDataSource;
    ds5: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
