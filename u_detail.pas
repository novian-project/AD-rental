unit u_detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, frxpngimage,
  Mask, DBCtrls;

type
  Tform_detail = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    r_grup: TRadioGroup;
    pencarian: TEdit;
    Panel1: TPanel;
    baru: TButton;
    tambah: TButton;
    hapus: TButton;
    batal: TButton;
    keluar: TButton;
    Label2: TLabel;
    id_film: TEdit;
    Label9: TLabel;
    kategori: TEdit;
    Label8: TLabel;
    jdl_film: TEdit;
    Label13: TLabel;
    jml_sewa: TEdit;
    Label1: TLabel;
    biaya: TEdit;
    b_id_film: TButton;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    Label3: TLabel;
    id_barang: TEdit;
    Label4: TLabel;
    tot_plg: TEdit;
    Label5: TLabel;
    tot1: TEdit;
    Label6: TLabel;
    total_film: TEdit;
    procedure b_id_filmClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
    procedure baruClick(Sender: TObject);
    procedure onaktif_detail;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure batalClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hapusClick(Sender: TObject);
    procedure jml_sewaChange(Sender: TObject);
    procedure totval;
    procedure cekinput;
    procedure ceksewa;
    procedure totdetail;
    procedure cekstok;

    procedure jml_sewaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pencarianChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_detail: Tform_detail;
  cek_input : string[3];

implementation

uses u_s_film, u_dm, DB, u_sewa, ADODB;

{$R *.dfm}

procedure Tform_detail.b_id_filmClick(Sender: TObject);
begin
s_film.ShowModal;
end;

procedure Tform_detail.onaktif_detail;
begin
with dm.q_detail do
begin
dm.ADO_detail.Active := false;
dm.ADO_detail.Active := true;
Active := false;
dm.q_detail.SQL.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(form_sewa.id_sewa.Text);
Active := true;
dm.detail.Active := false;
dm.detail.Active := true;

First;
id_film.Text :=  dm.detail.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;

id_film.Enabled := false;
kategori.Enabled := false;
jdl_film.Enabled := false;
jml_sewa.Enabled := false;
biaya.Enabled := false;

b_id_film.Enabled := false;
baru.Enabled := true;
tambah.Enabled := false;
hapus.Enabled := true;
batal.Enabled := false;
keluar.Enabled := true;
dbgrid1.Enabled := true;
end;
end;

procedure Tform_detail.totdetail;
var
hsl_sewa, hsl_biaya : integer;
klm_sewa, klm_biaya : string;
begin
    klm_sewa := DBGrid1.Columns[3].FieldName;
    klm_biaya := DBGrid1.Columns[4].FieldName;
    hsl_biaya := 0;
    hsl_sewa := 0;

     DBGrid1.DataSource.DataSet.First;
     while not DBGrid1.DataSource.DataSet.Eof do
      begin
        hsl_sewa := hsl_sewa + DBGrid1.DataSource.DataSet.fieldbyName(klm_sewa).AsInteger;
        hsl_biaya := hsl_biaya + DBGrid1.DataSource.DataSet.fieldbyName(klm_biaya).AsInteger;
        DBGrid1.DataSource.DataSet.next;
      end;
      form_sewa.total_sewa.Text := inttostr(hsl_sewa);
      form_sewa.biaya.Caption := inttostr(hsl_biaya);
end;

procedure Tform_detail.ceksewa;
var jml_mnyewa, sisa_sewa : integer ;
begin
      sisa_sewa := 10 - StrToInt(tot1.Text);
      if strtoint(tot_plg.Text) > 10 then
        begin
          application.MessageBox(pchar('Maaf, Maksimal Sewa 10 Film !'+char(10)+char(10)+IntToStr(sisa_sewa)+' Film Bisa Disewa' ),'Pemberitahuan !',mb_ok or MB_ICONINFORMATION);
          cek_sewa := 'ya' ;
        end
      else
          cek_sewa := 'tdk' ;
end;

procedure Tform_detail.cekstok;
var jml_pinjam, sisa_pinjam : integer ;
begin
with dm.detail do
begin
dm.total_film.Active := false;
dm.total_film.SQL.Text := 'Select sum(jml_sewa) from q_detail where id_film ='+QuotedStr(id_film.Text)+
                          'AND Status_kembali ='+QuotedStr('1');
dm.total_film.Active := true;
total_film.Text := dm.total_film.fieldByName('Expr1000').AsString;

      if total_film.Text = '' then total_film.Text := '0';

      if jml_sewa.Text = '' then
        jml_pinjam := strtoint(total_film.Text)
      else
        jml_pinjam := strtoint(total_film.Text) + StrToInt(jml_sewa.Text);

      sisa_pinjam := dm.film.fieldByName('jumlah_film').AsInteger - strtoint(total_film.Text);
      if jml_pinjam > dm.film.FieldByName('jumlah_film').AsInteger then
        begin
          application.MessageBox(pchar('Maaf, Stok Film Habis ! !'+char(10)+char(10)+IntToStr(sisa_pinjam)+' Film Bisa Disewa' ),'Pemberitahuan !',mb_ok or MB_ICONINFORMATION);
          cek_stok := 'ya' ;
        end
      else
          cek_stok := 'tdk' ;
