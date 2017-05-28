unit frm_Equipment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, pngimage;

type
  TForm5 = class(TForm)
    img2: TImage;
    img4: TImage;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    grp2: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    btn4: TButton;
    btn3: TButton;
    pnl1: TPanel;
    lbl7: TLabel;
    img1: TImage;
    shp1: TShape;
    img3: TImage;
    grp1: TGroupBox;
    shp2: TShape;
    img5: TImage;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    procedure lbl6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.lbl6Click(Sender: TObject);
begin
  if lbl1.Visible = True then
  begin
    lbl3.Visible := False;
    lbl1.Visible := False;
    lbl6.Caption := 'View Repair Info..';
  end
  else
  begin
    lbl1.Visible := True;
    lbl3.Visible := True;
    lbl6.Caption := 'Hide Repair Info..';

  end;
end;

end.
