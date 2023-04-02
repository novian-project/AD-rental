unit u_s_film;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, frxpngimage;

type
  Ts_film = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    r_grup: TRadioGroup;
    pencarian: TEdit;
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    procedure r_grupClick(Sender: TObject);
    procedure pencarianChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  s_film: Ts_film;

implementation

uses u_dm, u_sewa, u_detail;

{$R *.dfm}

procedure Ts_film.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Ts_film.pencarianChange(Sender: TObject);
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

procedure Ts_film.DBGrid1CellClick(Column: TColumn);
begin
with dm.film, form_detail do
begin
  id_film.Text :=  FieldByName('id_film').AsString;
  jdl_film.Text :=  FieldByName('judul_film').AsString;
  kategori.Text :=  FieldByName('kategori').AsString;
  biaya.text := FieldByName('harga').AsString;
end;
end;

procedure Ts_film.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.film, form_detail do
begin
  id_film.Text :=  FieldByName('id_film').AsString;
  jdl_film.Text :=  FieldByName('judul_film').AsString;
  kategori.Text :=  FieldByName('kategori').AsString;
  biaya.text := FieldByName('harga').AsString;
end;
end;

procedure Ts_film.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with dm.film, form_detail do
begin
if key = #13 then
begin
  id_film.Text :=  FieldByName('id_film').AsString;
  jdl_film.Text :=  FieldByName('judul_film').AsString;
  kategori.Text :=  FieldByName('kategori').AsString;
  biaya.text := FieldByName('harga').AsString;
  s_film.Close;
end;
end;
end;
procedure Ts_film.DBGrid1DblClick(Sender: TObject);
begin
with dm.film, form_detail do
begin
  id_film.Text :=  FieldByName('id_film').AsString;
  jdl_film.Text :=  FieldByName('judul_film').AsString;
  kategori.Text :=  FieldByName('kategori').AsString;
  biaya.text := FieldByName('harga').AsString;
  s_film.Close;
end;
end;

procedure Ts_film.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form_detail.jml_sewa.SetFocus;
end;

end.
