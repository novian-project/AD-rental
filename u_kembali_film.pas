unit u_kembali_film;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls;

type
  Tform_kembali_film = class(TForm)
    Label2: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    r_grup: TRadioGroup;
    pencarian: TEdit;
    Panel1: TPanel;
    kembalian: TButton;
    keluar: TButton;
    id_film: TEdit;
    kategori: TEdit;
    jdl_film: TEdit;
    jml_sewa: TEdit;
    biaya: TEdit;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    denda: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    keterlambatan: TEdit;
    b_id_film: TButton;
    Label6: TLabel;
    Label5: TLabel;
    id_pelanggan: TEdit;
    total_sewa: TEdit;
    tgl_hrs_kmb: TDateTimePicker;
    tgl_kembali: TDateTimePicker;
    ubah: TButton;
    id_barang: TEdit;
    Label10: TLabel;
    batal: TButton;
    procedure onaktif_kfilm;
    procedure totdenda;
    procedure baru;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure keluarClick(Sender: TObject);
    procedure kembalianClick(Sender: TObject);
    procedure b_id_filmClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure jml_sewaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_kembali_film: Tform_kembali_film;

implementation

uses u_kembali, u_dm, u_kmb_tambah, u_sewa, DB;

{$R *.dfm}

procedure Tform_kembali_film.onaktif_kfilm;
begin
with dm.q_detail do
begin
dm.ADO_detail.Active := false;
dm.ADO_detail.Active := true;
Active := false;
dm.q_detail.SQL.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(form_kembali.id_sewa.Text) +
                        ' AND status_kembali =' + QuotedStr('0')+
                        ' AND id_kembali ='+ QuotedStr(form_kembali.id_kembali.Text);
Active := true;
dm.detail.Active := false;
dm.detail.Active := true;

First;
id_film.Text :=  dm.detail.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;
keterlambatan.Text := FieldbyName('terlambat').AsString;
denda.Text := fieldbyName('denda').AsString;
if form_kembali.ubah.Caption = '&Simpan' then
  begin
    dm.q_kembali.Locate('id_kembali', form_kembali.id_kembali.Text,[]);
    dm.q_kembali.FieldByName('tgl_kmb').AsDateTime;
  end
else
  begin
    tgl_kembali.Date := Now;
  end;

id_film.Enabled := false;
kategori.Enabled := false;
jdl_film.Enabled := false;
jml_sewa.Enabled := false;
biaya.Enabled := false;
kembalian.Enabled := false;
ubah.Enabled := false;
batal.Enabled := true;
b_id_film.SetFocus;
end;
end;

procedure Tform_kembali_film.FormActivate(Sender: TObject);
begin
onaktif_kfilm
end;

procedure Tform_kembali_film.DBGrid1CellClick(Column: TColumn);
begin
with dm.q_detail do
begin
id_film.Text :=  dm.detail.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;
end;
end;

procedure Tform_kembali_film.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.q_detail do
begin
id_film.Text :=  dm.detail.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;
end;
end;

procedure Tform_kembali_film.keluarClick(Sender: TObject);
begin
close;
end;

procedure Tform_kembali_film.kembalianClick(Sender: TObject);
var kurang,perdenda : integer;
begin
dm.q_kmb_tmbh.Locate('no', id_barang.Text,[]);
if dm.q_kmb_tmbh.FieldByName('jml_sewa').AsString <> jml_sewa.Text then
  begin
    if jml_sewa.Text = '' then
    begin
      application.MessageBox('Jumlah Kembali Masih Kosong !','Pemberitahuan !',mb_ok or MB_ICONWARNING);
      exit;
    end;

    kurang := dm.q_kmb_tmbh.fieldByName('jml_sewa').AsInteger - StrToInt(jml_sewa.Text);
    perdenda := strtoint(denda.Text) * strtoint(jml_sewa.Text);
    baru;
  //simpan proses
        dm.detail.Append;
        dm.detail['id_film'] := id_film.Text;
        dm.detail['jml_sewa'] := kurang;
        dm.detail['biaya'] := biaya.Text;
        dm.detail['id_sewa'] := dm.q_kmb_tmbh.fieldByName('id_sewa').AsString;
        dm.detail['no'] := id_barang.Text;
        dm.detail['id_pelanggan'] := id_pelanggan.Text;
        dm.detail['status_kembali'] := '1';
        dm.detail.Post;
  //isi kembalikan
        dm.ADO_kmb_tmbh.Edit;
        dm.ADO_kmb_tmbh['status_kembali'] := '0';
        dm.ADO_kmb_tmbh['terlambat'] := keterlambatan.Text;
        dm.ADO_kmb_tmbh['denda'] := perdenda;
        dm.ADO_kmb_tmbh['id_kembali'] := form_kembali.id_kembali.Text;
        dm.ADO_kmb_tmbh['jml_sewa'] := jml_Sewa.Text;
        dm.ADO_kmb_tmbh.Post;

        form_kembali.batal.Enabled := false;
        form_kembali.keterlambatan.Text := keterlambatan.text ;
        onaktif_kfilm;
        totdenda;
        onaktif_kfilm;
  end
