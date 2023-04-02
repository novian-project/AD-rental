unit u_s_pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, frxpngimage;

type
  Ts_pelanggan = class(TForm)
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
  s_pelanggan: Ts_pelanggan;

implementation

uses u_dm, u_sewa;

{$R *.dfm}

procedure Ts_pelanggan.r_grupClick(Sender: TObject);
begin
pencarian.SetFocus;
end;

procedure Ts_pelanggan.pencarianChange(Sender: TObject);
var judul, pilih :String;
begin
judul :=pencarian.Text;
if r_grup.ItemIndex = 0 then
  begin
    pilih := 'id_pelanggan' ;
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

procedure Ts_pelanggan.DBGrid1CellClick(Column: TColumn);
begin
with dm.pelanggan, form_sewa do
begin
  id_pelanggan.Text := FieldByName('id_pelanggan').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
end;
end;

procedure Ts_pelanggan.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with dm.pelanggan, form_sewa do
begin
  id_pelanggan.Text := FieldByName('id_pelanggan').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
end;
end;

procedure Ts_pelanggan.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with dm.pelanggan, form_sewa do
begin
if key = #13 then
begin
  id_pelanggan.Text := FieldByName('id_pelanggan').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
  s_pelanggan.Close;
end;
end;
end;
procedure Ts_pelanggan.DBGrid1DblClick(Sender: TObject);
begin
with dm.pelanggan, form_sewa do
begin
  id_pelanggan.Text := FieldByName('id_pelanggan').AsString;
  nm_pelanggan.Text := FieldByName('nm_pelanggan').AsString;
  s_pelanggan.Close;
end;
end;
procedure Ts_pelanggan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
form_sewa.jaminan.SetFocus;
form_sewa.jaminan.DroppedDown := true;
end;

end.
