unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    //procedure block(move:boolean;var k3:boolean);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1; i,k,a1,a2,a3,b1,b2,b3,c1,c2,c3:integer; p1,p2:string;
  comp,move:boolean; k2:boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin  if comp=false then begin
  if i mod 2=0 then  begin a1:=1;
  image1.picture.loadfromfile('cross.png');
  end else begin
    image1.picture.loadfromfile('zero.png');
    a1:=0;
    end;
   i:=i+1;
   image1.enabled:=false;
  if ((a1=a2) and (a2=a3)) or ((a1=b1) and (b1=c1)) or ((a1=b2) and (b2=c3)) then
 begin if a1=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
  //block(true,k2) ;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;end;
 end else begin
     {против компа}

    a1:=1; //ход чела
    image1.enabled:=false;
    image1.picture.loadfromfile('cross.png');
  if ((a1=a2) and (a2=a3)) or ((a1=b1) and (b1=c1)) or ((a1=b2) and (b2=c3)) then
 begin  label7.Caption:=p1+' Won!!!';
 move:=true;
 form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;//block(true,k2) ;
 end;
     //ход компа
    // sleep(random(500));
  if move<>true then begin
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (c1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (a3<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;


 end else
if (a1=2) or (a2=2) or (a3=2) or
   (b1=2) or (b2=2) or (b3=2) or
   (c1=2) or (c2=2) or (c3=2) then begin

 move:=true;
 randomize;
 repeat
 k:=random(9);
 case k of
 0:if a1=2 then begin
 a1:=0; move:=false;   Sleep(100+random(900));
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;         Sleep(100+random(900));
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;       Sleep(100+random(900));
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;    Sleep(100+random(900));
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;   Sleep(100+random(900));
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;     Sleep(100+random(900));
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;      Sleep(100+random(900));
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;        Sleep(100+random(900));
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;     Sleep(100+random(900));
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;
  if ((a1=a2) and (a2=a3) and (a3=0)) or
     ((b1=b2) and (b2=b3) and (b3=0)) or
     ((c1=c2) and (c2=c3) and (c3=0)) or
     ((a1=b2) and (b2=c3) and (c3=0)) or
     ((c1=b2) and (b2=a3) and (a3=0)) or
     ((a1=b1) and (b1=c1) and (c1=0)) or
     ((a2=b2) and (a2=c2) and (a2=0)) or
     ((a3=b3) and (b3=c3) and (c3=0)) then begin
  form1.image1.enabled:=false;
  form1.image2.enabled:=false;
  form1.image3.enabled:=false;
  form1.image4.enabled:=false;
  form1.image5.enabled:=false;
  form1.image6.enabled:=false;
  form1.image7.enabled:=false;
  form1.image8.enabled:=false;
  form1.image9.enabled:=false;
  move:=true;
  form1.label7.caption:=p2+' Won!';
  form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
     end;

end;   move:=false;end;
 end;
//procedure block(move:boolean; var k3:boolean);
//begin
// form1.image1.Enabled:=false;
// form1.image2.Enabled:=false;
// form1.image3.Enabled:=false;
// form1.image4.Enabled:=false;
// form1.image5.Enabled:=false;
// form1.image6.Enabled:=false;
// form1.image7.Enabled:=false;
// form1.image8.Enabled:=false;
// form1.image9.Enabled:=false;
// k3:=true;
//end;

procedure TForm1.Button1Click(Sender: TObject);
begin



   form1.Button1.Top:=368;
  form1.Button1.left:=224;
  form1.Button1.Caption:='restart';
  label7.caption:=' ';
  form1.Image1.picture.loadfromfile('null.png');
  form1.image1.enabled:=true;
  form1.Image2.picture.loadfromfile('null.png');
  form1.image2.enabled:=true;
  form1.Image3.picture.loadfromfile('null.png');
  form1.image3.enabled:=true;
  form1.Image4.picture.loadfromfile('null.png');
  form1.image4.enabled:=true;
  form1.Image5.picture.loadfromfile('null.png');
  form1.image5.enabled:=true;
  form1.Image6.picture.loadfromfile('null.png');
  form1.image6.enabled:=true;
  form1.Image7.picture.loadfromfile('null.png');
  form1.image7.enabled:=true;
  form1.Image8.picture.loadfromfile('null.png');
  form1.image8.enabled:=true;
  form1.Image9.picture.loadfromfile('null.png');
  form1.image9.enabled:=true;
  a1:=2;
  a2:=2;
  a3:=2;
  b1:=2;
  b2:=2;
  b3:=2;
  c1:=2;
  c2:=2;
  c3:=2;



end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  p1:=form1.Edit1.text;
  p2:=form1.Edit2.text;
  comp:=form1.CheckBox1.Checked;
  form1.Label10.Caption:=p1;
  form1.label11.Caption:=p2;

  form1.label12.Visible:=true;
  form1.label13.Visible:=true;
  form1.image1.visible:=true;
  form1.image2.visible:=true;
  form1.image3.visible:=true;
  form1.image4.visible:=true;
  form1.image5.visible:=true;
  form1.image6.visible:=true;
  form1.image7.visible:=true;
  form1.image8.visible:=true;
  form1.image9.visible:=true;
  form1.Button1.visible:=true;
  form1.label7.visible:=true;  form1.
  label7.caption:=' ';

  form1.image10.visible:=false;
  form1.image11.visible:=false;
  form1.label9.visible:=false;
  form1.label8.visible:=false;
  form1.button2.visible:=false;
  form1.edit1.Visible:=false;
  form1.edit2.Visible:=false;
  form1.checkbox1.visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 close
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 move:=true;
   repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
   canvas.Brush.Color:=clBlack;
      CANVAS.roundrect(226,58,240,368,15,15);
   CANVAS.roundrect(330,58,344,368,15,15);
   CANVAS.roundrect(130,154,440,168,15,15);
   CANVAS.roundrect(130,258,440,272,15,15);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin if comp=false then begin  {против человека}
  if i mod 2=0 then   begin b3:=1;
   image2.picture.loadfromfile('cross.png') end else
   begin b3:=0;
   image2.picture.loadfromfile('zero.png');
   end;
   i:=i+1;
   image2.enabled:=false;
   if ((b1=b2) and (b2=b3)) or ((a3=b3) and (b3=c3)) then
 begin if b3=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false; move:=true;  end; end else begin
     {против компа}
     image2.picture.loadfromfile('cross.png');
    b3:=1; //ход чела
    image2.enabled:=false;
  if ((b1=b2) and (b2=b3)) or ((a3=b3) and (b3=c3)) then
 begin  label7.Caption:=p1+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
 move:=true;
 end;
  //ход компа
    if move<>true then begin  sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
    move:=false;
 end else if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin

   move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;
    if ((a1=a2) and (a2=a3) and (a3=0)) or
       ((b1=b2) and (b2=b3) and (b3=0)) or
       ((c1=c2) and (c2=c3) and (c3=0)) or
       ((a1=b2) and (b2=c3) and (c3=0)) or
       ((c1=b2) and (b2=a3) and (a3=0)) or
       ((a1=b1) and (b1=c1) and (c1=0)) or
       ((a2=b2) and (a2=c2) and (a2=0)) or
       ((a3=b3) and (b3=c3) and (c3=0)) then begin
    form1.image1.enabled:=false;
    form1.image2.enabled:=false;
    form1.image3.enabled:=false;
    form1.image4.enabled:=false;
    form1.image5.enabled:=false;
    form1.image6.enabled:=false;
    form1.image7.enabled:=false;
    form1.image8.enabled:=false;
    form1.image9.enabled:=false;
    move:=true;
    form1.label7.caption:=p2+' Won!';
    form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
       end;
end;move:=false;end;
 end;

procedure TForm1.Image3Click(Sender: TObject);
begin  if comp=false then begin  {против человека}
  if i mod 2=0 then    begin b1:=1;
  image3.picture.loadfromfile('cross.png') end else
  begin b1:=0;
  image3.picture.loadfromfile('zero.png');  end;
   i:=i+1;
   image3.enabled:=false;
   if ((b1=b2) and (b2=b3)) or ((b1=a1) and (b1=c1))  then
  begin if b1=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';;form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end; end else begin

   {против компа}

     b1:=1; //ход чела
    image3.enabled:=false;
  if ((b1=b2) and (b2=b3)) or ((a1=b1) and (b1=c1)) then
 begin  label7.Caption:=p1+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false; move:=true;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
 end;
  image3.picture.loadfromfile('cross.png');
  //ход компа

     if move<>true then begin sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;



 end else if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin

  move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;
     if ((a1=a2) and (a2=a3) and (a3=0)) or
   ((b1=b2) and (b2=b3) and (b3=0)) or
   ((c1=c2) and (c2=c3) and (c3=0)) or
   ((a1=b2) and (b2=c3) and (c3=0)) or
   ((c1=b2) and (b2=a3) and (a3=0)) or
   ((a1=b1) and (b1=c1) and (c1=0)) or
   ((a2=b2) and (a2=c2) and (a2=0)) or
   ((a3=b3) and (b3=c3) and (c3=0)) then begin
form1.image1.enabled:=false;
form1.image2.enabled:=false;
form1.image3.enabled:=false;
form1.image4.enabled:=false;
form1.image5.enabled:=false;
form1.image6.enabled:=false;
form1.image7.enabled:=false;
form1.image8.enabled:=false;
form1.image9.enabled:=false;
move:=true;
form1.label7.caption:=p2+' Won!';
form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
   end;

     end;move:=false;end;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin     if comp=false then begin    {против человека}
  if i mod 2=0 then    begin c1:=1;
  image4.picture.loadfromfile('cross.png'); end else
  begin    c1:=0;
   image4.picture.loadfromfile('zero.png');end;
   i:=i+1;     image4.enabled:=false;
   if ((c1=c2) and (c2=c3)) or ((a1=b1) and (b1=c1)) or ((c1=b2) and (b2=a3)) then
  begin  if c1=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end; end else begin

   {против компа}


    c1:=1; //ход чела
    image4.enabled:=false;
  if ((c1=c2) and (c2=c3)) or ((a1=b1) and (b1=c1)) or ((a3=b2) and (b2=c1)) then
 begin  label7.Caption:=p1+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;    move:=true;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
 end;
  image4.picture.loadfromfile('cross.png');
  //ход компа
   if move<>true then begin  //sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;



 end else if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin

  move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

   if ((a1=a2) and (a2=a3) and (a3=0)) or
   ((b1=b2) and (b2=b3) and (b3=0)) or
   ((c1=c2) and (c2=c3) and (c3=0)) or
   ((a1=b2) and (b2=c3) and (c3=0)) or
   ((c1=b2) and (b2=a3) and (a3=0)) or
   ((a1=b1) and (b1=c1) and (c1=0)) or
   ((a2=b2) and (a2=c2) and (a2=0)) or
   ((a3=b3) and (b3=c3) and (c3=0)) then begin
form1.image1.enabled:=false;
form1.image2.enabled:=false;
form1.image3.enabled:=false;
form1.image4.enabled:=false;
form1.image5.enabled:=false;
form1.image6.enabled:=false;
form1.image7.enabled:=false;
form1.image8.enabled:=false;
form1.image9.enabled:=false;
move:=true;
form1.label7.caption:=p2+' Won!';
form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
   end;

   end; move:=false;end;
 end;
procedure TForm1.Image5Click(Sender: TObject);
begin     if comp=false then begin         {против человека}
  if i mod 2=0 then     begin a3:=1;
  image5.picture.loadfromfile('cross.png'); end else
  begin a3:=0;
   image5.picture.loadfromfile('zero.png'); end;
   i:=i+1;     image5.enabled:=false;
   if ((a1=a2) and (a2=a3)) or ((a3=b3) and (b3=c3)) or ((a3=b2) and (b2=c1)) then
  begin  if a3=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end; end else begin

   {против компа}

    a3:=1; //ход чела
    image5.enabled:=false;
    image5.Picture.LoadFromFile('cross.png');
  if ((a1=a2) and (a2=a3)) or ((a3=b3) and (b3=c3)) or ((a3=b2) and (b2=c1)) then
 begin  label7.Caption:=p1+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;     move:=true;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
 end;

  //ход компа
    if move<>true then begin//  sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;



 end else if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin

   move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

 if ((a1=a2) and (a2=a3) and (a3=0)) or
   ((b1=b2) and (b2=b3) and (b3=0)) or
   ((c1=c2) and (c2=c3) and (c3=0)) or
   ((a1=b2) and (b2=c3) and (c3=0)) or
   ((c1=b2) and (b2=a3) and (a3=0)) or
   ((a1=b1) and (b1=c1) and (c1=0)) or
   ((a2=b2) and (a2=c2) and (a2=0)) or
   ((a3=b3) and (b3=c3) and (c3=0)) then begin
form1.image1.enabled:=false;
form1.image2.enabled:=false;
form1.image3.enabled:=false;
form1.image4.enabled:=false;
form1.image5.enabled:=false;
form1.image6.enabled:=false;
form1.image7.enabled:=false;
form1.image8.enabled:=false;
form1.image9.enabled:=false;
move:=true;
form1.label7.caption:=p2+' Won!';
form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
   end;

    end;
move:=false;end;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin   {против человека}  if comp=false then begin
  if i mod 2=0 then   begin c3:=1;
  image6.picture.loadfromfile('cross.png'); end else
begin c3:=0;
   image6.picture.loadfromfile('zero.png');
   end;
i:=i+1;         image6.enabled:=false;
  if ((c1=c2) and (c2=c3)) or ((a3=b3) and (b3=c3)) or ((a1=b2) and (b2=c3)) then
    begin  if c3=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end; end else begin

  {против компа}

  image6.picture.loadfromfile('cross.png');
   c3:=1;
  image6.enabled:=false;

  if ((c1=c2) and (c2=c3)) or ((a3=b3) and (b3=c3)) or ((a1=b2) and (b2=c3)) then
    begin   label7.Caption:=p1+' Won!!!'  ;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;   move:=true;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
    form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
    end;




    //ход компа
    if move<>true then begin   sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
 end else  if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin

  move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

    if ((a1=a2) and (a2=a3) and (a3=0)) or
   ((b1=b2) and (b2=b3) and (b3=0)) or
   ((c1=c2) and (c2=c3) and (c3=0)) or
   ((a1=b2) and (b2=c3) and (c3=0)) or
   ((c1=b2) and (b2=a3) and (a3=0)) or
   ((a1=b1) and (b1=c1) and (c1=0)) or
   ((a2=b2) and (a2=c2) and (a2=0)) or
   ((a3=b3) and (b3=c3) and (c3=0)) then begin
form1.image1.enabled:=false;
form1.image2.enabled:=false;
form1.image3.enabled:=false;
form1.image4.enabled:=false;
form1.image5.enabled:=false;
form1.image6.enabled:=false;
form1.image7.enabled:=false;
form1.image8.enabled:=false;
form1.image9.enabled:=false;
move:=true;
form1.label7.caption:=p2+' Won!';
form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
   end;

    end; move:=false;end;
end;



procedure TForm1.Image7Click(Sender: TObject);
begin   {против человека}   if comp=false then begin
  if i mod 2=0 then      begin b2:=1;
  image7.picture.loadfromfile('cross.png'); end
  else begin b2:=0;
    image7.picture.loadfromfile('zero.png');end;
   i:=i+1;             image7.enabled:=false;
   if ((b1=b2) and (b2=b3)) or ((a2=b2) and (b2=c2)) or ((a1=b2) and (b2=c3))
   or ((c1=b2) and (b2=a3)) then
  begin  if b2=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end;    end else begin

   {против компа}


        b2:=1;
  image7.picture.loadfromfile('cross.png');
   image7.enabled:=false;
   if ((b1=b2) and (b2=b3)) or ((a2=b2) and (b2=c2)) or ((a1=b2) and (b2=c3))
   or ((c1=b2) and (b2=a3)) then
  begin  label7.Caption:=p1+' Won!!!';
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;   move:=true;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
  form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
  end;



      //ход компа
    if move<>true then begin //sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;



 end else if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin

  move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

 if ((a1=a2) and (a2=a3) and (a3=0)) or
   ((b1=b2) and (b2=b3) and (b3=0)) or
   ((c1=c2) and (c2=c3) and (c3=0)) or
   ((a1=b2) and (b2=c3) and (c3=0)) or
   ((c1=b2) and (b2=a3) and (a3=0)) or
   ((a1=b1) and (b1=c1) and (c1=0)) or
   ((a2=b2) and (a2=c2) and (a2=0)) or
   ((a3=b3) and (b3=c3) and (c3=0)) then begin
form1.image1.enabled:=false;
form1.image2.enabled:=false;
form1.image3.enabled:=false;
form1.image4.enabled:=false;
form1.image5.enabled:=false;
form1.image6.enabled:=false;
form1.image7.enabled:=false;
form1.image8.enabled:=false;
form1.image9.enabled:=false;
move:=true;
form1.label7.caption:=p2+' Won!';
form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
   end;

end;move:=false;end; end;

procedure TForm1.Image8Click(Sender: TObject);
begin       {против человека}    if comp=false then begin
  if i mod 2=0 then  begin c2:=1;
  image8.picture.loadfromfile('cross.png'); end
  else begin c2:=0;
    image8.picture.loadfromfile('zero.png');end;
   i:=i+1; image8.enabled:=false;
   if ((c1=c2) and (c2=c3)) or ((a2=b2) and (b2=c2))  then
  begin  if c2=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end;  end else begin

   {против компа}

   c2:=1;
  image8.picture.loadfromfile('cross.png');
  image8.enabled:=false;

   if ((c1=c2) and (c2=c3)) or ((a2=b2) and (b2=c2))  then
  begin  label7.Caption:=p1+' Won!!!';
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false; move:=true;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
  form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
  end;



      //ход компа
    if move<>true then begin    sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;



 end else  if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin
  move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

 if ((a1=a2) and (a2=a3) and (a3=0)) or
   ((b1=b2) and (b2=b3) and (b3=0)) or
   ((c1=c2) and (c2=c3) and (c3=0)) or
   ((a1=b2) and (b2=c3) and (c3=0)) or
   ((c1=b2) and (b2=a3) and (a3=0)) or
   ((a1=b1) and (b1=c1) and (c1=0)) or
   ((a2=b2) and (a2=c2) and (a2=0)) or
   ((a3=b3) and (b3=c3) and (c3=0)) then begin
form1.image1.enabled:=false;
form1.image2.enabled:=false;
form1.image3.enabled:=false;
form1.image4.enabled:=false;
form1.image5.enabled:=false;
form1.image6.enabled:=false;
form1.image7.enabled:=false;
form1.image8.enabled:=false;
form1.image9.enabled:=false;
move:=true;
form1.label7.caption:=p2+' Won!';
form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
   end;

end;move:=false;end; end;

procedure TForm1.Image9Click(Sender: TObject);
begin              {против человека}   if comp=false then begin
  if i mod 2=0 then       begin a2:=1;
  image9.picture.loadfromfile('cross.png'); end else
   begin a2:=0;  image9.picture.loadfromfile('zero.png');
   end;i:=i+1;    image9.enabled:=false;
   if ((a1=a2) and (a2=a3)) or ((a2=b2) and (b2=c2))  then
  begin  if a2=1 then begin label7.Caption:=p1+' Won!!!';form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1)); end else begin label7.Caption:=p2+' Won!!!';form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1); end;
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;  end;   end else begin

   {против компа}


   a2:=1;
  image9.picture.loadfromfile('cross.png');
   image9.enabled:=false;
   if ((a1=a2) and (a2=a3)) or ((a2=b2) and (b2=c2))  then
  begin  label7.Caption:=p1+' Won!!!';
 form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;   move:=true;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
  form1.Label12.Caption:=(inttostr(strtoint(form1.label12.caption)+1));
  end;



       //ход компа
    if move<>true then begin   sleep(random(500)+500);
