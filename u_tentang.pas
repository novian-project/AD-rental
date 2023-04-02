unit u_tentang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sPanel, frxpngimage, ExtCtrls;

type
  Tform_tentang = class(TForm)
    biasa: TImage;
    Image2: TImage;
    glow: TImage;
    procedure FormActivate(Sender: TObject);
    procedure biasaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure glowClick(Sender: TObject);
    procedure glowMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure biasaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_tentang: Tform_tentang;

implementation

{$R *.dfm}

procedure Tform_tentang.FormActivate(Sender: TObject);
begin
glow.Visible := false;
end;

procedure Tform_tentang.biasaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
glow.Visible := true;
end;

procedure Tform_tentang.glowClick(Sender: TObject);
begin
close;
end;

procedure Tform_tentang.glowMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
glow.Visible := false;
end;

procedure Tform_tentang.biasaClick(Sender: TObject);
begin
close;
end;

end.
