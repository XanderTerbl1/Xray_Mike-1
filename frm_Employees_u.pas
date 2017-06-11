unit frm_Employees_u;

interface

uses
  Windows, Messages, frm_AddDetails_u, DataModule, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, pngimage, jpeg, GIFImg, DBCtrls;

type
  TForm4 = class(TForm)
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
    img3: TImage;
    img1: TImage;
    grp1: TGroupBox;
    shp2: TShape;
    img_Item: TImage;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn3: TButton;
    shp3: TShape;
    img6: TImage;
    dbtxtReplacement: TDBText;
    dbtxtOperrational1: TDBText;
    dbtxtOperrational: TDBText;
    dbtxtOperrational2: TDBText;
    dbtxtReplacement1: TDBText;
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  frm_MainMenu_u, frm_UpdateDetails_u;

procedure TForm4.btn4Click(Sender: TObject);
var
  ImagePath: WideString;
begin
//Check if selected


  Self.Hide;

  with frm_UpdateDetails do
  begin

    with DataModule1 do
    begin
      ImagePath := tbl_Employees['ImagePath'];

      if ImagePath = '' then
        img_Empl.Picture.LoadFromFile(Form2.DefaultPath) //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
      else
        img_Empl.Picture.LoadFromFile(ImagePath);

      ImagePath1 := ImagePath;

    end;

    ts1.TabVisible := False;
    ts2.TabVisible := true;
    ts3.TabVisible := false;

    ShowModal;
    Self.Show;

  end;
  btn5.Click;

end;

procedure TForm4.btn5Click(Sender: TObject);
begin
  pnl1.BringToFront;
  pnl1.Show;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
var
  ImagePath: WideString;
begin
  grp2.Enabled := True;
  pnl1.SendToBack;

  with DataModule1 do
  begin
    ImagePath := tbl_Employees['ImagePath']; //
    if ImagePath = '' then
    begin
      img_Item.Picture.LoadFromFile(Form2.DefaultPath); //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
      //img_Item.Picture := Nil; //For now
    end
    else
    begin
      img_Item.Picture.LoadFromFile(ImagePath);
    end;

    lbl5.Caption := tbl_Employees['First Name'] + ' ' + tbl_Employees['Last Name'];
  end;

end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Show;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  if Form2.PC.GetState = 'Admin' then
    grp2.Show
  else
    grp2.Hide;

  pnl1.BringToFront;
  pnl1.Show;
  grp2.Enabled := False;

  (img6.Picture.Graphic as TGIFImage).Animate := True;
  tmr1.Enabled := True;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  Self.Hide;
  with frm_AddDetails_u.frm_Add do
  begin
    img_Empl.Picture.LoadFromFile(Form2.DefaultPath); //LOAD DEFUALT IMAGE THAT SAYS NO IMAGE
    ts1.TabVisible := false;
    ts2.TabVisible := true;
    ts3.TabVisible := false;
    ShowModal;
    Self.Show;
  end;
  btn5.Click;
end;

procedure TForm4.btn2Click(Sender: TObject);
var
  iBut: Integer;
begin
  iBut := MessageDlg('Are you sure you want to remove : ' + DataModule1.tbl_Employees['First Name'] + ' from the list ?', mtWarning, [mbYes, mbNo], 0);
  if iBut = mrYes then
  begin
    DataModule1.tbl_Employees.Delete;
    ShowMessage('Removed!');
  end;

end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.lbl6Click(Sender: TObject);
begin
  if lbl9.Visible = True then
  begin
    lbl9.Visible := False;
    lbl8.Visible := False;
    dbtxtOperrational1.Visible := False;
    dbtxtReplacement.Visible := False;
    lbl6.Caption := 'View Shift Info..';
  end
  else
  begin
    lbl9.Visible := True;
    lbl8.Visible := True;
    dbtxtOperrational1.Visible := True;
    dbtxtReplacement.Visible := True;
    lbl6.Caption := 'Hide Shift Info..';

  end;
end;

procedure TForm4.tmr1Timer(Sender: TObject);
begin
  (img6.Picture.Graphic as TGIFImage).Animate := False;
  tmr1.Enabled := False;
end;

end.


