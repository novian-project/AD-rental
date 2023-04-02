unit u_sewa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, frxpngimage, ComCtrls ;

type
  Tform_sewa = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Image3: TImage;
    id_sewa: TEdit;
    id_pelanggan: TEdit;
    id_karyawan: TEdit;
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
    Label4: TLabel;
    nm_karyawan: TEdit;
    Label6: TLabel;
    nm_pelanggan: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    tgl_sewa: TDateTimePicker;
    tgl_kembali: TDateTimePicker;
    jaminan: TComboBox;
    b_id_pel: TButton;
    b_id_kar: TButton;
    biaya: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    no_jaminan: TEdit;
    cetak: TButton;
    Label13: TLabel;
    total_sewa: TEdit;
    procedure onaktif_sewa;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jaminanKeyPress(Sender: TObject; var Key: Char);
    procedure baruClick(Sender: TObject);
    procedure tgl_sewaChange(Sender: TObject);
    procedure r_grupClick(Sender: TObject);
    procedure pencarianChange(Sender: TObject);
    procedure nm_karyawanKeyPress(Sender: TObject; var Key: Char);
    procedure nm_pelangganKeyPress(Sender: TObject; var Key: Char);
    procedure jml_sewaKeyPress(Sender: TObject; var Key: Char);
    procedure b_id_karClick(Sender: TObject);
    procedure b_id_pelClick(Sender: TObject);
    procedure b_id_filmClick(Sender: TObject);
    procedure cekinput;
    procedure cekid;
    procedure tambahClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure no_jaminanKeyPress(Sender: TObject; var Key: Char);
    procedure cetakClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure no_jaminanChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_sewa: Tform_sewa;
  cek_input, cek_id, cek_stok, cek_sewa : string[3];
  krg_film, krg_plg: integer;


implementation

uses u_dm, u_short, u_s_pelanggan, u_s_film, DB, u_detail;

{$R *.dfm}

