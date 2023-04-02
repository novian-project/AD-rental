unit u_menu_utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, frxpngimage, ExtCtrls, StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxLabel, ImgList;

type
  Tform_utama = class(TForm)
    MainMenu1: TMainMenu;
    name: TMenuItem;
    L1: TMenuItem;
    L2: TMenuItem;
    E1: TMenuItem;
    master: TMenuItem;
    F2: TMenuItem;
    D1: TMenuItem;
    D2: TMenuItem;
    transaksi: TMenuItem;
    P1: TMenuItem;
    P2: TMenuItem;
    laporan: TMenuItem;
    fasilitas: TMenuItem;
    G1: TMenuItem;
    L4: TMenuItem;
    B1: TMenuItem;
    E2: TMenuItem;
    tentang: TMenuItem;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Image2: TImage;
    waktu: TLabel;
    tanggal: TLabel;
    det: TLabel;
    username: TcxLabel;
    status: TcxLabel;
    Image3: TImage;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ImageList1: TImageList;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    L3: TMenuItem;
    L5: TMenuItem;
    L6: TMenuItem;
    L7: TMenuItem;
    F1: TMenuItem;
    K1: TMenuItem;
    P3: TMenuItem;
    D3: TMenuItem;
    D4: TMenuItem;
    F3: TMenuItem;
    B2: TMenuItem;
    K2: TMenuItem;
    L8: TMenuItem;
    K3: TMenuItem;
    P4: TMenuItem;
    B3: TMenuItem;
    T1: TMenuItem;
    K4: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure tentangClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure L6Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure L7Click(Sender: TObject);
    procedure K4Click(Sender: TObject);
  private
    { biar bisa diminimize }
    procedure WMSyscommand(var Msg: TWmSysCommand); message WM_SYSCOMMAND;
  public
    { Public declarations }
  end;

var
  form_utama: Tform_utama ;

implementation

uses u_kaset, u_pelanggan, U_login, u_tentang, u_karyawan, u_sewa,
  u_kembali, u_laporan, u_operator, u_dm, u_laporan2;

{$R *.dfm}

procedure Tform_utama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure Tform_utama.FormActivate(Sender: TObject);
begin
StatusBar1.Panels[5].Text := DateToStr(now);
tanggal.Caption := DateToStr(now);
end;

procedure Tform_utama.F2Click(Sender: TObject);
begin
form_film.ShowModal;
end;

procedure Tform_utama.D2Click(Sender: TObject);
begin
form_pelanggan.showmodal;
end;

procedure Tform_utama.L1Click(Sender: TObject);
begin
form_login.Show;
form_login.Button2.Caption := 'Batal';
master.Enabled := false;
transaksi.Enabled := false;
laporan.Enabled := false;
fasilitas.Enabled := false;
end;

procedure Tform_utama.L2Click(Sender: TObject);
begin
master.Enabled := false;
transaksi.Enabled := false;
laporan.Enabled := false;
fasilitas.Enabled := false;
StatusBar1.Panels[2].Text := 'LOGOUT';
status.Caption := 'OFF';
username.Caption := 'OFF';
l1.Enabled := true;
l2.Enabled := false;
end;

procedure Tform_utama.E1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tform_utama.tentangClick(Sender: TObject);
begin
form_tentang.ShowModal;
end;

procedure Tform_utama.Timer1Timer(Sender: TObject);
var
jam, detik : string;
begin
jam := FormatDateTime('hh:mm',time);
detik := FormatDateTime('ss',time);
det.Caption := detik;
waktu.Caption := jam;
end;

procedure Tform_utama.D1Click(Sender: TObject);
begin
form_karyawan.ShowModal;
end;

procedure Tform_utama.P1Click(Sender: TObject);
begin
form_sewa.ShowModal;
end;

procedure Tform_utama.WMSyscommand(var Msg: TWmSysCommand);
begin
case (Msg.CmdType and $FFF0) of
    SC_MINIMIZE: begin
                    Msg.Result := 0 ;
                    EnableWindow(Application.Handle, True);
                    Application.minimize;
                  end;
    else
      inherited;
    end;
end;

procedure Tform_utama.P2Click(Sender: TObject);
begin
form_kembali.ShowModal;
end;

procedure Tform_utama.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
ImageList1.Draw(StatusBar.Canvas, Rect.Left+5, Rect.Top, Panel.Index);
end;

procedure Tform_utama.L6Click(Sender: TObject);
begin
form_laporan.ShowModal;
end;

procedure Tform_utama.G1Click(Sender: TObject);
begin
Form_password.ShowModal;
end;

procedure Tform_utama.F1Click(Sender: TObject);
begin
with dm do
begin
   Rm_film.LoadFromFile('laporan/l_master_film.Fr3');
   RM_film.showreport();
end;
end;

procedure Tform_utama.K1Click(Sender: TObject);
begin
with dm do
begin
   RM_karyawan.LoadFromFile('laporan/l_master_karyawan.Fr3');
   RM_karyawan.showreport();
end;
end;

procedure Tform_utama.P3Click(Sender: TObject);
begin
with dm do
begin
   RM_pelanggan.LoadFromFile('laporan/l_master_pelanggan.Fr3');
   RM_pelanggan.showreport();
end;
end;

procedure Tform_utama.L7Click(Sender: TObject);
begin
form_laporan2.ShowModal;
end;

procedure Tform_utama.K4Click(Sender: TObject);
begin
with dm do
begin
   q_sewa.Active := false;
   q_sewa.SQL.Text := 'Select * From q_sewa where status_sewa > 0';
   q_sewa.Active := true;
   R_blm_kembali.LoadFromFile('laporan/l_blm_mengembalikan.Fr3');
   R_blm_kembali.showreport();
end;
end;

end.

