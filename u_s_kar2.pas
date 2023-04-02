unit u_s_kar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, frxpngimage;

type
  Ts_kar2 = class(TForm)
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
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  s_kar2: Ts_kar2;

implementation

uses u_kembali, u_dm;

{$R *.dfm}

procedure Ts_kar2.DBGrid1CellClick(Column: TColumn);
begin
with dm.karyawan, form_kembali do
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
end;
end;

procedure Ts_kar2.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.karyawan, form_kembali do
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
end;
end;

procedure Ts_kar2.DBGrid1DblClick(Sender: TObject);
begin
with dm.karyawan, form_kembali do
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
  s_kar2.Close;
  form_kembali.b_id_sewa.SetFocus;
end;
end;

procedure Ts_kar2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with dm.karyawan, form_kembali do
begin
if key = #13 then
begin
  id_karyawan.Text := FieldByName('id_karyawan').AsString;
  nm_karyawan.Text := FieldByName('nm_karyawan').AsString;
  s_kar2.Close;
  form_kembali.b_id_sewa.SetFocus;
 end;
end;
end;

end.
