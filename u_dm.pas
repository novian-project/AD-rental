unit u_dm;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS;

type
  Tdm = class(TDataModule)
    ADOConnection1: TADOConnection;
    film: TADOQuery;
    ds_film: TDataSource;
    pelanggan: TADOQuery;
    ds_pelanggan: TDataSource;
    karyawan: TADOQuery;
    ds_karyawan: TDataSource;
    filmid_film: TWideStringField;
    filmkategori: TWideStringField;
    filmjudul_kaset: TWideStringField;
    filmjml_keping: TSmallintField;
    filmjumlah_kaset: TSmallintField;
    filmharga: TIntegerField;
    q_sewa: TADOQuery;
    ds_qsewa: TDataSource;
    t_sewa: TADOTable;
    q_sewaid_sewa: TWideStringField;
    q_sewanm_pelanggan: TWideStringField;
    q_sewajaminan: TWideStringField;
    q_sewatgl_sewa: TDateTimeField;
    q_sewatgl_hrs_kmb: TDateTimeField;
    q_sewanm_karyawan: TWideStringField;
    ds_qkembali: TDataSource;
    q_sewano_jaminan: TWideStringField;
    q_kembali: TADOQuery;
    kembali2: TADOQuery;
    q_sewastatus_sewa: TWordField;
    kembali: TADOTable;
    q_sewa_kmb: TADOQuery;
    Ds_sewa: TDataSource;
    ds_detail: TDataSource;
    q_detail: TADOQuery;
    ds_q_detail: TDataSource;
    detail: TADOTable;
    q_sewabiaya: TIntegerField;
    q_sewatotal_sewa: TIntegerField;
    R_struk_sewa: TfrxReport;
    db_q_kaset: TfrxDBDataset;
    db_q_sewa: TfrxDBDataset;
    ADO_detail: TADOQuery;
    q_detailid_sewa: TWideStringField;
    q_detailjudul_film: TWideStringField;
    q_detailkategori: TWideStringField;
    q_detailjml_sewa: TIntegerField;
    q_detailbiaya: TIntegerField;
    q_detailid_film: TWideStringField;
    q_detailno: TWideStringField;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    R_lap_sewa: TfrxReport;
    operator: TADOQuery;
    ds_operator: TDataSource;
    operatorno: TAutoIncField;
    operatorid_karyawan: TWideStringField;
    operatorusername: TWideStringField;
    operatorpassword: TWideStringField;
    operatortes: TStringField;
    dbm_film: TfrxDBDataset;
    RM_film: TfrxReport;
    dbm_karyawan: TfrxDBDataset;
    RM_karyawan: TfrxReport;
    dbm_pelanggan: TfrxDBDataset;
    RM_pelanggan: TfrxReport;
    db_q_kembali: TfrxDBDataset;
    R_lap_kembali: TfrxReport;
    R_struk_kembali: TfrxReport;
    R_blm_kembali: TfrxReport;
    q_detaildenda: TIntegerField;
    q_kmb_tmbh: TADOQuery;
    Ds_q_kmb_tmbh: TDataSource;
    ADO_kmb_tmbh: TADOTable;
    q_detailterlambat: TIntegerField;
    q_detailstatus_kembali: TWideStringField;
    q_detailid_pelanggan: TWideStringField;
    total_film: TADOQuery;
    total_plg: TADOQuery;
    procedure operatorCalcFields(DataSet: TDataSet);
    procedure R_blm_kembaliClosePreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.operatorCalcFields(DataSet: TDataSet);
begin
 dataset.FieldByName('tes').AsString := stringofchar('*',Length(dataset.FieldByName('password').AsString));
end;

procedure Tdm.R_blm_kembaliClosePreview(Sender: TObject);
begin
   q_sewa.Active := false;
   q_sewa.SQL.Text := 'select * from q_sewa ORDER By id_sewa';
   q_sewa.Active := true;
end;

end.