if (a1=a2) and (a1<>2) and (a3=2) then begin
    a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=a3) and (a1<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if a1=0 then begin
 label7.Caption:=p2+' Won!!!';
 move:=true;
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
end;
end else

if (a1=b1) and (a1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c1) and (a1<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=b2) and (a1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a1=c3) and (a1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=a3) and (a2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=b2) and (a2<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a2=c2) and (a2<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b3) and (a3<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c3) and (a3<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=b2) and (c1<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (a3=c1) and (a3<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if a3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b2) and (b1<>2) and (b3=2) then begin
b3:=0;
form1.Image2.Picture.loadfromfile('zero.png');
form1.Image2.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=b3) and (b1<>2) and (b2=2) then begin
b2:=0;
form1.Image7.Picture.loadfromfile('zero.png');
form1.Image7.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b1=c1) and (b1<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=b3) and (b2<>2) and (b1=2) then begin
b1:=0;
form1.Image3.Picture.loadfromfile('zero.png');
form1.Image3.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=a3) and (b2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c3) and (b2<>2) and (a1=2) then begin
a1:=0;
form1.Image1.Picture.loadfromfile('zero.png');
form1.Image1.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c2) and (b2<>2) and (a2=2) then begin
a2:=0;
form1.Image9.Picture.loadfromfile('zero.png');
form1.Image9.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b2=c1) and (b2<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (b3=c3) and (b3<>2) and (a3=2) then begin
a3:=0;
form1.Image5.Picture.loadfromfile('zero.png');
form1.Image5.enabled:=false;
if b3=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c2) and (c1<>2) and (c3=2) then begin
c3:=0;
form1.Image6.Picture.loadfromfile('zero.png');
form1.Image6.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c1=c3) and (c1<>2) and (c2=2) then begin
c2:=0;
form1.Image8.Picture.loadfromfile('zero.png');
form1.Image8.enabled:=false;
if c1=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else