end;
end;

procedure Tform_detail.tambahClick(Sender: TObject);
begin
with dm.detail do
begin
totval;
cekinput;
ceksewa;
cekstok;
if  (cek_input = 'ya') or (cek_sewa = 'ya') or (cek_stok = 'ya') then
  exit
else
  begin
    if dm.q_detail.Locate('judul_film', jdl_film.Text,[]) then
      begin
       Edit;
        dm.detail['jml_sewa'] := strtoint(jml_sewa.Text) + FieldByname('jml_sewa').AsInteger  ;
        dm.detail['biaya'] := strtoint(biaya.Text) + FieldByName('biaya').AsInteger;
        Post;
      end
    else
      begin
        Append;
        dm.detail['id_film'] := id_film.Text;
        dm.detail['jml_sewa'] := jml_sewa.Text;
        dm.detail['biaya'] := biaya.Text;
        dm.detail['id_sewa'] := form_sewa.id_sewa.Text;
        dm.detail['no'] := id_barang.Text;
        dm.detail['id_pelanggan'] := form_sewa.id_pelanggan.Text;
        dm.detail['status_kembali'] := '1';
        Post;
      end;

    if form_sewa.ubah.Caption = '&Simpan' then  form_sewa.batal.Enabled := false;
    onaktif_detail;
    totdetail;
    onaktif_detail;
  end;

end;
end;

procedure Tform_detail.keluarClick(Sender: TObject);
begin
close;
end;

procedure Tform_detail.baruClick(Sender: TObject);
var a : string; b : integer;
begin
id_film.Text := '';
kategori.Text := '';
jdl_film.Text := '';
jml_sewa.Text := '';
biaya.Text := '';


jml_sewa.Enabled := true;

b_id_film.Enabled := true;
tambah.Enabled := true;
hapus.Enabled := false;
batal.Enabled := true;
baru.Enabled := false;
keluar.Enabled := false;
dbgrid1.Enabled := false;
dbgrid1.Refresh;

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
b_id_film.SetFocus;

end;

procedure Tform_detail.DBGrid1CellClick(Column: TColumn);
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

procedure Tform_detail.FormActivate(Sender: TObject);
begin
onaktif_detail;
end;

procedure Tform_detail.batalClick(Sender: TObject);
begin
onaktif_detail;
end;

procedure Tform_detail.DBGrid1KeyUp(Sender: TObject; var Key: Word;
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

procedure Tform_detail.hapusClick(Sender: TObject);
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
begin
dm.detail.Active := false;
dm.detail.Active := true;
dm.detail.Delete;
end;
if form_sewa.ubah.Caption = '&Simpan' then  form_sewa.batal.Enabled := false;
onaktif_detail;
totdetail;
onaktif_detail;
end;

procedure Tform_detail.jml_sewaChange(Sender: TObject);
var nilai : integer;
begin
if jml_sewa.Text = '0' then
begin
jml_sewa.Text := '';
showmessage('Tidak Boleh Bernilai 0');
end;

  if (jml_sewa.Text = '') or (jml_sewa.Text = 'KOSONG !') then
    biaya.Text := dm.film.fieldByName('harga').AsString
  else
    begin
      nilai := dm.film.fieldByName('harga').AsInteger * StrToInt(jml_sewa.Text);
      biaya.Text := inttostr(nilai)
    end;
end;

procedure Tform_detail.cekinput;
begin
if (id_film.Text ='') or (jml_Sewa.Text ='')
  then
    cek_input := 'ya'
else
    cek_input := 'tdk' ;
end;


procedure Tform_detail.jml_sewaKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;

if key = #13 then tambah.Click;
end;

procedure Tform_detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if form_Sewa.tambah.Caption = '&Simpan' then
form_sewa.tambah.SetFocus
else
form_sewa.ubah.SetFocus;

IF dm.detail.IsEmpty then form_sewa.tambah.Enabled := false;;
end;




procedure Tform_detail.pencarianChange(Sender: TObject);
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

with dm.q_detail do
begin
if pencarian.Text = '' then
begin
  active := false;
  SQL.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(form_sewa.id_sewa.Text);
  active := true;
  DBGrid1.Refresh;
end
else
begin
  Active:=False;
  sql.Text := 'Select * from q_detail where id_sewa = ' +
  QuotedStr(form_sewa.id_sewa.Text) +
  ' AND ' + pilih + ' Like '+
  QuotedStr('%'+judul+'%');
  Active:=True;
  DBGrid1.Refresh;
end;

end;
end;

procedure Tform_detail.totval;
var total, total1 : integer;
begin
with dm.total_plg do
begin
Active := false;
SQL.Text := 'Select * from q_detail where id_pelanggan = ' + QuotedStr(form_sewa.id_pelanggan.Text)+
             'AND status_kembali ='+QuotedStr('1') ;
Active := true;

  total1 := 0;
  First;
  while not Eof do
    begin
      total1 := total1  + dm.total_plg['jml_sewa'] ;
      Next;
    end;

    if jml_sewa.Text = '' then
    total := total1 + 0
    else
    begin
      total := total1 + StrToInt(jml_sewa.Text);
    end;

    tot_plg.Text := IntToStr(total);
    tot1.Text := inttostr(total1);
end;
end;

end.
