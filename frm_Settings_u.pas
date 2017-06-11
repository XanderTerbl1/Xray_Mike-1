unit frm_Settings_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, pngimage, GIFImg, ExtCtrls;

type
  TForm6 = class(TForm)
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  (img1.Picture.Graphic as TGIFImage).Animate := False;
  (img3.Picture.Graphic as TGIFImage).Animate := False;
  (img4.Picture.Graphic as TGIFImage).Animate := False;
  (img5.Picture.Graphic as TGIFImage).Animate := False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  (img1.Picture.Graphic as TGIFImage).Animate := True;
  (img3.Picture.Graphic as TGIFImage).Animate := True;
  (img4.Picture.Graphic as TGIFImage).Animate := True;
  (img5.Picture.Graphic as TGIFImage).Animate := True;

end;

end.


