unit frm_MainMenu_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList, pngimage, ExtCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    il_Buttons: TImageList;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    procedure btn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses
  frm_Park_u;

procedure TForm2.btn4Click(Sender: TObject);
begin
Self.Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Form1.Show;
end;

end.
