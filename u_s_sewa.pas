unit u_s_sewa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, frxpngimage;

type
  Ts_sewa = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    r_grup: TRadioGroup;
    pencarian: TEdit;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pencarianChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  s_sewa: Ts_sewa;

implementation

uses u_dm, u_kembali, DB, u_kembali_film, u_kmb_tambah;

{$R *.dfm}

procedure Ts_sewa.DBGrid1CellClick(Column: TColumn);
begin
with dm.q_sewa, form_kembali do
begin
  id_sewa.Text := FieldByName('id_sewa').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
  tgl_hrs_kmb.Date := FieldByName('tgl_hrs_kmb').AsDateTime;
 form_kembali_film.tgl_hrs_kmb.Date := fieldbyName('tgl_hrs_kmb').AsDateTime;
end;
end;

procedure Ts_sewa.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.q_sewa, form_kembali do
begin
  id_sewa.Text := FieldByName('id_sewa').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
  tgl_hrs_kmb.Date := FieldByName('tgl_hrs_kmb').AsDateTime;
  form_kembali_film.tgl_hrs_kmb.Date := fieldbyName('tgl_hrs_kmb').AsDateTime;
end;
end;

procedure Ts_sewa.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'id_sewa' ;
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
  sql.Text := 'Select * From q_sewa where status_sewa > 0';
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

procedure Ts_sewa.DBGrid1DblClick(Sender: TObject);
begin
with dm.q_sewa, form_kembali do
begin
  id_sewa.Text := FieldByName('id_sewa').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
 tgl_hrs_kmb.Date := FieldByName('tgl_hrs_kmb').AsDateTime;
  form_kembali_film.tgl_hrs_kmb.Date := fieldbyName('tgl_hrs_kmb').AsDateTime;
  form_kembali_film.id_pelanggan.Text := dm.t_sewa.fieldByName('id_pelanggan').AsString;
  form_kembali_film.total_sewa.Text := FieldByName('total_sewa').AsString;
  s_sewa.close;
  form_kembali_film.ShowModal;
end;

end;

procedure Ts_sewa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with dm.q_sewa, form_kembali do
begin
if key = #13 then
  begin
    id_sewa.Text := FieldByName('id_sewa').AsString;
    nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
    tgl_hrs_kmb.Date := FieldByName('tgl_hrs_kmb').AsDateTime;
    form_kembali_film.tgl_hrs_kmb.Date := fieldbyName('tgl_hrs_kmb').AsDateTime;
    Form_kembali_film.id_pelanggan.Text := dm.t_sewa.fieldByName('id_pelanggan').AsString;
    Form_kembali_film.total_sewa.Text := FieldByName('total_sewa').AsString;
    s_sewa.close;
    form_kembali_film.ShowModal;
  end;
end;
end;

end.
