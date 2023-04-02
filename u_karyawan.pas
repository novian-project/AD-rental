unit u_karyawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  Tform_karyawan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    id_karyawan: TEdit;
    nm_karyawan: TEdit;
    alamat: TEdit;
    no_telp: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    r_grup: TRadioGroup;
    pencarian: TEdit;
    Panel1: TPanel;
    baru: TButton;
    tambah: TButton;
    ubah: TButton;
    hapus: TButton;
    batal: TButton;
    keluar: TButton;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    Image3: TImage;
    procedure onaktif_kry;
    procedure FormActivate(Sender: TObject);
    procedure nm_karyawanKeyPress(Sender: TObject; var Key: Char);
    procedure no_telpKeyPress(Sender: TObject; var Key: Char);
    procedure r_grupClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure baruClick(Sender: TObject);
    procedure cekanomali;
    procedure cekinput;
    procedure ubahClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
    procedure pencarianChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_karyawan: Tform_karyawan;
  cek_anomali, cek_input : string[3];

implementation

uses u_dm, DB, ADODB;

{$R *.dfm}

procedure Tform_karyawan.onaktif_kry;
begin
with dm.karyawan do
begin
  Active := false;
  Active := true;
  First;
  id_karyawan.Text := FieldByName('id_karyawan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  alamat.Text := FieldByName('alamat').asstring;
  no_telp.Text := FieldByName('no_telp').asstring;
end;

id_karyawan.Enabled := false;
nm_karyawan.Enabled := false;
alamat.Enabled := false;
no_telp.Enabled := false;

baru.Enabled := true;
tambah.Enabled := false;
ubah.Enabled := true;
hapus.Enabled := true;
batal.Enabled := false;
keluar.Enabled := true;
dbgrid1.Enabled := true;

ubah.Caption := '&Ubah';
end;

procedure Tform_karyawan.cekinput;
begin
if (id_karyawan.Text ='') or
   (nm_karyawan.Text ='') or
   (alamat.Text ='') or
   (no_telp.Text ='')
then
    begin
      cek_input := 'ya' ;
    end
else
      cek_input := 'tdk' ;
end;

procedure Tform_karyawan.cekanomali;
begin
  with dm do
  begin
    if ((karyawan.Locate('nm_karyawan', nm_karyawan.Text,[])) AND
       (karyawan.FieldByName('alamat').AsString = alamat.Text)) OR
       (karyawan.Locate('no_telp', no_telp.Text,[])) then
      begin
        application.MessageBox('Data Sudah Digunakan !','Pemberitahuan !',mb_ok or MB_ICONERROR);
        cek_anomali := 'ya' ;
      end
    else
      cek_anomali := 'tdk' ;
  end;
end;

procedure Tform_karyawan.FormActivate(Sender: TObject);
begin
onaktif_kry;
end;

procedure Tform_karyawan.nm_karyawanKeyPress(Sender: TObject;
  var Key: Char);
begin
if not ( key in[ 'A'..'Z', 'a'..'z', #8, #13, #32, #46, #44, #39]) then
    key := #0;
end;

procedure Tform_karyawan.no_telpKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;
end;

procedure Tform_karyawan.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Tform_karyawan.tambahClick(Sender: TObject);
begin
with dm do
begin
cekanomali;
cekinput;
if (cek_anomali = 'ya') or (cek_input = 'ya') then
    exit
else
    karyawan.Append;
    karyawan['id_karyawan'] := id_karyawan.Text;
    karyawan['nm_karyawan'] := nm_karyawan.Text;
    karyawan['alamat'] := alamat.Text;
    karyawan['no_telp'] := no_telp.Text;
    karyawan.Post;
    onaktif_kry;
end;
end;


procedure Tform_karyawan.baruClick(Sender: TObject);
var a : string; b : integer;
begin
nm_karyawan.Text := '';
alamat.Text := '';
no_telp.Text := '';

nm_karyawan.Enabled := true;
alamat.Enabled := true;
no_telp.Enabled := true;

tambah.Enabled := true;
ubah.Enabled := false;
hapus.Enabled := false;
batal.Enabled := true;
keluar.Enabled := false;
baru.Enabled := false;
dbgrid1.Enabled := false;
dbgrid1.Refresh;

if dm.karyawan.Recordset.RecordCount > 0 then
      begin
        dm.karyawan.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'KRY'+format('%.3d',[b]);
            if (dm.karyawan.Locate('id_karyawan',a,[]) = false) then
              begin
                 id_karyawan.Text := a;
                 nm_karyawan.SetFocus;
                 Exit;
              end
            else
              begin
              dm.karyawan.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.karyawan.Recordset.RecordCount + 1);
      end
else
id_karyawan.Text := 'KRY'+format('%.3d',[1]);
nm_karyawan.SetFocus
end;

procedure Tform_karyawan.ubahClick(Sender: TObject);
begin
with dm do
begin
if ubah.Caption = '&Ubah' then
  begin
    id_karyawan.Enabled := false;
    nm_karyawan.Enabled := true;
    alamat.Enabled := true;
    no_telp.Enabled := true;

    baru.Enabled := false;
    tambah.Enabled := false;
    hapus.Enabled := false;
    batal.Enabled := true;
    keluar.Enabled := false;
    DBGrid1.Enabled := false;
    DBGrid1.Refresh;
    ubah.Caption := '&Simpan';
  end
else
  begin
    cekinput;
    if (cek_input = 'ya') then
        exit
    else
        karyawan.Edit;
        karyawan['id_karyawan'] := id_karyawan.Text;
        karyawan['nm_karyawan'] := nm_karyawan.Text;
        karyawan['alamat'] := alamat.Text;
        karyawan['no_telp'] := no_telp.Text;
        karyawan.Post;
        ubah.Caption := 'Ubah';
        onaktif_kry;
  end;
end;
end;

procedure Tform_karyawan.batalClick(Sender: TObject);
begin
onaktif_kry;
end;

procedure Tform_karyawan.keluarClick(Sender: TObject);
begin
close;
end;

procedure Tform_karyawan.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'id_karyawan' ;
    pencarian.MaxLength := 6;
  end
else
  begin
    pilih := 'nm_karyawan' ;
    pencarian.MaxLength := 30;
  end;

with dm.karyawan do
begin
if pencarian.Text = '' then
begin
  active := false;
  sql.Text := 'Select * From karyawan Order By id_karyawan';
  active := true;
  DBGrid1.Refresh;
end
else
begin
  Active:=False;
  sql.Text :='Select * From karyawan Where ' + pilih + ' Like '+
  QuotedStr('%'+judul+'%');
  Active:=True;
  DBGrid1.Refresh;
end;

end;
end;

procedure Tform_karyawan.DBGrid1CellClick(Column: TColumn);
begin
with dm.karyawan do
begin
  id_karyawan.Text := FieldByName('id_karyawan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  alamat.Text := FieldByName('alamat').asstring;
  no_telp.Text := FieldByName('no_telp').asstring;
end;
end;

procedure Tform_karyawan.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.karyawan do
begin
  id_karyawan.Text := FieldByName('id_karyawan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  alamat.Text := FieldByName('alamat').asstring;
  no_telp.Text := FieldByName('no_telp').asstring;
end;
end;

procedure Tform_karyawan.hapusClick(Sender: TObject);
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
dm.karyawan.Delete;
onaktif_kry;
end;

end.