if (c2=c3) and (c2<>2) and (c1=2) then begin
c1:=0;
form1.Image4.Picture.loadfromfile('zero.png');
form1.Image4.enabled:=false;
if c2=0 then begin label7.Caption:=p2+' Won!!!';
  form1.image1.Enabled:=false;
 form1.image2.Enabled:=false;
 form1.image3.Enabled:=false;
 form1.image4.Enabled:=false;
 form1.image5.Enabled:=false;
 form1.image6.Enabled:=false;
 form1.image7.Enabled:=false;
 form1.image8.Enabled:=false;
 form1.image9.Enabled:=false;
 end;
end else if (a1=2) or (a2=2) or (a3=2) or
(b1=2) or (b2=2) or (b3=2) or
(c1=2) or (c2=2) or (c3=2) then begin
  move:=true;
 randomize;
 repeat
 k:=random(9);
  case k of
 0:if a1=2 then begin
 a1:=0; move:=false;
 image1.picture.loadfromfile('zero.png');
 image1.enabled:=false;
 end;
 1:if a2=2 then begin
 a2:=0; move:=false;
 image9.picture.loadfromfile('zero.png');
 image9.enabled:=false;
 end;
 2:if a3=2 then begin
 a3:=0; move:=false;
 image5.enabled:=false;
 image5.picture.loadfromfile('zero.png');
 end;
 3:if b1=2 then begin
 b1:=0; move:=false;
 image3.enabled:=false;
 image3.picture.loadfromfile('zero.png');
 end;
 4:if b2=2 then begin
 b2:=0; move:=false;
 image7.enabled:=false;
 image7.picture.loadfromfile('zero.png');
 end;
 5:if b3=2 then begin
 b3:=0; move:=false;
 image2.enabled:=false;
 image2.picture.loadfromfile('zero.png');
 end;
 6:if c1=2 then begin
 c1:=0; move:=false;
 image4.enabled:=false;
 image4.picture.loadfromfile('zero.png');
 end;
 7:if c2=2 then begin
 c2:=0; move:=false;
 image8.enabled:=false;
 image8.picture.loadfromfile('zero.png');
 end;
 8:if c3=2 then begin
 c3:=0; move:=false;
 image6.enabled:=false;
 image6.picture.loadfromfile('zero.png');
 end;
 end;

 until move=false;
end;

    if ((a1=a2) and (a2=a3) and (a3=0)) or
       ((b1=b2) and (b2=b3) and (b3=0)) or
       ((c1=c2) and (c2=c3) and (c3=0)) or
       ((a1=b2) and (b2=c3) and (c3=0)) or
       ((c1=b2) and (b2=a3) and (a3=0)) or
       ((a1=b1) and (b1=c1) and (c1=0)) or
       ((a2=b2) and (a2=c2) and (a2=0)) or
       ((a3=b3) and (b3=c3) and (c3=0)) then begin
    form1.image1.enabled:=false;
    form1.image2.enabled:=false;
    form1.image3.enabled:=false;
    form1.image4.enabled:=false;
    form1.image5.enabled:=false;
    form1.image6.enabled:=false;
    form1.image7.enabled:=false;
    form1.image8.enabled:=false;
    form1.image9.enabled:=false;
    move:=true;
    form1.label7.caption:=p2+' Won!';
    form1.Label13.Caption:=inttostr(strtoint(form1.label13.caption)+1);
       end;

end;move:=false;end;
 end;
end.

