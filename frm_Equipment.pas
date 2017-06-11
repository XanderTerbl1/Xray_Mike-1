unit frm_Equipment;

interface

uses
  Windows, Messages, frm_AddDetails_u, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DataModule, Grids, DBGrids, jpeg, ExtCtrls, pngimage, GIFImg, DBCtrls;

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
    pnl1: TPanel;
    lbl7: TLabel;
    img1: TImage;
    img3: TImage;
    grp1: TGroupBox;
    shp2: TShape;
    img_Item: TImage;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    btn3: TButton;
    shp3: TShape;
    img6: TImage;
    dbtxt1: TDBText;
    dbtxtOperrational: TDBText;
    dbtxtReplacement: TDBText;
    dbtxtOperrational1: TDBText;
    btn5: TButton;
    tmr1: TTimer;
    procedure lbl6Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses
  frm_MainMenu_u, frm_UpdateDetails_u;

procedure TForm5.btn4Click(Sender: TObject);
var
  ImagePath: WideString;
begin
//Check if selected


  Self.Hide;
  grp2.Enabled := True;

  with frm_UpdateDetails do
  begin

    with DataModule1 do
    begin
      ImagePath := tbl_Equipment['ImagePath'];

      if ImagePath = '' then
        img_Equip.Picture.LoadFromFile(Form2.DefaultPath) //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
      else
        img_Equip.Picture.LoadFromFile(ImagePath);

      ImagePath1 := ImagePath;
    end;

    ts1.TabVisible := False;
    ts2.TabVisible := False;
    ts3.TabVisible := True;

    ShowModal;
    Self.Show;

  end;
  btn5.Click;

end;

procedure TForm5.btn5Click(Sender: TObject);
begin
  pnl1.BringToFront;
  pnl1.Show;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
var
  ImagePath: WideString;
begin
  pnl1.SendToBack;

  with DataModule1 do
  begin
    ImagePath := tbl_Equipment['ImagePath']; //
    if ImagePath = '' then
    begin
      img_Item.Picture.LoadFromFile(Form2.DefaultPath); //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
      //img_Item.Picture := Nil; //For now
    end
    else
    begin
      img_Item.Picture.LoadFromFile(ImagePath);
    end;
    lbl5.Caption := tbl_Equipment['EquipType'];
  end;
  grp2.Enabled := True;

end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  if Form2.PC.GetState = 'Admin' then
    grp2.Show
  else
    grp2.Hide;

  pnl1.BringToFront;
  pnl1.Show;
  grp2.Enabled := False;

  (img6.Picture.Graphic as TGIFImage).Animate := True;
  tmr1.Enabled := tRUE;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
  Self.Hide;
  with frm_AddDetails_u.frm_Add do
  begin
    img_Equip.Picture.LoadFromFile(Form2.DefaultPath); //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
    ts1.TabVisible := false;
    ts2.TabVisible := False;
    ts3.TabVisible := true;
    ShowModal;
    Self.Show;
  end;
  btn5.Click;
end;

procedure TForm5.btn2Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to remove : ' + DataModule1.tbl_Equipment['EquipType'] + ' from the list ?', mtWarning, [mbYes, mbNo], 0);
  if iBut = mrYes then
  begin
    DataModule1.tbl_Equipment.Delete;
    ShowMessage('Removed!');
  end;

end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm5.lbl6Click(Sender: TObject);
begin
  if lbl1.Visible = True then
  begin
    lbl3.Visible := False;
    lbl1.Visible := False;
    dbtxtOperrational1.Visible := False;
    dbtxtReplacement.Visible := False;
    lbl6.Caption := 'View Repair Info..';
  end
  else
  begin
    lbl1.Visible := True;
    lbl3.Visible := True;
    dbtxtOperrational1.Visible := True;
    dbtxtReplacement.Visible := True;
    lbl6.Caption := 'Hide Repair Info..';

  end;
end;

procedure TForm5.tmr1Timer(Sender: TObject);
begin
  (img6.Picture.Graphic as TGIFImage).Animate := False;
  tmr1.Enabled := False;
end;

end.


