unit u_operator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxpngimage, ExtCtrls;

type
  TForm_password = class(TForm)
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    id_karyawan: TEdit;
    username: TEdit;
    Label3: TLabel;
    password: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    baru: TButton;
    tambah: TButton;
    ubah: TButton;
    hapus: TButton;
    batal: TButton;
    keluar: TButton;
    tampil: TCheckBox;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure tambahClick(Sender: TObject);
    procedure baruClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
    procedure onaktif_op;
    procedure batalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tampilClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_password: TForm_password;

implementation

uses u_dm, ADODB, DB;

{$R *.dfm}

procedure TForm_password.onaktif_op;
begin
with dm.operator do
begin
  Active := false;
  Active := True;
  dm.operator.First;
  id_karyawan.Text := FieldByName('id_karyawan').asstring;
  username.Text := FieldByName('username').asstring;
  password.Text := FieldByName('password').asstring;
end;

id_karyawan.Enabled := false;
username.Enabled := false;
password.Enabled := false;
tampil.Enabled := false;

tambah.Enabled := false;
batal.Enabled := false;
ubah.Enabled := true;
hapus.Enabled := true;
baru.Enabled := true;
keluar.Enabled := true;
DBGrid1.Enabled := true;
end;

procedure TForm_password.DBGrid1CellClick(Column: TColumn);
begin
  with dm.operator do
begin
id_karyawan.Text := FieldByName('id_karyawan').asstring;
username.Text := FieldByName('username').AsString;
password.Text := FieldByName('password').AsString;
end;
end;

procedure TForm_password.tambahClick(Sender: TObject);
begin
  with dm.operator, dm do
begin
Append ;
operator['id_karyawan'] := id_karyawan.Text;
operator['username'] := username.Text;
operator['password'] := password.Text;
Post;
onaktif_op;
end;
end;

procedure TForm_password.baruClick(Sender: TObject);
begin
id_karyawan.Text := '';
username.Text := '';
password.Text := '';
tampil.Checked := false;
tampil.Enabled := true;

id_karyawan.Enabled := true;
username.Enabled := true;
password.Enabled := true;

tambah.Enabled := true;
ubah.Enabled := false;
hapus.Enabled := false;
batal.Enabled := true;
keluar.Enabled := false;
baru.Enabled := false;
DBGrid1.Enabled := false;
DBGrid1.Refresh;
end;

procedure TForm_password.ubahClick(Sender: TObject);
begin
with dm do
begin
if ubah.Caption = '&Ubah' then
  begin
    username.Enabled := true;
    password.Enabled := true;

    baru.Enabled := false;
    tambah.Enabled := false;
    hapus.Enabled := false;
    batal.Enabled := true;
    keluar.Enabled := false;
    ubah.Caption := '&Simpan';
    DBGrid1.Enabled := false;
    DBGrid1.Refresh;
  end
else
  begin
        operator.Edit;
        operator['id_karyawan'] := id_karyawan.Text;
        operator['username'] := username.Text;
        operator['password'] := password.Text;
        operator.Post;
        ubah.Caption := '&Ubah';
        onaktif_op;
  end;
end;
end;


procedure TForm_password.hapusClick(Sender: TObject);
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
dm.operator.Delete;
onaktif_op;
end;

procedure TForm_password.keluarClick(Sender: TObject);
begin
close;
end;


procedure TForm_password.batalClick(Sender: TObject);
begin
onaktif_op;
ubah.Caption := '&Ubah';
end;

procedure TForm_password.FormActivate(Sender: TObject);
begin
onaktif_op;
end;

procedure TForm_password.tampilClick(Sender: TObject);
begin
if tampil.Checked = true then
  password.PasswordChar := #0
else
  password.PasswordChar := #42;
end;

procedure TForm_password.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with dm.operator do
begin
id_karyawan.Text := FieldByName('id_karyawan').asstring;
username.Text := FieldByName('username').AsString;
password.Text := FieldByName('password').AsString;
end;
end;

end.
