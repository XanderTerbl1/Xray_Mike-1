unit frm_Park_u;

interface

uses
  Windows, Messages, SysUtils, frm_MainMenu_u, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, GIFImg, ExtCtrls, pngimage, ImgList;

type
  TForm1 = class(TForm)
    il1: TImageList;
    grp1: TGroupBox;
    btn1: TButton;
    edt1: TEdit;
    btn_Emp: TButton;
    btn_Adm: TButton;
    img1: TImage;
    shp1: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    tmr1: TTimer;
    shp2: TShape;
    procedure btn1Click(Sender: TObject);
    procedure btn_EmpClick(Sender: TObject);
    procedure btn_AdmClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
//if admin , check password - else just login
//Shp Form
  if (img1.Picture.Graphic as TGIFImage).Animate = True then
    (img1.Picture.Graphic as TGIFImage).Animate := False
  else
    (img1.Picture.Graphic as TGIFImage).Animate := True;

  tmr1.Enabled := true;

end;

procedure TForm1.btn_AdmClick(Sender: TObject);
begin
  btn_Emp.Enabled := True;
  btn_Adm.Enabled := False;
  lbl2.Caption := 'Admin';
  lbl1.Show;
  lbl2.Show;
  edt1.Show;
end;

procedure TForm1.btn_EmpClick(Sender: TObject);
begin
  btn_Emp.Enabled := False;
  btn_Adm.Enabled := True;
  lbl2.Caption := 'Employee';
  lbl1.Show;
  lbl2.Show;
  edt1.Hide;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  Form2.Show;
  (img1.Picture.Graphic as TGIFImage).Animate := False;
  tmr1.Enabled := False;
  Self.Hide;

end;

end.


