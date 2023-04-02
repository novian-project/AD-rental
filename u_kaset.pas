unit u_kaset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, frxpngimage, sPanel;

type
  Tform_film = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    id_film: TEdit;
    jdl_film: TEdit;
    kategori: TEdit;
    jml_film: TEdit;
    jml_keping: TEdit;
    harga: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    r_grup: TRadioGroup;
    pencarian: TEdit;
    Panel1: TPanel;
    baru: TButton;
    tambah: TButton;
    ubah: TButton;
    hapus: TButton;
    batal: TButton;
    keluar: TButton;
    Image1: TImage;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    Image3: TImage;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure baruClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure hargaKeyPress(Sender: TObject; var Key: Char);
    procedure onaktif_kaset;
    procedure cekanomali;
    procedure cekinput;
    procedure jml_kepingKeyPress(Sender: TObject; var Key: Char);
    procedure jml_filmKeyPress(Sender: TObject; var Key: Char);
    procedure pencarianChange(Sender: TObject);
    procedure r_grupClick(Sender: TObject);
    procedure hargaChange(Sender: TObject);
    procedure jml_filmChange(Sender: TObject);
    procedure jml_kepingChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_film: Tform_film;
  cek_anomali, cek_input : string[3];

implementation

uses u_dm;

{$R *.dfm}

procedure Tform_film.onaktif_kaset;
begin
with dm.film do
begin
  Active := false;
  Active := True;
  dm.film.First;
  id_film.Text := FieldByName('id_film').asstring;
  jdl_film.Text := FieldByName('judul_film').asstring;
  kategori.Text := FieldByName('kategori').asstring;
  jml_film.Text := FieldByName('jumlah_film').asstring;
  jml_keping.Text := FieldByName('jml_keping').asstring;
  harga.Text := FieldByName('harga').asstring;
end;

id_film.Enabled := false;
jdl_film.Enabled := false;
kategori.Enabled := false;
jml_film.Enabled := false;
jml_keping.Enabled := false;
harga.Enabled := false;


tambah.Enabled := false;
batal.Enabled := false;
ubah.Enabled := true;
hapus.Enabled := true;
baru.Enabled := true;
keluar.Enabled := true;
DBGrid1.Enabled := true;
ubah.Caption := '&Ubah';
end;

procedure Tform_film.cekanomali;
begin
  with dm do
  begin
    if  (film.Locate('judul_film', jdl_film.Text,[])) AND
        (film.FieldByName('id_film').AsString <> id_film.Text) then
      begin
        application.MessageBox('Data Sudah Digunakan !','Pemberitahuan !',mb_ok or MB_ICONERROR);
        cek_anomali := 'ya' ;
      end
    else
      cek_anomali := 'tdk' ;
  end;
end;

procedure Tform_film.cekinput;
begin
if (id_film.Text = '') or
   (jdl_film.Text = '') or
   (kategori.Text = '') or
   (jml_film.Text = '') or
   (jml_keping.Text = '') or
   (harga.Text = '')
then
    begin
      cek_input := 'ya' ;
    end
else
      cek_input := 'tdk' ;
end;


procedure Tform_film.DBGrid1CellClick(Column: TColumn);
begin
with dm.film do
begin
  id_film.Text := FieldByName('id_film').asstring;
  jdl_film.Text := FieldByName('judul_film').asstring;
  kategori.Text := FieldByName('kategori').asstring;
  jml_film.Text := FieldByName('jumlah_film').asstring;
  jml_keping.Text := FieldByName('jml_keping').asstring;
  harga.Text := FieldByName('harga').asstring;
end;
end;

procedure Tform_film.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.film do
begin
  id_film.Text := FieldByName('id_film').asstring;
  jdl_film.Text := FieldByName('judul_film').asstring;
  kategori.Text := FieldByName('kategori').asstring;
  jml_film.Text := FieldByName('jumlah_film').asstring;
  jml_keping.Text := FieldByName('jml_keping').asstring;
  harga.Text := FieldByName('harga').asstring;
end;
end;

procedure Tform_film.baruClick(Sender: TObject);
var a : string ; b : integer;
begin
jdl_film.Text := '';
kategori.Text := '';
jml_film.Text := '';
jml_keping.Text := '';
harga.Text := '';

jdl_film.Enabled := true;
kategori.Enabled := true;
jml_film.Enabled := true;
jml_keping.Enabled := true;
harga.Enabled := true;

