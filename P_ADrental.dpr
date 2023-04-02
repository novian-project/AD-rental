program P_ADrental;

uses
  Forms,
  U_login in 'U_login.pas' {form_login},
  u_menu_utama in 'u_menu_utama.pas' {form_utama},
  u_kaset in 'u_kaset.pas' {form_film},
  u_dm in 'u_dm.pas' {dm: TDataModule},
  u_pelanggan in 'u_pelanggan.pas' {form_pelanggan},
  u_tentang in 'u_tentang.pas' {form_tentang},
  u_karyawan in 'u_karyawan.pas' {form_karyawan},
  u_sewa in 'u_sewa.pas' {form_sewa},
  u_short in 'u_short.pas' {s_karyawan},
  u_s_pelanggan in 'u_s_pelanggan.pas' {s_pelanggan},
  u_s_film in 'u_s_film.pas' {s_film},
  u_kembali in 'u_kembali.pas' {form_kembali},
  u_s_sewa in 'u_s_sewa.pas' {s_sewa},
  u_s_kar2 in 'u_s_kar2.pas' {s_kar2},
  u_detail in 'u_detail.pas' {form_detail},
  u_laporan in 'u_laporan.pas' {form_laporan},
  u_operator in 'u_operator.pas' {Form_password},
  u_kembali_film in 'u_kembali_film.pas' {form_kembali_film},
  u_laporan2 in 'u_laporan2.pas' {form_laporan2},
  u_kmb_tambah in 'u_kmb_tambah.pas' {Form_pilih_film};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'APLIKASI RENTAL DVD - ADRENTAL';
  Application.CreateForm(Tform_login, form_login);
  Application.CreateForm(Tform_utama, form_utama);
  Application.CreateForm(Tform_film, form_film);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tform_pelanggan, form_pelanggan);
  Application.CreateForm(Tform_tentang, form_tentang);
  Application.CreateForm(Tform_karyawan, form_karyawan);
  Application.CreateForm(Tform_sewa, form_sewa);
  Application.CreateForm(Ts_karyawan, s_karyawan);
  Application.CreateForm(Ts_pelanggan, s_pelanggan);
  Application.CreateForm(Ts_film, s_film);
  Application.CreateForm(Tform_kembali, form_kembali);
  Application.CreateForm(Ts_sewa, s_sewa);
  Application.CreateForm(Ts_kar2, s_kar2);
  Application.CreateForm(Tform_detail, form_detail);
  Application.CreateForm(Tform_laporan, form_laporan);
  Application.CreateForm(TForm_password, Form_password);
  Application.CreateForm(Tform_kembali_film, form_kembali_film);
  Application.CreateForm(Tform_laporan2, form_laporan2);
  Application.CreateForm(TForm_pilih_film, Form_pilih_film);
  Application.Run;

end.
