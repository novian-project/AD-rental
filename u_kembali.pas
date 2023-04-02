unit u_kembali;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, frxpngimage, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  Tform_kembali = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    id_kembali: TEdit;
    id_sewa: TEdit;
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
    Label6: TLabel;
    Label8: TLabel;
    nm_pelanggan: TEdit;
    b_id_kar: TButton;
    b_id_sewa: TButton;
    tgl_kembali: TDateTimePicker;
    keterlambatan: TEdit;
    Label10: TLabel;
    Image3: TImage;
    label_karyawan: TLabel;
    nm_karyawan: TEdit;
    Label9: TLabel;
    tgl_hrs_kmb: TDateTimePicker;
    Label14: TLabel;
    denda: TLabel;
    Label15: TLabel;
    history: TEdit;
    cetak: TButton;
    Label4: TLabel;
    jml_kmb: TEdit;
    procedure nm_pelangganKeyPress(Sender: TObject; var Key: Char);
    procedure onaktif_kmb;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure baruClick(Sender: TObject);
    procedure cekinput;
    procedure cekid;
    procedure tambahClick(Sender: TObject);
    procedure b_id_sewaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure keluarClick(Sender: TObject);
    procedure b_id_karClick(Sender: TObject);
    procedure pencarianChange(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure cetakClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_kembali: Tform_kembali;
  cek_input, cek_id : string[3];

implementation

uses u_dm, u_s_sewa, u_s_kar2;

{$R *.dfm}

procedure Tform_kembali.onaktif_kmb;
begin
with dm.q_kembali do
begin
  Active := false;
  Active := True;
  First;
  id_kembali.Text := FieldByName('id_kembali').asstring;
  id_sewa.Text := dm.kembali.FieldByName('id_sewa').asstring;
  id_karyawan.Text := dm.kembali.FieldByName('id_karyawan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  tgl_hrs_kmb.DateTime := FieldByName('tgl_hrs_kmb').AsDateTime;
  tgl_kembali.DateTime := FieldByName('tgl_kmb').AsDateTime;
  keterlambatan.Text := FieldByName('terlambat').AsString;
  denda.Caption := FieldByName('denda').AsString;
  jml_kmb.Text := FieldByName('jml_kmb').AsString;
end;

id_kembali.Enabled := false;
//id_sewa.Enabled := false;
//id_karyawan.Enabled := false;
b_id_sewa.Enabled := false;
b_id_kar.Enabled := false;
nm_pelanggan.Enabled := false;
nm_karyawan.Enabled := false;
tgl_hrs_kmb.Enabled := false;
tgl_kembali.Enabled := false;
keterlambatan.Enabled := false;

baru.Enabled := true;
tambah.Enabled := false;
ubah.Enabled := true;
hapus.Enabled := true;
batal.Enabled := false;
cetak.enabled := true;
keluar.Enabled := true;
dbgrid1.Enabled := true;
baru.SetFocus;
ubah.Caption := '&Ubah';
end;


procedure Tform_kembali.nm_pelangganKeyPress(Sender: TObject;
  var Key: Char);
begin
if not ( key in[ 'A'..'Z', 'a'..'z', #8, #13, #32, #46, #44, #39]) then
    key := #0;
end;


procedure Tform_kembali.FormActivate(Sender: TObject);
begin
onaktif_kmb;
end;

procedure Tform_kembali.DBGrid1CellClick(Column: TColumn);
begin
with dm.q_kembali do
begin
  id_kembali.Text := FieldByName('id_kembali').asstring;
  id_sewa.Text := dm.kembali.FieldByName('id_sewa').asstring;
  id_karyawan.Text := dm.kembali.FieldByName('id_karyawan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  tgl_hrs_kmb.DateTime := FieldByName('tgl_hrs_kmb').AsDateTime;
  tgl_kembali.DateTime := FieldByName('tgl_kmb').AsDateTime;
  keterlambatan.Text := FieldByName('terlambat').AsString;
  denda.Caption := FieldByName('denda').AsString;
  jml_kmb.Text := FieldByName('jml_kmb').AsString
end;
end;

procedure Tform_kembali.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.q_kembali do
begin
  id_kembali.Text := FieldByName('id_kembali').asstring;
  id_sewa.Text := dm.kembali.FieldByName('id_sewa').asstring;
  id_karyawan.Text := dm.kembali.FieldByName('id_karyawan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  nm_karyawan.Text := FieldByName('nm_karyawan').asstring;
  tgl_hrs_kmb.DateTime := FieldByName('tgl_hrs_kmb').AsDateTime;
  tgl_kembali.DateTime := FieldByName('tgl_kmb').AsDateTime;
  keterlambatan.Text := FieldByName('terlambat').AsString;
  denda.Caption := FieldByName('denda').AsString;
  jml_kmb.Text := FieldByName('jml_kmb').AsString
end;
end;

procedure Tform_kembali.cekinput;
begin
if (id_sewa.Text = '') or
   (id_karyawan.Text = '') or
   (keterlambatan.Text = '')
then
    begin
      cek_input := 'ya' ;
    end
else
  cek_input := 'tdk' ;
end;

procedure Tform_kembali.cekid;
begin
  with dm do
  begin
    if q_kembali.Locate('id_kembali', id_kembali.Text,[]) then
      begin
        application.MessageBox('ID Sudah Digunakan !','Pemberitahuan !',mb_ok or MB_ICONERROR);
        cek_id := 'ya' ;
      end
    else
      cek_id := 'tdk' ;
  end;
end;

procedure Tform_kembali.baruClick(Sender: TObject);
var a : string; b : integer;
begin
id_sewa.Text := '';
id_karyawan.Text := '';
nm_pelanggan.Text := '';
tgl_hrs_kmb.Date := Now;
tgl_kembali.Date := Now;
keterlambatan.Text := '';
denda.Caption := '0';
jml_kmb.Text := '0';

tgl_hrs_kmb.Enabled := false;
tgl_kembali.Enabled := false;
keterlambatan.Enabled := false;
b_id_sewa.Enabled := true;
b_id_kar.enabled := true;

tambah.Enabled := true;
ubah.Enabled := false;
hapus.Enabled := false;
batal.Enabled := true;
cetak.enabled := false;
keluar.Enabled := false;
baru.Enabled := false;
dbgrid1.Enabled := false;
dbgrid1.Refresh;

if dm.q_kembali.Recordset.RecordCount > 0 then
      begin
        dm.q_kembali.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'KMB'+format('%.4d',[b]);
            if (dm.q_kembali.Locate('id_kembali',a,[]) = false) then
              begin
                 id_kembali.Text := a;
                 b_id_kar.SetFocus;
                 Exit;
              end
            else
              begin
              dm.q_kembali.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.q_kembali.Recordset.RecordCount + 1);
      end
else
id_kembali.Text := 'KMB'+format('%.4d',[1]);
b_id_kar.SetFocus;
end;


procedure Tform_kembali.tambahClick(Sender: TObject);
begin
with dm do
begin
cekid;
cekinput;
if (cek_id = 'ya') or (cek_input = 'ya') then
    exit
else
  begin
  kembali.Append;
  kembali['id_kembali'] := id_kembali.Text;
  kembali['id_sewa'] := id_sewa.Text;
  kembali['id_karyawan'] := id_karyawan.Text;
  kembali['tgl_kmb'] := tgl_kembali.Date;
  kembali['terlambat'] := keterlambatan.Text;
  kembali['denda'] := denda.Caption;
  kembali['jml_kmb'] := jml_kmb.Text;
  kembali.Post;

  dm.q_kmb_tmbh.Active := false;
  dm.q_kmb_tmbh.sql.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(id_sewa.Text) + 'AND status_kembali ='+QuotedStr('1') ;
  dm.q_kmb_tmbh.Active := true;
  if dm.q_kmb_tmbh.IsEmpty then
  begin
  t_sewa.Locate('id_sewa', id_sewa.Text,[]);
  t_sewa.Edit;
  t_sewa['status_sewa'] := '0';
  t_sewa.Post;
  end;


  onaktif_kmb;
  q_sewa.Active := false;
  q_sewa.Active := true;
  end;
end;
end;

procedure Tform_kembali.b_id_sewaClick(Sender: TObject);
begin
dm.q_sewa.Active := false;
dm.q_sewa.Active := true;
dm.q_sewa_kmb.Active := false;
dm.q_sewa_kmb.Active := true;

if dm.q_sewa_kmb.IsEmpty then
  begin
    application.MessageBox('Kaset Sudah Dikembalikan','Pemberitahuan !',mb_ok or MB_ICONWARNING);
    exit;
  end;

if ubah.Caption = '&Ubah' then
  begin
    dm.q_sewa.Active := false;
    dm.q_sewa.SQL.Text := 'Select * From q_sewa where status_sewa > 0';
    dm.q_sewa.Active := true;
    s_sewa.ShowModal;
  end
else
  begin
    if dm.t_sewa.Locate('id_sewa', id_sewa.Text,[]) then
      begin
        dm.t_sewa.Edit;
        dm.t_sewa['status_sewa'] := '1' ;
        dm.t_sewa.Post;
        history.Text := id_sewa.Text;
        dm.q_sewa.Active := false;
        dm.q_sewa.SQL.Text := 'Select * From q_sewa where status_sewa > 0 AND id_sewa ='+QuotedStr(id_sewa.Text) ;
        dm.q_sewa.Active := true;
        s_sewa.ShowModal;
      end;
  end;
end;

procedure Tform_kembali.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.q_sewa.Active := false;
dm.q_sewa.SQL.Text := 'Select * From q_sewa ORDER By Id_sewa';
dm.q_sewa.Active := true;


if ubah.Caption = 'Simpan' then
  if dm.q_sewa.Locate('id_sewa', history.Text,[]) then
    begin
      ShowMessage('kurangi');
      dm.t_sewa.Edit;
      dm.t_sewa['status_sewa'] := '0' ;
      dm.t_sewa.Post;
      history.Text := '';
    end;

end;

procedure Tform_kembali.keluarClick(Sender: TObject);
begin
close;
end;

procedure Tform_kembali.b_id_karClick(Sender: TObject);
begin
s_kar2.ShowModal;
end;


procedure Tform_kembali.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'id_kembali' ;
    pencarian.MaxLength := 7;
  end
else
  begin
    pilih := 'nm_pelanggan' ;
    pencarian.MaxLength := 30;
  end;

with dm.q_kembali do
begin
if pencarian.Text = '' then
begin
  active := false;
  sql.Text := 'Select * From q_kembali Order By id_kembali';
  active := true;
  DBGrid1.Refresh;
end
else
begin
  Active:=False;
  sql.Text :='Select * From q_kembali Where ' + pilih + ' Like '+
  QuotedStr('%'+judul+'%');
  Active:=True;
  DBGrid1.Refresh;
end;

end;
end;

procedure Tform_kembali.ubahClick(Sender: TObject);
begin
with dm do
begin
if ubah.Caption = '&Ubah' then
  begin
    id_kembali.Enabled := false;
    b_id_sewa.Enabled := true;
    b_id_kar.Enabled := true;

    baru.Enabled := false;
    tambah.Enabled := false;
    hapus.Enabled := false;
    batal.Enabled := true;
    cetak.enabled := false;
    keluar.Enabled := false;
    ubah.Caption := '&Simpan';
  end
else
  begin
    cekinput;
    if cek_input = 'ya' then
        exit
    else
        kembali.Edit;
        kembali['id_kembali'] := id_kembali.Text;
        kembali['id_sewa'] := id_sewa.Text;
        kembali['id_karyawan'] := id_karyawan.Text;
        kembali['tgl_kmb'] := tgl_kembali.Date;
        kembali['terlambat'] := keterlambatan.Text;
        kembali['denda'] := denda.Caption;
        kembali['jml_kmb'] := jml_kmb.Text;
        kembali.Post;

        q_sewa.Locate('id_sewa', id_Sewa.Text,[]);
        t_sewa.Edit;
        t_sewa['status_sewa'] := '1';
        t_sewa.Post;
        onaktif_kmb;
  end;
end;
end;

procedure Tform_kembali.hapusClick(Sender: TObject);
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
dm.kembali.Delete;
onaktif_kmb;
end;

procedure Tform_kembali.batalClick(Sender: TObject);
begin
dm.q_sewa.Active := false;
dm.q_sewa.Active := true;

if ubah.Caption = '&Simpan' then
if dm.q_sewa.Locate('id_sewa', history.Text,[]) then
    begin
      dm.t_sewa.Edit;
      dm.t_sewa['status_sewa'] := '0' ;
      dm.t_sewa.Post;
      history.Text := '';
    end;

onaktif_kmb;
ubah.Caption := '&Ubah';
dm.q_sewa.Active := false;
dm.q_sewa.Active := true;
end;

procedure Tform_kembali.cetakClick(Sender: TObject);
begin
with dm do
begin
   dm.q_detail.Active := false;
   dm.q_detail.SQL.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(form_kembali.id_sewa.Text) +
                        ' AND status_kembali =' + QuotedStr('0')+
                        ' AND id_kembali ='+ QuotedStr(form_kembali.id_kembali.Text);
   q_detail.Active := true;
   R_struk_kembali.LoadFromFile('laporan/l_Struk_kembali.Fr3');
   R_struk_kembali.showreport();
end;
end;

procedure Tform_kembali.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if ubah.Enabled = false then
  begin
    application.MessageBox('Silahkan Pilih Tombol Terlebih Dahulu','Pemberitahuan !',mb_ok or MB_ICONINFORMATION);
    canclose := false;
  end;
end;
end.
