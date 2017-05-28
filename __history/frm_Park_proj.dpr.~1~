program frm_Park_proj;

uses
  Forms,
  frm_Park_u in 'frm_Park_u.pas' {Form1},
  frm_MainMenu_u in 'frm_MainMenu_u.pas' {Form2},
  frm_Plants_u in 'frm_Plants_u.pas' {Form3},
  frm_Employees_u in 'frm_Employees_u.pas' {Form4},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  frm_Equipment in 'frm_Equipment.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
