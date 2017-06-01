unit frm_Plants_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, jpeg, pngimage, GIFImg, DataModule, DBCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    img_Item: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    shp2: TShape;
    lbl5: TLabel;
    grp2: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    btn4: TButton;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    img2: TImage;
    img3: TImage;
    pnl1: TPanel;
    img4: TImage;
    img5: TImage;
    lbl7: TLabel;
    lbl10: TLabel;
    btn3: TButton;
    shp3: TShape;
    img6: TImage;
    dbtxtOperrational2: TDBText;
    dbtxtOperrational: TDBText;
    dbtxtReplacement1: TDBText;
    dbtxtOperrational1: TDBText;
    dbtxtReplacement: TDBText;
    btn5: TButton;
    procedure btn1Click(Sender: TObject);
    procedure lbl6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses
  frm_MainMenu_u;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  if Form2.PC.GetState = 'Admin' then
    grp2.Show
  else
    grp2.Hide;

end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  pnl1.BringToFront;
  pnl1.Show;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
var
  ImagePath: WideString;
begin
  pnl1.SendToBack;

  with DataModule1 do
  begin
    ImagePath := tbl_Plants['ImagePath']; //
    if ImagePath = '' then
    begin
     // img_Item.Picture.LoadFromFile(); //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
      img_Item.Picture := Nil; //For now
    end
    else
    begin
      img_Item.Picture.LoadFromFile(ImagePath);
    end;

  end;
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


