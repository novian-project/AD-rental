unit u_pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, frxpngimage;

type
  Tform_pelanggan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    id_pelanggan: TEdit;
    nm_pelanggan: TEdit;
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
    procedure onaktif_plg;
    procedure keluarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure baruClick(Sender: TObject);
    procedure nm_pelangganKeyPress(Sender: TObject; var Key: Char);
    procedure no_telpKeyPress(Sender: TObject; var Key: Char);
    procedure r_grupClick(Sender: TObject);
    procedure pencarianChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cekanomali;
    procedure cekinput;
    procedure tambahClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure batalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_pelanggan: Tform_pelanggan;
  cek_anomali, cek_input : string[3];

implementation

uses u_dm, ADODB;

{$R *.dfm}

procedure Tform_pelanggan.onaktif_plg;
begin
with dm.pelanggan do
begin
  Active := false;
  Active := True;
  dm.pelanggan.First;
  id_pelanggan.Text := FieldByName('id_pelanggan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  alamat.Text := FieldByName('alamat').asstring;
  no_telp.Text := FieldByName('no_telp').asstring;
end;

id_pelanggan.Enabled := false;
nm_pelanggan.Enabled := false;
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

procedure Tform_pelanggan.cekanomali;
begin
  with dm do
  begin
    if ((pelanggan.Locate('nm_pelanggan', nm_pelanggan.Text,[])) AND
       (pelanggan.FieldByName('alamat').AsString = alamat.Text)) OR
       (pelanggan.Locate('no_telp', no_telp.Text,[])) then
      begin
        application.MessageBox('Data Sudah Digunakan !','Pemberitahuan !',mb_ok or MB_ICONERROR);
        cek_anomali := 'ya' ;
      end
    else
      cek_anomali := 'tdk' ;
  end;
end;

procedure Tform_pelanggan.cekinput;
begin
if (id_pelanggan.Text = '') or
   (nm_pelanggan.Text = '') or
   (alamat.Text = '') or
   (no_telp.Text = '')
then
    begin
      cek_input := 'ya' ;
    end
else
      cek_input := 'tdk' ;
end;

procedure Tform_pelanggan.keluarClick(Sender: TObject);
begin
close;
end;

procedure Tform_pelanggan.FormActivate(Sender: TObject);
begin
onaktif_plg;
end;

procedure Tform_pelanggan.baruClick(Sender: TObject);
var a : string; b : integer;
begin
nm_pelanggan.Text := '';
alamat.Text := '';
no_telp.Text := '';

nm_pelanggan.Enabled := true;
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

if dm.pelanggan.Recordset.RecordCount > 0 then
      begin
        dm.pelanggan.Recordset.MoveFirst;
        b :=1;
        repeat
            a := 'PLG'+format('%.4d',[b]);
            if (dm.pelanggan.Locate('id_pelanggan',a,[]) = false) then
              begin
                 id_pelanggan.Text := a;
                 nm_pelanggan.SetFocus;
                 Exit;
              end
            else
              begin
              dm.pelanggan.Recordset.MoveNext;
              b := b + 1;
              end;
        until(b > dm.pelanggan.Recordset.RecordCount + 1);
      end
else
id_pelanggan.Text := 'PLG'+format('%.4d',[1]);
nm_pelanggan.SetFocus;
end;

procedure Tform_pelanggan.nm_pelangganKeyPress(Sender: TObject;
  var Key: Char);
begin
if not ( key in[ 'A'..'Z', 'a'..'z', #8, #13, #32, #46, #44, #39]) then
    key := #0;
end;

procedure Tform_pelanggan.no_telpKeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in[ '0'..'9', #8, #13]) then
    key := #0;
end;

procedure Tform_pelanggan.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Tform_pelanggan.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'id_pelanggan';
    pencarian.MaxLength := 7;
  end
else
  begin
    pilih := 'nm_pelanggan' ;
    pencarian.MaxLength := 30;
  end;


with dm.pelanggan do
begin
if pencarian.Text = '' then
begin
  active := false;
  sql.Text := 'Select * From pelanggan Order By id_pelanggan';
  active := true;
  DBGrid1.Refresh;
end
else
begin
  Active:=False;
  sql.Text :='Select * From pelanggan Where ' + pilih + ' Like '+
  QuotedStr('%'+judul+'%');
  Active:=True;
  DBGrid1.Refresh;
end;

end;
end;

procedure Tform_pelanggan.DBGrid1CellClick(Column: TColumn);
begin
with dm.pelanggan do
begin
  id_pelanggan.Text := FieldByName('id_pelanggan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  alamat.Text := FieldByName('alamat').asstring;
  no_telp.Text := FieldByName('no_telp').asstring;
end;
end;

procedure Tform_pelanggan.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.pelanggan do
begin
  id_pelanggan.Text := FieldByName('id_pelanggan').asstring;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').asstring;
  alamat.Text := FieldByName('alamat').asstring;
  no_telp.Text := FieldByName('no_telp').asstring;
end;
end;

procedure Tform_pelanggan.tambahClick(Sender: TObject);
begin
with dm do
begin
cekanomali;
cekinput;
if (cek_anomali = 'ya') or (cek_input = 'ya') then
    exit
else
  begin
    pelanggan.Append;
    pelanggan['id_pelanggan'] := id_pelanggan.Text;
    pelanggan['nm_pelanggan'] := nm_pelanggan.Text;
    pelanggan['alamat'] := alamat.Text;
    pelanggan['no_telp'] := no_telp.Text;
    pelanggan.Post;
    onaktif_plg;
  end;
end;
end;

procedure Tform_pelanggan.ubahClick(Sender: TObject);
begin
with dm do
begin
if ubah.Caption = '&Ubah' then
  begin
    id_pelanggan.Enabled := true;
    nm_pelanggan.Enabled := true;
    alamat.Enabled := true;
    no_telp.Enabled := true;

    baru.Enabled := false;
    tambah.Enabled := false;
    hapus.Enabled := false;
    batal.Enabled := true;
    keluar.Enabled := false;
    ubah.Caption := '&Simpan';
    id_pelanggan.Enabled := false; //id
    DBGrid1.Enabled := false;
    DBGrid1.Refresh;
  end
else
  begin
    cekinput;
    if (cek_input = 'ya') then
        exit
    else
        pelanggan.Edit;
        pelanggan['id_pelanggan'] := id_pelanggan.Text;
        pelanggan['nm_pelanggan'] := nm_pelanggan.Text;
        pelanggan['alamat'] := alamat.Text;
        pelanggan['no_telp'] := no_telp.Text;
        pelanggan.Post;
        onaktif_plg;
   end;
end;
end;

procedure Tform_pelanggan.hapusClick(Sender: TObject);
begin
if (application.MessageBox('Apakah Yakin Ingin Menghapus Data ?','Pemberitahuan !',MB_YESNO or MB_ICONQUESTION)=ID_yes) then
dm.pelanggan.Delete;
onaktif_plg;
end;

procedure Tform_pelanggan.batalClick(Sender: TObject);
begin
onaktif_plg;
end;



end.
