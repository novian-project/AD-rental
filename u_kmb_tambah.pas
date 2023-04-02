unit u_kmb_tambah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm_pilih_film = class(TForm)
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    id_barang: TEdit;
    procedure onaktif_kmb_tmbh;
    procedure hitungdenda;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure keluarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_pilih_film: TForm_pilih_film;

implementation

uses u_dm, u_kembali, u_kembali_film;

{$R *.dfm}

procedure TForm_pilih_film.onaktif_kmb_tmbh;
begin
with dm.q_kmb_tmbh do
begin
Active := false;
SQL.Text := 'Select * from q_detail where id_sewa = ' + QuotedStr(form_kembali.id_sewa.Text) + 'AND status_kembali ='+QuotedStr('1') ;
Active := true;
dm.ADO_kmb_tmbh.Active := false;
dm.ADO_kmb_tmbh.Active := true;
end;
end;

procedure TForm_pilih_film.FormActivate(Sender: TObject);
begin
onaktif_kmb_tmbh;
end;

procedure TForm_pilih_film.DBGrid1CellClick(Column: TColumn);
begin
with dm.q_kmb_tmbh, form_kembali_film do
begin
id_film.Text :=  dm.ADO_kmb_tmbh.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;
id_barang.Text := FieldByName('no').AsString;
end;
end;

procedure TForm_pilih_film.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.q_kmb_tmbh, form_kembali_film do
begin
id_film.Text :=  dm.ADO_kmb_tmbh.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;
id_barang.Text := FieldByName('no').AsString;
end;
end;

procedure TForm_pilih_film.keluarClick(Sender: TObject);
begin
close;
end;

procedure TForm_pilih_film.DBGrid1DblClick(Sender: TObject);
begin
with dm.q_kmb_tmbh, form_kembali_film do
begin
id_film.Text :=  dm.ADO_kmb_tmbh.FieldByName('id_film').AsString;
kategori.Text := fieldbyName('kategori').AsString;
jdl_film.Text := fieldbyName('judul_film').AsString;
jml_sewa.Text := fieldByName('jml_sewa').AsString;
biaya.Text := fieldbYname('biaya').AsString;
id_barang.Text := FieldByName('no').AsString;
kembalian.Enabled := true;
kembalian.SetFocus;
ubah.Enabled := true;
hitungdenda;
Form_pilih_film.Close;
end;
end;

procedure TForm_pilih_film.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with dm.q_kmb_tmbh, form_kembali_film do
begin
if key = #13 then
  begin
    id_film.Text :=  dm.ADO_kmb_tmbh.FieldByName('id_film').AsString;
    kategori.Text := fieldbyName('kategori').AsString;
    jdl_film.Text := fieldbyName('judul_film').AsString;
    jml_sewa.Text := fieldByName('jml_sewa').AsString;
    biaya.Text := fieldbYname('biaya').AsString;
    id_barang.Text := FieldByName('no').AsString;
    kembalian.Enabled := true;
    kembalian.SetFocus;
    ubah.Enabled := true;
    hitungdenda;
    Form_pilih_film.Close;
  end;
end;
end;

procedure TForm_pilih_film.hitungdenda;
var
terlambat,dendanya : integer;
begin
with dm.q_sewa, form_kembali_film do
begin
  if FieldByName('tgl_hrs_kmb').AsDateTime >= tgl_kembali.Date then
    keterlambatan.Text := '0'
 else
  begin
    terlambat := trunc(tgl_kembali.Date) - trunc(tgl_hrs_kmb.Date);
    keterlambatan.Text := inttostr(terlambat);
  end;
  dendanya := strtoint(keterlambatan.Text) * 1000;
  denda.Text := IntToStr(dendanya);
end;
end;

procedure TForm_pilih_film.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
hitungdenda;
end;

end.