tambah.Enabled := true;
ubah.Enabled := false;
hapus.Enabled := false;
batal.Enabled := true;
keluar.Enabled := false;
baru.Enabled := false;
DBGrid1.Enabled := false;
DBGrid1.Refresh;

if dm.film.Recordset.RecordCount > 0 then
      begin
        dm.film.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'FLM'+format('%.4d',[b]);
            if (dm.film.Locate('id_film',a,[]) = false) then
              begin
                 id_film.Text := a;
                 jdl_film.SetFocus;
                 Exit;
              end
            else
              begin
              dm.film.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.film.Recordset.RecordCount + 1);
      end
else
id_film.Text := 'FLM'+format('%.4d',[1]);
jdl_film.SetFocus;
end;

procedure Tform_film.tambahClick(Sender: TObject);
begin
with dm do
begin
cekanomali;
cekinput;
if (cek_anomali = 'ya') or (cek_input = 'ya') then
    exit
else
  begin
    film.Append;
    film['id_film'] := id_film.Text;
    film['judul_film'] := jdl_film.Text;
    film['kategori'] := kategori.Text;
    film['jumlah_film'] := jml_film.Text;
    film['jml_keping'] := jml_keping.Text;
    film['status_pinjam'] := '0';
    film['harga'] := harga.Text;
    film.Post;
    onaktif_kaset;
  end;
end;
end;

procedure Tform_film.ubahClick(Sender: TObject);
begin
with dm do
begin
if ubah.Caption = '&Ubah' then
  begin
    id_film.Enabled := true;
    jdl_film.Enabled := true;
    kategori.Enabled := true;
    jml_film.Enabled := true;
    jml_keping.Enabled := true;
    harga.Enabled := true;

    baru.Enabled := false;
    tambah.Enabled := false;
    hapus.Enabled := false;
    batal.Enabled := true;
    keluar.Enabled := false;
    ubah.Caption := '&Simpan';
    id_film.Enabled := false;
    DBGrid1.Enabled := false;
    DBGrid1.Refresh;
  end
else
  begin
    cekinput;
    cekanomali;
    if (cek_anomali = 'ya') or (cek_input = 'ya') then
        exit
    else
      begin
        film.Edit;
        film['id_film'] := id_film.Text;
        film['judul_film'] := jdl_film.Text;
        film['kategori'] := kategori.Text;
        film['jumlah_film'] := jml_film.Text;
        film['jml_keping'] := jml_keping.Text;
        film['harga'] := harga.Text;
        film.Post;
        onaktif_kaset;
      end;
  end;
end;
end;

procedure Tform_film.hapusClick(Sender: TObject);
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
dm.film.Delete;
onaktif_kaset;
end;

procedure Tform_film.batalClick(Sender: TObject);
begin
onaktif_kaset;
end;

procedure Tform_film.keluarClick(Sender: TObject);
begin
close;
end;

procedure Tform_film.FormActivate(Sender: TObject);
begin
onaktif_kaset;
end;

procedure Tform_film.hargaKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;
end;


procedure Tform_film.jml_kepingKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;
end;

procedure Tform_film.jml_filmKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;
end;



procedure Tform_film.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'judul_film';
    pencarian.MaxLength := 30;
   end
else
  begin
    pilih := 'kategori' ;
    pencarian.MaxLength := 20 ;
  end;

with dm.film do
begin
if pencarian.Text = '' then
begin
  active := false;
  sql.Text := 'Select * From film Order By id_film';
  active := true;
  DBGrid1.Refresh;
end
else
begin
  Active:=False;
  sql.Text :='Select * From film Where ' + pilih + ' Like '+
  QuotedStr('%'+judul+'%');
  Active:=True;
  DBGrid1.Refresh;
end;

end;
end;
procedure Tform_film.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Tform_film.hargaChange(Sender: TObject);
begin
if harga.Text = '0' then
begin
application.MessageBox('Harga Tidak Boleh 0 !','Pemberitahuan !',mb_ok or MB_ICONWARNING);
harga.Text := '';
end;
end;

procedure Tform_film.jml_filmChange(Sender: TObject);
begin
if jml_film.Text = '0' then
begin
application.MessageBox('Silahkan Masukan Nilai !','Pemberitahuan !',mb_ok or MB_ICONWARNING);
jml_film.Text := '';
end;
end;

procedure Tform_film.jml_kepingChange(Sender: TObject);
begin
if jml_keping.Text = '0' then
  begin
    application.MessageBox('Silahkan Masukan Nilai !','Pemberitahuan !',mb_ok or MB_ICONWARNING);
    jml_keping.Text := '';
  end;

end;


end.

