unit u_short;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, frxpngimage;

type
  Ts_karyawan = class(TForm)
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
    procedure r_grupClick(Sender: TObject);
    procedure pencarianChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  s_karyawan: Ts_karyawan;

implementation

uses u_dm, u_sewa;

{$R *.dfm}

procedure Ts_karyawan.DBGrid1CellClick(Column: TColumn);
begin
with dm.karyawan, form_sewa do
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
end;
end;

procedure Ts_karyawan.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.karyawan, form_sewa do
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
end;
end;

procedure Ts_karyawan.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Ts_karyawan.pencarianChange(Sender: TObject);
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

procedure Ts_karyawan.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with dm.karyawan, form_sewa do
begin
if key = #13 then
  begin
    id_karyawan.Text := FieldByName('id_karyawan').AsString;
    nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
    s_karyawan.Close;
  end;
end;
end;

procedure Ts_karyawan.DBGrid1DblClick(Sender: TObject);
begin
with dm.karyawan, form_sewa do
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
  s_karyawan.Close;
end;
end;

procedure Ts_karyawan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form_sewa.b_id_pel.SetFocus;
end;

end.
