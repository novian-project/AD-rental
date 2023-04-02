unit u_laporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, frxpngimage, ExtCtrls, sEdit, sSpinEdit;

type
  Tform_laporan = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure rd_semuaClick(Sender: TObject);
    procedure rd_tahunClick(Sender: TObject);
    procedure rd_bulanClick(Sender: TObject);
    procedure rd_tanggalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mulaiChange(Sender: TObject);
    procedure hinggaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_laporan: Tform_laporan;

implementation

uses u_dm, u_sewa, ADODB, u_menu_utama;

{$R *.dfm}

procedure Tform_laporan.Button1Click(Sender: TObject);
var bln : string;
begin
with dm.q_sewa, dm do
begin
if rd_semua.Checked = true then
  begin
    Active := false;
    SQL.Text := 'select * from q_sewa ORDER By id_sewa;';
    Active := true;
    R_lap_sewa.LoadFromFile('laporan/L_sewa.Fr3');
    R_lap_sewa.showreport();
  end
else if rd_tahun.Checked = true then
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM q_sewa WHERE YEAR(tgl_sewa) = '+ t_tahun.Text  ;
    Active := true;
    R_lap_sewa.LoadFromFile('laporan/L_sewa.Fr3');
    R_lap_sewa.showreport();
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
    SQL.Text := 'SELECT * from q_sewa WHERE MONTH(tgl_sewa) ='+ bln +'AND YEAR(tgl_sewa) ='+ b_tahun.Text  ;
    Active := true;
    R_lap_sewa.LoadFromFile('laporan/L_sewa.Fr3');
    R_lap_sewa.showreport();
  end
else
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM q_sewa WHERE tgl_sewa BETWEEN ');
    SQL.Add('#' + FormatDateTime('MM/DD/YYYY',mulai.Date)+'# AND');
    SQL.Add('#' + FormatDateTime('MM/DD/YYYY',hingga.Date + 1)+'#');
    Active := true;
    R_lap_sewa.LoadFromFile('laporan/L_sewa.Fr3');
    R_lap_sewa.showreport();
  end;
end;
end;

procedure Tform_laporan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.q_sewa.Active := false;
dm.q_sewa.SQL.Text := 'select * from q_sewa ORDER By id_sewa';
dm.q_sewa.Active := true;
end;

procedure Tform_laporan.Button2Click(Sender: TObject);
begin
 close;
end;

procedure Tform_laporan.rd_semuaClick(Sender: TObject);
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

procedure Tform_laporan.rd_tahunClick(Sender: TObject);
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

procedure Tform_laporan.rd_bulanClick(Sender: TObject);
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

procedure Tform_laporan.rd_tanggalClick(Sender: TObject);
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

procedure Tform_laporan.FormActivate(Sender: TObject);
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

procedure Tform_laporan.mulaiChange(Sender: TObject);
begin
if mulai.Date > hingga.Date then
begin
  application.MessageBox('Tidak Boleh Melebihi Tanggal "Hingga" !','Pemberitahuan !',mb_ok or MB_ICONERROR);
  mulai.Date := hingga.Date;
end;
end;

procedure Tform_laporan.hinggaChange(Sender: TObject);
begin
if hingga.Date < mulai.Date then
begin
  application.MessageBox('Tidak Boleh Kurang Dari Tanggal "Mulai" !','Pemberitahuan !',mb_ok or MB_ICONERROR);
  hingga.Date := mulai.Date;
end;
end;

end.