procedure Tform_sewa.onaktif_sewa;
begin
with dm.q_sewa do
begin
  Active := false;
  sql.Text := 'select * from q_sewa ORDER By id_sewa';
  Active := True;
  First;
  id_sewa.Text := FieldByName('id_sewa').asstring;
  id_pelanggan.Text := dm.t_sewa.FieldByName('id_pelanggan').asstring;
  id_karyawan.Text := dm.t_sewa.FieldByName('id_karyawan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  tgl_sewa.Date := FieldByName('tgl_sewa').AsDateTime;
  tgl_kembali.DateTime := FieldByName('tgl_hrs_kmb').AsDateTime;
  jaminan.Text := FieldByName('jaminan').AsString;
  no_jaminan.Text := FieldByName('no_jaminan').AsString;
  total_sewa.Text := FieldByName('total_sewa').AsString;
  biaya.Caption := FieldByName('biaya').AsString;
end;

id_sewa.Enabled := false;
id_pelanggan.Enabled := false;
id_karyawan.Enabled := false;
b_id_pel.Enabled := false;
b_id_kar.Enabled := false;
nm_karyawan.Enabled := false;
nm_pelanggan.Enabled := false;
tgl_sewa.Enabled := false;
tgl_kembali.Enabled := false;
jaminan.Enabled := false;
no_jaminan.Enabled := false;


baru.Enabled := true;
tambah.Enabled := false;
ubah.Enabled := true;
hapus.Enabled := true;
batal.Enabled := false;
cetak.Enabled := true;
keluar.Enabled := true;
dbgrid1.Enabled := true;

tambah.Caption := '&Tambah';
ubah.Caption := '&Ubah';
end;

procedure Tform_sewa.cekinput;
begin
if (id_karyawan.text ='') or
   (id_pelanggan.text ='') or
   (jaminan.text ='') or
   (no_jaminan.text ='')
then
    cek_input := 'ya'
else
    cek_input := 'tdk' ;
end;


procedure Tform_sewa.cekid;
begin
  with dm do
  begin
    if q_sewa.Locate('id_sewa', id_sewa.Text,[]) then
      begin
        application.MessageBox('ID Sudah Digunakan !','Pemberitahuan !',mb_ok or MB_ICONERROR);
        cek_id := 'ya' ;
      end
    else
      cek_id := 'tdk' ;
  end;
end;

procedure Tform_sewa.FormActivate(Sender: TObject);
begin
onaktif_sewa;
end;

procedure Tform_sewa.DBGrid1CellClick(Column: TColumn);
begin
with dm.q_sewa do
begin
  id_sewa.Text := FieldByName('id_sewa').asstring;
  id_pelanggan.Text := dm.t_sewa.FieldByName('id_pelanggan').asstring;
  id_karyawan.Text := dm.t_sewa.FieldByName('id_karyawan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  tgl_sewa.Date := FieldByName('tgl_sewa').AsDateTime;
  tgl_kembali.DateTime := FieldByName('tgl_hrs_kmb').AsDateTime;
  jaminan.Text := FieldByName('jaminan').AsString;
  no_jaminan.Text := FieldByName('no_jaminan').AsString;
  total_sewa.Text := FIeldByName('total_sewa').AsString;
  biaya.Caption := FieldByName('biaya').AsString;
end;
end;

procedure Tform_sewa.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.q_sewa do
begin
  id_sewa.Text := FieldByName('id_sewa').asstring;
  id_pelanggan.Text := dm.t_sewa.FieldByName('id_pelanggan').asstring;
  id_karyawan.Text := dm.t_sewa.FieldByName('id_karyawan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  tgl_sewa.Date := FieldByName('tgl_sewa').AsDateTime;
  tgl_kembali.DateTime := FieldByName('tgl_hrs_kmb').AsDateTime;
  jaminan.Text := FieldByName('jaminan').AsString;
  no_jaminan.Text := FieldByName('no_jaminan').AsString;
  total_sewa.Text := FIeldByName('total_sewa').AsString;
  biaya.Caption := FieldByName('biaya').asstring;
end;
end;

procedure Tform_sewa.jaminanKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
//    jaminan.DroppedDown := false;
    no_jaminan.SetFocus;
  end
else
  key := #0;
end;

procedure Tform_sewa.baruClick(Sender: TObject);
var a : string; b : integer;
begin
total_sewa.Text := '0';
biaya.Caption := '0';

id_pelanggan.Text := '';
id_karyawan.Text := '';
nm_karyawan.Text := '';
nm_pelanggan.Text := '';
tgl_sewa.Date := Now;
tgl_kembali.Date := tgl_sewa.Date + 7;
jaminan.Text := '';
no_jaminan.Text := '';


id_pelanggan.Enabled := true;
id_karyawan.Enabled := true;
tgl_sewa.Enabled := false;
tgl_kembali.Enabled := false;
jaminan.Enabled := true;
no_jaminan.Enabled := true;
b_id_pel.enabled := true;
b_id_kar.Enabled := true;

baru.Enabled := false;
tambah.Enabled := true;
ubah.Enabled := false;
hapus.Enabled := false;
batal.Enabled := true;
cetak.Enabled := false;
keluar.Enabled := false;
dbgrid1.Enabled := false;
dbgrid1.Refresh;

if dm.q_sewa.Recordset.RecordCount > 0 then
      begin
        dm.q_sewa.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'SW'+format('%.4d',[b]);
            if (dm.q_sewa.Locate('id_sewa',a,[]) = false) then
              begin
                 id_sewa.Text := a;
                 b_id_kar.SetFocus;
                 Exit;
              end
            else
              begin
              dm.q_sewa.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.q_sewa.Recordset.RecordCount + 1);
      end
else
id_sewa.Text := 'SW'+format('%.4d',[1]);
b_id_kar.SetFocus;
end;

procedure Tform_sewa.tgl_sewaChange(Sender: TObject);
begin
tgl_kembali.Date := tgl_sewa.Date + 7;
end;

procedure Tform_sewa.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Tform_sewa.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'ID_Sewa' ;
    pencarian.MaxLength := 6;
  end
else
  begin
    pilih := 'nm_pelanggan' ;
    pencarian.MaxLength := 30;
  end;

with dm.q_sewa do
begin
if pencarian.Text = '' then
begin
  active := false;
  sql.Text := 'Select * From q_sewa Order By id_sewa';
  active := true;
  DBGrid1.Refresh;
end
else
begin
  Active:=False;
  sql.Text :='Select * From q_sewa Where ' + pilih + ' Like '+
  QuotedStr('%'+judul+'%');
  Active:=True;
  DBGrid1.Refresh;
end;

end;
end;

procedure Tform_sewa.nm_karyawanKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ 'A'..'Z', 'a'..'z', #8, #13, #32, #46, #44, #39]) then
    key := #0;
end;

procedure Tform_sewa.nm_pelangganKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ 'A'..'Z', 'a'..'z', #8, #13, #32, #46, #44, #39]) then
    key := #0;
end;

procedure Tform_sewa.jml_sewaKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;
end;

procedure Tform_sewa.b_id_karClick(Sender: TObject);
begin
s_karyawan.ShowModal;
end;

procedure Tform_sewa.b_id_pelClick(Sender: TObject);
begin
s_pelanggan.ShowModal;
end;

procedure Tform_sewa.b_id_filmClick(Sender: TObject);
begin
form_detail.ShowModal;
end;

procedure Tform_sewa.tambahClick(Sender: TObject);
begin
with dm do
begin

if tambah.Caption = '&Tambah' then
  begin
     cekid; cekinput;
    if (cek_input = 'ya')  then
      exit
    else
      begin
        t_sewa.Append;
        t_sewa['id_sewa'] := id_sewa.Text;
        t_sewa['id_karyawan'] := id_karyawan.Text;
        t_sewa['id_pelanggan'] := id_pelanggan.Text;
        t_sewa['jaminan'] := jaminan.Text;
        t_sewa['no_jaminan'] := no_jaminan.Text;
        t_sewa['tgl_sewa'] := tgl_sewa.Date;
        t_sewa['tgl_hrs_kmb'] := tgl_kembali.Date;
        t_sewa['biaya'] := biaya.Caption;
        t_Sewa['total_Sewa'] := total_sewa.Text ;
        t_sewa.Post;
        tambah.Caption := '&Simpan';
        q_sewa.Active := false;
        q_sewa.Active := true;

        form_detail.ShowModal;
      end
  end
else
begin
  cekinput;
  if (cek_input = 'ya') then
   exit
  else
  begin
    q_sewa.Locate('id_sewa', id_sewa.Text,[]);
    t_sewa.edit;
    t_sewa['total_Sewa'] := total_sewa.Text ;
    t_sewa['biaya'] := biaya.Caption;
    t_sewa['status_sewa'] := '1';
    t_sewa.Post;
    onaktif_sewa;
  end;
  end;
end;

end;

procedure Tform_sewa.ubahClick(Sender: TObject);
begin
with dm do
begin
if ubah.Caption = '&Ubah' then
  begin
    id_sewa.Enabled := false;
    b_id_kar.Enabled := true;
    b_id_pel.Enabled := true;
    tgl_sewa.Enabled := true;
    jaminan.Enabled := true;
    no_jaminan.Enabled := true;

    baru.Enabled := false;
    tambah.Enabled := false;
    hapus.Enabled := false;
    batal.Enabled := true;
    keluar.Enabled := false;
    cetak.Enabled := false;
    ubah.Caption := '&Simpan';
    form_detail.ShowModal;
  end
else
  begin
    cekinput;
    if cek_input = 'ya'  then
        exit
    else
        t_sewa.Edit;
        t_sewa['id_sewa'] := id_sewa.Text;
        t_sewa['id_karyawan'] := id_karyawan.Text;
        t_sewa['id_pelanggan'] := id_pelanggan.Text;
        t_sewa['jaminan'] := jaminan.Text;
        t_sewa['no_jaminan'] := no_jaminan.Text;
        t_sewa['tgl_sewa'] := tgl_sewa.Date;
        t_sewa['tgl_hrs_kmb'] := tgl_kembali.Date;
        t_sewa['biaya'] := biaya.Caption;   //edit
        t_sewa['total_sewa'] := total_sewa.Text;
        t_sewa.Post;
        onaktif_sewa;
  end;
end;
end;



procedure Tform_sewa.hapusClick(Sender: TObject);
var kurang : integer;
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
begin
    dm.t_sewa.Delete;
end;

onaktif_sewa;
end;

procedure Tform_sewa.batalClick(Sender: TObject);
begin
if tambah.Caption = '&Simpan' then
  begin
    dm.q_sewa.Locate('id_sewa', id_sewa.Text,[]);
    dm.t_sewa.Delete;
  end;

onaktif_sewa;
end;

procedure Tform_sewa.keluarClick(Sender: TObject);
begin
close;
end;




procedure Tform_sewa.Button1Click(Sender: TObject);
begin
jaminan.DroppedDown := true;
end;

procedure Tform_sewa.no_jaminanKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) AND (no_jaminan.Text <> '') then
  if  ubah.Caption = '&Ubah' then
    tambah.Click
  else
    ubah.Click;
end;

procedure Tform_sewa.cetakClick(Sender: TObject);
begin
with dm, dm.q_detail do
  begin
    Active := false;
    dm.q_detail.SQL.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(form_sewa.id_sewa.Text);
    Active := true;
    R_struk_sewa.LoadFromFile('laporan/l_struk_sewa.Fr3');
    R_struk_sewa.showreport();
  end;
end;

procedure Tform_sewa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (tambah.Caption = '&Simpan') OR (ubah.Caption = '&Simpan') then
  begin
    application.MessageBox('Silahkan Pilih Tombol Terlebih Dahulu','Pemberitahuan !',mb_ok or MB_ICONINFORMATION);
    canclose := false;
  end;
end;


procedure Tform_sewa.no_jaminanChange(Sender: TObject);
begin
if no_jaminan.Text = '0' then
begin
application.MessageBox('Nilai Tidak Valid !','Pemberitahuan !',mb_ok or MB_ICONWARNING);
no_jaminan.Text := '';
end;
end;

end.
