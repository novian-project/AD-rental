unit u_laporan2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sSpinEdit, ComCtrls, frxpngimage, ExtCtrls;

type
  Tform_laporan2 = class(TForm)
    Panel2: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Image2: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    rd_tahun: TRadioButton;
    rd_bulan: TRadioButton;
    rd_tanggal: TRadioButton;
    mulai: TDateTimePicker;
    hingga: TDateTimePicker;
    t_tahun: TsSpinEdit;
    b_tahun: TsSpinEdit;
    bulan: TComboBox;
    rd_semua: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure rd_semuaClick(Sender: TObject);
    procedure rd_tahunClick(Sender: TObject);
    procedure rd_bulanClick(Sender: TObject);
    procedure rd_tanggalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_laporan2: Tform_laporan2;

implementation

uses u_dm;

{$R *.dfm}

procedure Tform_laporan2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.q_kembali.Active := false;
dm.q_kembali.SQL.Text := 'select * from q_kembali ORDER By id_kembali';
dm.q_kembali.Active := true;
end;
procedure Tform_laporan2.FormActivate(Sender: TObject);
begin
  rd_semua.Checked := false;
  rd_tahun.Checked := false;
  rd_bulan.Checked := false;
  rd_tanggal.Checked := false;
  t_tahun.Enabled := false;
  bulan.Enabled := false;
  b_tahun.Enabled := false;
  mulai.Enabled := false;
  hingga.Enabled := false;
  bulan.ItemIndex := 0;
end;

procedure Tform_laporan2.Button1Click(Sender: TObject);
var bln : string;
begin
with dm.q_kembali, dm do
begin
if rd_semua.Checked = true then
  begin
    Active := false;
    SQL.Text := 'select * from q_kembali ORDER By id_kembali;';
    Active := true;
    R_lap_kembali.LoadFromFile('laporan/L_kembali.Fr3');
    R_lap_kembali.showreport();
  end
else if rd_tahun.Checked = true then
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM q_kembali WHERE YEAR(tgl_kmb) = '+ t_tahun.Text  ;
    Active := true;
    R_lap_kembali.LoadFromFile('laporan/L_kembali.Fr3');
    R_lap_kembali.showreport();
  end
else if rd_bulan.Checked = true then
  begin
    case bulan.ItemIndex of
      0:bln := '01';
      1:bln := '02';
      2:bln := '03';
      3:bln := '04';
      4:bln := '05';
      5:bln := '06';
      6:bln := '07';
      7:bln := '08';
      8:bln := '09';
      9:bln := '10';
     10:bln := '11';
     11:bln := '12';
    end;
    Active := false;
    SQL.Text := 'SELECT * from q_kembali WHERE MONTH(tgl_kmb) ='+ bln +'AND YEAR(tgl_kmb) ='+ b_tahun.Text  ;
    Active := true;
    R_lap_kembali.LoadFromFile('laporan/L_kembali.Fr3');
    R_lap_kembali.showreport();
  end
else
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM q_kembali WHERE tgl_kmb BETWEEN ');
    SQL.Add('#' + FormatDateTime('MM/DD/YYYY',mulai.Date)+'# AND');
    SQL.Add('#' + FormatDateTime('MM/DD/YYYY',hingga.Date + 1)+'#');
    Active := true;
    R_lap_kembali.LoadFromFile('laporan/L_kembali.Fr3');
    R_lap_kembali.showreport();
  end;
end;
end;

procedure Tform_laporan2.Button2Click(Sender: TObject);
begin
 close;
end;

procedure Tform_laporan2.rd_semuaClick(Sender: TObject);
begin
if rd_semua.Checked = true then
begin
  t_tahun.Enabled := false;
  bulan.Enabled := false;
  b_tahun.Enabled := false;
  mulai.Enabled := false;
  hingga.Enabled := false;
end;

end;

procedure Tform_laporan2.rd_tahunClick(Sender: TObject);
begin
if rd_tahun.Checked = true then
begin
  t_tahun.Enabled := true;
  bulan.Enabled := false;
  b_tahun.Enabled := false;
  mulai.Enabled := false;
  hingga.Enabled := false;
end;
end;

procedure Tform_laporan2.rd_bulanClick(Sender: TObject);
begin
if rd_bulan.Checked = true then
begin
  t_tahun.Enabled := false;
  bulan.Enabled := true;
  b_tahun.Enabled := true;
  mulai.Enabled := false;
  hingga.Enabled := false;
end;
end;

procedure Tform_laporan2.rd_tanggalClick(Sender: TObject);
begin
if rd_tanggal.Checked = true then
begin
  t_tahun.Enabled := false;
  bulan.Enabled := false;
  b_tahun.Enabled := false;
  mulai.Enabled := true;
  hingga.Enabled := true;
end;
end;

end.
