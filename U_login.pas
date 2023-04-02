unit U_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPMan, frxpngimage, DB, ADODB, pngimage;

type
  Tform_login = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    username: TEdit;
    password: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    lid_karyawan: TLabel;
    id_karyawan: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure id_karyawanKeyPress(Sender: TObject; var Key: Char);
    procedure id_karyawanChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;
  lagi : integer;

implementation

uses u_menu_utama, u_dm, u_operator;

{$R *.dfm}

procedure Tform_login.Button2Click (Sender: TObject);
begin
if Button2.Caption = 'Batal' then
form_login.Hide
else
Application.Terminate;
end;

procedure Tform_login.Button1Click(Sender: TObject);
begin
if (id_karyawan.Text = '') or
   (username.Text = '') or
   (password.Text = '')
then
    begin
      application.MessageBox('Input Harus Diisi Semua !','Pemberitahuan !',mb_ok or MB_IconWarning);
      exit;
    end;

if (dm.operator.Locate('id_karyawan',id_karyawan.Text,[])) and
  (dm.operator.FieldByName('username').AsString=username.Text) and
  (dm.operator.FieldByName('password').AsString=password.Text) and
  (lagi<=2)  then
  begin
    form_utama.StatusBar1.Panels[2].Text := username.Text;
    form_utama.status.Caption := 'ON';
    form_utama.username.Caption := id_karyawan.Text;
    form_login.Hide;
    form_utama.Show;
    form_utama.master.Enabled := true;
    form_utama.L1.Enabled := false;
    form_utama.L2.Enabled := true;
    form_utama.transaksi.Enabled := true;
    form_utama.laporan.Enabled := true;
    form_utama.fasilitas.Enabled := true;
  end
else
  begin
      application.MessageBox('ID atau Username atau Password Salah !','Pemberitahuan !',mb_ok or MB_ICONERROR);
      lagi:=lagi+1;

      if lagi>2 then
          begin
          application.MessageBox('Silahkan Hubungi Administrator !','Pemberitahuan !',mb_ok or MB_IconWarning);
          application.Terminate;
          end;
      exit;
  end;

end;

procedure Tform_login.FormActivate(Sender: TObject);
begin
id_karyawan.SetFocus;
lagi := 0;
end;

procedure Tform_login.Timer1Timer(Sender: TObject);
var
jam, detik : string;
begin
jam := FormatDateTime('hh:mm',time);
detik := FormatDateTime('ss',time);
form_utama.det.Caption := detik;
form_utama.waktu.Caption := jam;
end;

procedure Tform_login.id_karyawanKeyPress(Sender: TObject; var Key: Char);
begin
if length(id_karyawan.Text) = 3 then
begin
  if not ( key in[ '0'..'9', #13]) then
    key := #0;
end;
end;

procedure Tform_login.id_karyawanChange(Sender: TObject);
var
kata : string[3];
begin
kata := copy(id_karyawan.Text, 1,3);

if kata <> 'KRY' then
id_karyawan.Text := 'KRY';
end;


end.