else
  //menjadikan status kembali
    dm.ADO_kmb_tmbh.Edit;
    dm.ADO_kmb_tmbh['status_kembali'] := '0';
    dm.ADO_kmb_tmbh['terlambat'] := keterlambatan.Text;
    dm.ADO_kmb_tmbh['denda'] := denda.Text;
    dm.ADO_kmb_tmbh['id_kembali'] := form_kembali.id_kembali.Text;
    dm.ADO_kmb_tmbh.Post;

    form_kembali.batal.Enabled := false;
    form_kembali.keterlambatan.Text := keterlambatan.text ;
    onaktif_kfilm;
    totdenda;
    onaktif_kfilm;
end;

procedure Tform_kembali_film.b_id_filmClick(Sender: TObject);
begin
Form_pilih_film.ShowModal;
end;

procedure Tform_kembali_film.totdenda;
var
 hsl_denda, hsl_kmb : integer;
 klm_denda, klm_kmb : string;
begin
    klm_kmb   := DBGrid1.Columns[3].FieldName;
    klm_denda := DBGrid1.Columns[6].FieldName;
    hsl_kmb   := 0;
    hsl_denda := 0;


     DBGrid1.DataSource.DataSet.First;
     while not DBGrid1.DataSource.DataSet.Eof do
      begin
        hsl_kmb := hsl_kmb + DBGrid1.DataSource.DataSet.fieldbyName(klm_kmb).AsInteger;
        hsl_denda := hsl_denda + DBGrid1.DataSource.DataSet.fieldbyName(klm_denda).AsInteger;
        DBGrid1.DataSource.DataSet.next;
      end;
      form_kembali.jml_kmb.Text := inttostr(hsl_kmb);
      form_kembali.denda.Caption := inttostr(hsl_denda);
end;


procedure Tform_kembali_film.ubahClick(Sender: TObject);
begin
jml_sewa.Enabled := true;
end;

procedure Tform_kembali_film.baru;
var a : string; b : integer;
begin
if dm.ADO_detail.Recordset.RecordCount > 0 then
      begin
        dm.ADO_detail.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'B'+format('%.4d',[b]);
            if (dm.ADO_detail.Locate('no',a,[]) = false) then
              begin
                 id_barang.Text := a;
                 b_id_film.SetFocus;
                 Exit;
              end
            else
              begin
              dm.ADO_detail.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.ADO_detail.Recordset.RecordCount + 1);
      end
else
id_barang.Text := 'B'+format('%.4d',[1]);
end;

procedure Tform_kembali_film.batalClick(Sender: TObject);
begin
with dm.detail do
begin
//Locate('id_film', id_film.Text,[]);
Edit;
dm.detail['status_kembali'] := '1';
Post;
form_kembali.jml_kmb.Text := jml_sewa.Text;
form_kembali.batal.Enabled := false;
onaktif_kfilm;
totdenda;
onaktif_kfilm;
end;
end;




procedure Tform_kembali_film.jml_sewaChange(Sender: TObject);
begin
if  (jml_sewa.Text > dm.q_kmb_tmbh.FieldByName('jml_sewa').AsString) AND (jml_sewa.Enabled = true)  then
begin
application.MessageBox('Jumlah Kembali Melebihi Sebelumnya !','Pemberitahuan !',mb_ok or MB_IconWarning);
jml_sewa.Text := dm.q_kmb_tmbh.FieldByName('jml_sewa').AsString;
end;

if  (jml_sewa.Text = '0') AND (jml_sewa.Enabled = true)  then
begin
application.MessageBox('Jumlah Kembali Tidak Boleh 0 !','Pemberitahuan !',mb_ok or MB_IconWarning);
jml_sewa.Text := dm.q_kmb_tmbh.FieldByName('jml_sewa').AsString;
end;
end;

end.
