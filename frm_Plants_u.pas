unit frm_Plants_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, jpeg,
  pngimage;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    img1: TImage;
    shp1: TShape;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    shp2: TShape;
    lbl5: TLabel;
    grp2: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    btn4: TButton;
    btn3: TButton;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    img2: TImage;
    procedure btn1Click(Sender: TObject);
    procedure lbl6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.lbl6Click(Sender: TObject);
begin
  if lbl9.Visible = True then
  begin
    lbl9.Visible := False;
    lbl8.Visible := False;
    lbl6.Caption := 'View Watering Info..';
  end
  else
  begin
    lbl9.Visible := True;
    lbl8.Visible := True;
    lbl6.Caption := 'Hide Watering Info..';

  end;

end;

end.


