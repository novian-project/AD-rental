object dm: Tdm
  OldCreateOrder = False
  Left = 218
  Top = 312
  Height = 407
  Width = 278
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Db_adrental.accdb;' +
      'Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 32
    Top = 8
  end
  object film: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from film ORDER BY id_film;')
    Left = 248
    Top = 136
    object filmid_film: TWideStringField
      FieldName = 'id_film'
      Size = 7
    end
    object filmkategori: TWideStringField
      FieldName = 'kategori'
    end
    object filmjudul_kaset: TWideStringField
      FieldName = 'judul_film'
      Size = 45
    end
    object filmjml_keping: TSmallintField
      FieldName = 'jml_keping'
    end
    object filmjumlah_kaset: TSmallintField
      FieldName = 'jumlah_film'
    end
    object filmharga: TIntegerField
      FieldName = 'harga'
      DisplayFormat = 'Rp #,###'
    end
  end
  object ds_film: TDataSource
    DataSet = film
    Left = 288
    Top = 152
  end
  object pelanggan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pelanggan ORDER BY id_pelanggan;')
    Left = 344
    Top = 152
  end
  object ds_pelanggan: TDataSource
    DataSet = pelanggan
    Left = 280
    Top = 216
  end
  object karyawan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from karyawan ORDER By id_karyawan;')
    Left = 16
    Top = 136
  end
  object ds_karyawan: TDataSource
    DataSet = karyawan
    Left = 64
    Top = 136
  end
  object q_sewa: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from q_sewa ORDER By id_sewa;')
    Left = 16
    Top = 184
    object q_sewanm_pelanggan: TWideStringField
      FieldName = 'nm_pelanggan'
      Size = 30
    end
    object q_sewaid_sewa: TWideStringField
      FieldName = 'id_sewa'
      Size = 6
    end
    object q_sewajaminan: TWideStringField
      FieldName = 'jaminan'
      Size = 30
    end
    object q_sewatgl_sewa: TDateTimeField
      FieldName = 'tgl_sewa'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object q_sewatgl_hrs_kmb: TDateTimeField
      FieldName = 'tgl_hrs_kmb'
    end
    object q_sewanm_karyawan: TWideStringField
      FieldName = 'nm_karyawan'
      Size = 30
    end
    object q_sewano_jaminan: TWideStringField
      FieldName = 'no_jaminan'
      Size = 50
    end
    object q_sewastatus_sewa: TWordField
      FieldName = 'status_sewa'
    end
    object q_sewabiaya: TIntegerField
      FieldName = 'biaya'
      DisplayFormat = 'Rp. #,##'
    end
    object q_sewatotal_sewa: TIntegerField
      FieldName = 'total_sewa'
    end
  end
  object ds_qsewa: TDataSource
    DataSet = q_sewa
    Left = 64
    Top = 184
  end
  object t_sewa: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_sewa'
    MasterFields = 'id_sewa'
    MasterSource = ds_qsewa
    TableName = 'sewa'
    Left = 112
    Top = 184
  end
  object ds_qkembali: TDataSource
    DataSet = q_kembali
    Left = 72
    Top = 248
  end
  object q_kembali: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from q_kembali ORDER By id_kembali;')
    Left = 112
    Top = 304
  end
  object kembali2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from kembali ORDER by id_kembali;')
    Left = 200
    Top = 8
  end
  object kembali: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'id_kembali'
    MasterFields = 'id_kembali'
    MasterSource = ds_qkembali
    TableName = 'kembali'
    Left = 176
    Top = 280
  end
  object q_sewa_kmb: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from q_sewa_kmb;')
    Left = 176
    Top = 232
  end
  object Ds_sewa: TDataSource
    DataSet = t_sewa
    Left = 152
    Top = 8
  end
  object ds_detail: TDataSource
    Left = 360
    Top = 72
  end
  object q_detail: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from q_detail order by id_sewa;')
    Left = 280
    Top = 64
    object q_detailid_sewa: TWideStringField
      FieldName = 'id_sewa'
      Size = 6
    end
    object q_detailjudul_film: TWideStringField
      FieldName = 'judul_film'
      Size = 30
    end
    object q_detailkategori: TWideStringField
      FieldName = 'kategori'
    end
    object q_detailjml_sewa: TIntegerField
      FieldName = 'jml_sewa'
    end
    object q_detailbiaya: TIntegerField
      FieldName = 'biaya'
      DisplayFormat = 'Rp #,###'
    end
    object q_detailid_film: TWideStringField
      FieldName = 'id_film'
      Size = 7
    end
    object q_detailno: TWideStringField
      FieldName = 'no'
      Size = 5
    end
    object q_detaildenda: TIntegerField
      FieldName = 'denda'
      DisplayFormat = 'Rp #,###'
    end
    object q_detailterlambat: TIntegerField
      FieldName = 'terlambat'
    end
    object q_detailstatus_kembali: TWideStringField
      FieldName = 'status_kembali'
      Size = 1
    end
    object q_detailid_pelanggan: TWideStringField
      FieldName = 'id_pelanggan'
      Size = 7
    end
  end
  object ds_q_detail: TDataSource
    DataSet = q_detail
    Left = 328
    Top = 72
  end
  object detail: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'no'
    MasterFields = 'no'
    MasterSource = ds_q_detail
    TableName = 'detail'
    Left = 280
    Top = 8
  end
  object R_struk_sewa: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42131.730247372700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 864
    Top = 208
    Datasets = <
      item
        DataSet = db_q_kaset
        DataSetName = 'db_q_detail'
      end
      item
        DataSet = db_q_sewa
        DataSetName = 'db_q_sewa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 166.299320000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 143.622140000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 143.622140000000000000
          Width = 347.716760000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUDUL FILM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 377.953000000000000000
          Top = 143.622140000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KATEGORI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 483.779840000000000000
          Top = 143.622140000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 574.488560000000000000
          Top = 143.622140000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BIAYA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 162.519790000000000000
          Top = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."tgl_sewa"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TANGGAL SEWA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.149970000000000000
          Top = 37.795300000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_karyawan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."nm_karyawan"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 434.645950000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 563.149970000000000000
          Top = 68.031540000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."nm_pelanggan"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 434.645950000000000000
          Top = 68.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 162.519790000000000000
          Top = 98.267780000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jaminan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."jaminan"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 7.559060000000000000
          Top = 98.267780000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'JAMINAN')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 563.149970000000000000
          Top = 98.267780000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'no_jaminan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."no_jaminan"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 434.645950000000000000
          Top = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'NO JAMINAN')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 162.519790000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."id_sewa"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'ID SEWA')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 162.519790000000000000
          Top = 68.031540000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_hrs_kmb'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_sewa."tgl_hrs_kmb"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Top = 68.031540000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TANGGAL HARUS KEMBALI')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 143.622140000000000000
          Top = 7.559060000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 143.622140000000000000
          Top = 68.031540000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 143.622140000000000000
          Top = 98.267780000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 544.252320000000000000
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 544.252320000000000000
          Top = 68.031540000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 544.252320000000000000
          Top = 98.267780000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        DataSet = db_q_kaset
        DataSetName = 'db_q_detail'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 30.236240000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'judul_film'
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_detail."judul_film"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kategori'
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_detail."kategori"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 483.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jml_sewa'
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_detail."jml_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[db_q_detail."biaya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rp')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'BUKTI SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 525.354670000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 483.779840000000000000
          Top = 22.677180000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DataField = 'total_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."total_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 574.488560000000000000
          Top = 22.677180000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[db_q_sewa."biaya"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object db_q_kaset: TfrxDBDataset
    UserName = 'db_q_detail'
    CloseDataSource = False
    DataSet = q_detail
    BCDToCurrency = False
    Left = 912
    Top = 112
  end
  object db_q_sewa: TfrxDBDataset
    UserName = 'db_q_sewa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nm_pelanggan=nm_pelanggan'
      'id_sewa=id_sewa'
      'jaminan=jaminan'
      'tgl_sewa=tgl_sewa'
      'tgl_hrs_kmb=tgl_hrs_kmb'
      'nm_karyawan=nm_karyawan'
      'no_jaminan=no_jaminan'
      'status_sewa=status_sewa'
      'biaya=biaya'
      'total_sewa=total_sewa')
    DataSet = q_sewa
    BCDToCurrency = False
    Left = 936
    Top = 208
  end
  object ADO_detail: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from q_detail ;')
    Left = 368
    Top = 16
  end
  object frxXLSExport1: TfrxXLSExport
    FileName = 'C:\Users\ACER\Desktop\TES3.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42124.344266898150000000
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 752
    Top = 168
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'C:\Users\ACER\Desktop\TES.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42124.342858043980000000
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 920
    Top = 144
  end
  object R_lap_sewa: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42131.732025335640000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 208
    Datasets = <
      item
        DataSet = db_q_kaset
        DataSetName = 'db_q_detail'
      end
      item
        DataSet = db_q_sewa
        DataSetName = 'db_q_sewa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BIAYA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 173.858380000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 298.582870000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 355.275820000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL HARUS KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 411.968770000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JAMINAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 483.779840000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMOR JAMINAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 574.488560000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        DataSet = db_q_sewa
        DataSetName = 'db_q_sewa'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."id_sewa"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 41.574830000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_karyawan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_sewa."nm_karyawan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 173.858380000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_sewa."nm_pelanggan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."tgl_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 355.275820000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."tgl_hrs_kmb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 411.968770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[db_q_sewa."jaminan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 483.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[db_q_sewa."no_jaminan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 574.488560000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."total_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[db_q_sewa."biaya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 623.622450000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rp')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<db_q_sewa."biaya">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 574.488560000000000000
          Top = 22.677180000000000000
          Width = 41.574830000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<db_q_sewa."total_sewa">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object operator: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = operatorCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select * From Operator order by id_karyawan;')
    Left = 424
    Top = 248
    object operatorno: TAutoIncField
      FieldName = 'no'
      ReadOnly = True
    end
    object operatorid_karyawan: TWideStringField
      FieldName = 'id_karyawan'
      Size = 6
    end
    object operatorusername: TWideStringField
      FieldName = 'username'
    end
    object operatorpassword: TWideStringField
      FieldName = 'password'
      Size = 30
    end
    object operatortes: TStringField
      FieldKind = fkCalculated
      FieldName = 'tes'
      Size = 25
      Calculated = True
    end
  end
  object ds_operator: TDataSource
    DataSet = operator
    Left = 464
    Top = 248
  end
  object dbm_film: TfrxDBDataset
    UserName = 'dbm_film'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_film=id_film'
      'kategori=kategori'
      'judul_film=judul_film'
      'jml_keping=jml_keping'
      'jumlah_film=jumlah_film'
      'harga=harga'
      'status_pinjam=status_pinjam')
    DataSet = film
    BCDToCurrency = False
    Left = 864
    Top = 32
  end
  object RM_film: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42134.395704710650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 32
    Datasets = <
      item
        DataSet = dbm_film
        DataSetName = 'dbm_film'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 37.795300000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          GroupIndex = 1
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID FILM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Top = 7.559060000000000000
          Width = 272.126160000000000000
          Height = 30.236240000000000000
          GroupIndex = 1
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUDUL FILM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 332.598640000000000000
          Top = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 30.236240000000000000
          GroupIndex = 1
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KATEGORI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 487.559370000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          GroupIndex = 1
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEPING')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 544.252320000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          GroupIndex = 1
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH FILM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 600.945270000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          GroupIndex = 1
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA FILM')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = dbm_film
        DataSetName = 'dbm_film'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_film'
          DataSet = dbm_film
          DataSetName = 'dbm_film'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_film."id_film"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'judul_film'
          DataSet = dbm_film
          DataSetName = 'dbm_film'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbm_film."judul_film"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 332.598640000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kategori'
          DataSet = dbm_film
          DataSetName = 'dbm_film'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbm_film."kategori"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 487.559370000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbm_film
          DataSetName = 'dbm_film'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_film."jml_keping"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 544.252320000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbm_film
          DataSetName = 'dbm_film'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_film."jumlah_film"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbm_film
          DataSetName = 'dbm_film'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dbm_film."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 609.724800000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN MASTER FILM')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 495.118430000000000000
          Top = 22.677180000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbm_film."harga">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dbm_karyawan: TfrxDBDataset
    UserName = 'dbm_karyawan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_karyawan=id_karyawan'
      'nm_karyawan=nm_karyawan'
      'alamat=alamat'
      'no_telp=no_telp')
    DataSet = karyawan
    BCDToCurrency = False
    Left = 864
    Top = 88
  end
  object RM_karyawan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42134.401074641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 88
    Datasets = <
      item
        DataSet = dbm_karyawan
        DataSetName = 'dbm_karyawan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 37.795300000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 71.811070000000000000
          Top = 7.559060000000000000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 287.244280000000000000
          Top = 7.559060000000000000
          Width = 328.819110000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO TELPON')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = dbm_karyawan
        DataSetName = 'dbm_karyawan'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_karyawan'
          DataSet = dbm_karyawan
          DataSetName = 'dbm_karyawan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_karyawan."id_karyawan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 71.811070000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_karyawan'
          DataSet = dbm_karyawan
          DataSetName = 'dbm_karyawan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbm_karyawan."nm_karyawan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 287.244280000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = dbm_karyawan
          DataSetName = 'dbm_karyawan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbm_karyawan."alamat"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_telp'
          DataSet = dbm_karyawan
          DataSetName = 'dbm_karyawan'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_karyawan."no_telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN MASTER KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
      end
    end
  end
  object dbm_pelanggan: TfrxDBDataset
    UserName = 'dbm_pelanggan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pelanggan=id_pelanggan'
      'nm_pelanggan=nm_pelanggan'
      'alamat=alamat'
      'no_telp=no_telp'
      'menyewa=menyewa')
    DataSet = pelanggan
    BCDToCurrency = False
    Left = 864
    Top = 136
  end
  object RM_pelanggan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42134.404245810180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 136
    Datasets = <
      item
        DataSet = dbm_pelanggan
        DataSetName = 'dbm_pelanggan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 37.795300000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 71.811070000000000000
          Top = 7.559060000000000000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 287.244280000000000000
          Top = 7.559060000000000000
          Width = 328.819110000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO TELPON')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = dbm_pelanggan
        DataSetName = 'dbm_pelanggan'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = dbm_pelanggan
          DataSetName = 'dbm_pelanggan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_pelanggan."id_pelanggan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 71.811070000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = dbm_pelanggan
          DataSetName = 'dbm_pelanggan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbm_pelanggan."nm_pelanggan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 287.244280000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = dbm_pelanggan
          DataSetName = 'dbm_pelanggan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbm_pelanggan."alamat"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_telp'
          DataSet = dbm_pelanggan
          DataSetName = 'dbm_pelanggan'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbm_pelanggan."no_telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN MASTER PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
      end
    end
  end
  object db_q_kembali: TfrxDBDataset
    UserName = 'db_q_kembali'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_kembali=id_kembali'
      'nm_pelanggan=nm_pelanggan'
      'tgl_hrs_kmb=tgl_hrs_kmb'
      'tgl_kmb=tgl_kmb'
      'terlambat=terlambat'
      'denda=denda'
      'jml_kmb=jml_kmb'
      'nm_karyawan=nm_karyawan')
    DataSet = q_kembali
    BCDToCurrency = False
    Left = 936
    Top = 272
  end
  object R_lap_kembali: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42147.908735706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 784
    Top = 264
    Datasets = <
      item
        DataSet = db_q_kembali
        DataSetName = 'db_q_kembali'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Top = 7.559060000000000000
          Width = 139.842610000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 582.047620000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DENDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 192.756030000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 325.039580000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL HARUS KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 449.764070000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TERLAMBAT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        DataSet = db_q_kembali
        DataSetName = 'db_q_kembali'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kembali'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_kembali."id_kembali"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 52.913420000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_karyawan'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_kembali."nm_karyawan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 192.756030000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_kembali."nm_pelanggan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 325.039580000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jml_kmb'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_kembali."jml_kmb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 381.732530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_hrs_kmb'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_kembali."tgl_hrs_kmb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 449.764070000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_kembali."tgl_kmb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 517.795610000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_kembali."terlambat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'denda'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[db_q_kembali."denda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 585.827150000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rp')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<db_q_kembali."denda">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object R_struk_kembali: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42150.481586030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 864
    Top = 264
    Datasets = <
      item
        DataSet = db_q_kaset
        DataSetName = 'db_q_detail'
      end
      item
        DataSet = db_q_kembali
        DataSetName = 'db_q_kembali'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 151.181200000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 128.504020000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 45.354360000000000000
          Top = 128.504020000000000000
          Width = 268.346630000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUDUL FILM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 313.700990000000000000
          Top = 128.504020000000000000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KATEGORI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 468.661720000000000000
          Top = 128.504020000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 162.519790000000000000
          Top = 37.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_kmb'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."tgl_kmb"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TANGGAL KEMBALI')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.149970000000000000
          Top = 37.795300000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_karyawan'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."nm_karyawan"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 434.645950000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 563.149970000000000000
          Top = 68.031540000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."nm_pelanggan"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 434.645950000000000000
          Top = 68.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 162.519790000000000000
          Top = 98.267780000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'terlambat'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."terlambat"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 7.559060000000000000
          Top = 98.267780000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TERLAMBAT')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 563.149970000000000000
          Top = 98.267780000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jml_kmb'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."jml_kmb"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 434.645950000000000000
          Top = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL KEMBALI')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 162.519790000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kembali'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."id_kembali"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'ID KEMBALI')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 162.519790000000000000
          Top = 68.031540000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_hrs_kmb'
          DataSet = db_q_kembali
          DataSetName = 'db_q_kembali'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_q_kembali."tgl_hrs_kmb"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Top = 68.031540000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TANGGAL HARUS KEMBALI')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 143.622140000000000000
          Top = 7.559060000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 143.622140000000000000
          Top = 68.031540000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 143.622140000000000000
          Top = 98.267780000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 544.252320000000000000
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 544.252320000000000000
          Top = 68.031540000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 544.252320000000000000
          Top = 98.267780000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 185.196970000000000000
          Top = 98.267780000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'HARI')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 574.488560000000000000
          Top = 128.504020000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DENDA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        DataSet = db_q_kaset
        DataSetName = 'db_q_detail'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 45.354360000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'judul_film'
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_detail."judul_film"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 313.700990000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kategori'
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_detail."kategori"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 468.661720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jml_sewa'
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_detail."jml_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_q_kaset
          DataSetName = 'db_q_detail'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[db_q_detail."denda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 578.268090000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'BUKTI KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 510.236550000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 480.000310000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<db_q_detail."jml_sewa">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 574.488560000000000000
          Top = 22.677180000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<db_q_detail."denda">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object R_blm_kembali: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42021.881841261600000000
    ReportOptions.LastChange = 42142.726267939810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClosePreview = R_blm_kembaliClosePreview
    Left = 784
    Top = 320
    Datasets = <
      item
        DataSet = db_q_kaset
        DataSetName = 'db_q_detail'
      end
      item
        DataSet = db_q_sewa
        DataSetName = 'db_q_sewa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 105.826837560000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Color = clWhite
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'AD RENTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
            000059080600000046DCC85B0000000473424954080808087C08648800000009
            7048597300000DD700000DD70142289B780000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A000019C2494441547801
            ED5C07585447D77E972E16502CB19BD8638DA8BFC4888A1A63AFC9676F58A2F1
            B326EA672F20A8585089620144A3B18B0DAC58016B88444594880511A4292075
            77FF779622CB3640D498C77DCED9995366EEBDEF9E2977EEDC95C8E5727CFABC
            1D02924F20BE1D80A2F42710050A6FC99F407C4B0045F14F200A14DE923F81F8
            96008AE2FF181025FC8813224BC8BA4831A5E0A0A8487539BF6BFB0703919809
            B004EBF1228DC9266423B221D940C186280109529997230D194CB3399DF93472
            0A59D8654C05A61F04D4F70A622EE00450254B972EDDA845CB16DDCA952D57A5
            9479A9F2E666E6A54B9B972E69666E56C2DCBCB469590B0BE3E791CFD3E2E3E3
            53E262E35EC7C6C526C6C5C525444747BF8C8A8A8ABEF9C7CD13E9B2F4DB4847
            1C417C454E200B80DF2BA0EF05448227A24D4499598D1A35ACDBB56FD7AB4183
            062D3AD874A8F1D5575F093DAFBDE074FEFCF98C93A74EC6DCB87123D4FF8ABF
            CFAB8457BE8CD728D6F4328BD388A688528AEF8EDE298859E019B76CD9B2AFE0
            7AF5EB35EFDEAD7BE5EAD5ABEB17F525050505C90E1F391C7FF3E6CD30FF00FF
            33119111470968188017E4D47709E63B0191E089BECE9851D6A157AF5E33478F
            1E6D55B97265D1CFF17ADE3D094057AD5E157EE0D0817D8CCE43043394478D21
            0B308BBCDF2C5210B3C03364936DD8B76FDF85C3870FEFD8B871E3623CF90F42
            67CE9C91AE5BBFEEE1319F63EE19D28C33EC3B1FF244E2C9E98C4C39D322A122
            039100EA152B56ACC2E0C1831D060E1AD8DBA6BD8D59919C611154B263C78EB4
            2D6E5BEF9CBF746E1381BCCC2A1F9293086491F4974502220134B0B1B1E93E62
            E4883543060FA94E99E7F8CFA28C8C0C2C5DBA3469ADCBFA4331B12F3CD8C4FF
            E419C61148316D62B6F0F45620122CD1F719F6E9D367CA8C193366B76AD5EA1F
            137D9A20D9BD6777C69C7973FD42431FAC871401F48B24BF55F32E348859009A
            0C1932649D9D9DDD308EB8863C998F82AE5EBD2A9B3869E2BD6BD7AEAD850CE7
            00840128F4A0532810B300B4983469D24E0707878EA6A6A62222791E1F0F3D8B
            78065B5BDBE73EA77C5CD8B48FF1CCEF9193D9BCE54C0B4405065100F8F9E79F
            5719376EDC6136E1A6940B74C07F92735A5A1A468F1DFD6AFB6FDB3711C8DF79
            6E77C8290505B230209A2E5AB4C867FEFCF96D7840CD949404040602376E00E1
            E140E3C640B36640DDBA809EB881D15CF47D5A643219FAFFF0FDCB835E07D612
            C83D3CF67D8298CA34DF542010197586E3C78F777376761E626868A8FE20E9BC
            75B5B3031C1C0091CFEB55B52AE0E60674EC98D7A25E8E0A076EFA00CF83018B
            EA40FDB640AD46EA7D0BA98D8D8D45F79EDDC3FDAFFA3B710AE4C56A9E12485E
            0873F9A07C834800F5070D1A346BD5AA550B2B54A860A0B6EEBB778141833223
            50AD439652C22E74C20460F56A40D38F215C4F6D078ECC64971F21A44C969802
            6D6600831764CA45F41D181828FF61E07F82EEDF0F71E2A87D8AD5BE209052A6
            3A295F20124049D7AE5D7B7314DEC65BB9926A6B4D49019A34014242D49AD52A
            E7CC0144D4AA33DE0E00D6DAD0924CCE4372CABD5C816E6399293ADAB77F9F6C
            DC841FCFC4C6C43813C8CBACF925811447635633E9045100D8A2458B0673E7CE
            3DDEB367CFAA1AABFAE517C0C949A359ADC18001EDEF0F346FAE6A5ED61BF85B
            B42C55934263580D58170688A846D17DEC96DAA52D5CBC7897549AEECA3E3290
            35EB1C68F203A2FEBC79F38E2F5EBCF85B56A89EC2C2809A350176D228E8E7EB
            AF81CBE247CF5550CE1FFFBFD5D9A73EC9A5CC9395539E7A937DE457CC142D75
            EDD1EDA5B7CFF1D504713B6B7EC4689432D548123A6836320C6D6C6C7A6FDAB4
            6977CD9A350D353AFEFE3B3070A046B35683911190C0B55491663BF2160D3F55
            A0144BD642E3CE73C4B7D6E25038D3C99327E5FD7EE8E79F9898E8C866CD8320
            8138899F4D6D85BA4034E064FADCAC59B35AAB2D9DAD9CC18E7EC58A6CA9E0A9
            980689E94FEE928BDA03CFCE41E3476606B84401B9C1D7E85C70C37F06FE2769
            CFBE3DBF321AB7B2742841D4788FAD114406A1184C467A78786C2A57AE9C3E2B
            D24C3D7A00478F6AB6EBB2ECD8C1D176B0B2D7B9DDC02E11DD1A02A0C5CFC0E8
            B7F8E1948FA6225DBF7E5DDEB95BE73F62636297321ACFD041E320A30D44A375
            EBD6F94F9C3891336456A18DA64C019C9DB57968B789C1A5552B559FAD04EA0A
            EB95E40982CADD81197B009362AA6534687CFD5EE1D65F217CEEA5FCA344BF2C
            89C5BFD4535BCA768C6D8A9B879B186036D32184D198CE5485D48228A2F0FBEF
            BF9FEAEEEEEE54BC7871894AA9BC0A4F4F60F8F0BCDAFCC9FA0CF257AF005353
            F5FE01C779D7730088BC0794A9C601CC1AE83EB6C0A3F2EEC3CF51B56C1838FA
            91DFD0E1D349709CDFE98D22572E343414D6EDDBDE79F62CDC8ED1E843533C81
            943355224D20EAAD5FBF3EE0A79F7E6AA1E4AD491093EC2FBFD464D5AE17734B
            717BA8DDEBADADBBBC2250BE4430EB91711221639A49272FC9B06251E74C41CD
            7766347A6C4486EC579A45DFF8A6301582D482C8E7210D8E1F3F7EAD499326F9
            6F2F234600DBB6A1C01F1F1FA0B3E68BC86F7DAF9F86C1DF750922826FA2914D
            3F34193F57A9E86F079EA19461207552F21B3A1BA08FD5F65DDF28F2E43C3D3D
            E5C3C78C380D99DC9E83CC1546624A1E17A880289AF2D0A143ED59F87F799DB5
            CA7171408306404484563725E358364B5757255561858B4B26E0ACD7869CE2E3
            571C43F9F66FC0D9BEEF298CA401B42B83E817581CCE0EEC63695147A9A9A9A8
            FB65DDF0474F1ED9F1BE7A3F7DA209A452935607A2DEEAD5AB4F4D9932C58605
            0A46972E01030664AEDAE82AD9AD1B47DF5D40C992BA3CF365DF37A8156E875C
            C9F1ED336A091A4F78138DDBF63C81ECF539409E81DC9FEB77CAC06545AFDC2A
            95FC8041035EEFDEBB5B0C30A249FF4D10959AB43A10CBF129593027D965546A
            CB8F223E1E983C1910838D3A7F019A5878B0B555672DB4EEAEC71AEC593F5551
            DECCB0047EDC1508931A3515B2F872DFFD18C9B13E2A20DE7A50111B57F5112E
            1A79CD5A67D9D45FA61E865CBE8CD1789320A6E5765602513465F1BC64EFDEBD
            ABF4C5A899DBB3A079B11011C0E673F52AF0F429D0B429D082E394951547D9C2
            FD3EBA4EE1C5F91388B87D0D75BA0C80C9E7B594DCB7EE7A8457CF0F53971989
            621D9102829F7C8ECD6BFA8AAC46E6B615D46D582F34363A661147E9A374541A
            A5F382A8B76CD9B2BD5CB1D65E2B6BF9D868CBCE304485EDE1696782C88C821E
            44D481DBBAFE8ABCB6AF6E3DBA251CF739BE8683CB56FA3D6134E634691510B7
            6CDDF2A7ED28DB8674FC57D1A61D0FF124643B9BB3F27CF9494C2378FCFA83CE
            6B9D347952FABA0D2E9E90C856220DF7B482B873E7CE4703070EACA2B3D68FCC
            61E3F6BF111AB44505C4885796D8E13A40E7D52C58B840BAD87EC941E8C99710
            C4BFB48168E1EBEBFB77BB76ED4AE9AC558743523270ED562A2EFA3F445CCC33
            A426472123231D86C616286956098D1B7E8EB67C4C5DA9BC8E8AB49833A45C44
            BF930EDF8B0F1119F914C9492F909E9604398C61646C0E63D3B2E8D3AD11DAB4
            34C506CF50DCBDB18120BE191308046252ACB073F3202D47C934AD5DBB563EF9
            97293E1C5CE673700964D98C4C0B6F9E2864E751BE7C794B3E8BBDC667C8921C
            6521322EEE0FF0D79FBED0933E825C164FE6D5E6A9472E2986546979484CDB63
            CD92FF43A912791C7488C7CE44E1C8D19390A4DD855C1A47EFCC2E2AF7F55089
            D48C32BCC7B68451F12F217949101946429FCDF119D6D8BD7570B6A831DDBF7F
            BFBCFFC0EFFD09E23CF68B7E3C4E4AB6734E9F2846E6D6AD5B0FE7F4C6DDD8D8
            38DB5EA034265E8E79F6A790FEEA146419B16ACBF2E04A7AB95C9F8B75AD3162
            682F74EF505AC9A64E484D9363FEB200C484FB2023E5913A971C9DD2B1F44A31
            0A93C8CA3FE86BBD4ED8EB3E24A78CA6CC5DDEDA366CDAE8AE4C2A5DC011FA04
            FD72D6189540ECD7AFDF9C7DFBF62DA1438169DFD1A73876EC28D213FC583633
            2A98D14AD9D30CE19426AB8C2A750663D5C2A61A9FA8DE087A0517572FCEF7CE
            108C54512CDFAC0468AE52E9465DB1DF73582E8DFA6C02178E6BD5ADF52C2A3A
            CA9ECD792FBD72EE5C94409C3061C26A171797C974281085FC9D047B475724C7
            0730DA95EE8874D6236EAB52F890EBF5EBD7789D520C3D066CC1A29FABAB944B
            4D03FA0EDB81C8076BC0DD67395C98F9AC12A0C57BE3E08EE12AC753A7A8DFB0
            7E4CF0BDE0156CCEDB698F603D72A66FEE9D45739E366D9AEBCA952BC708437E
            59269363ECD47D7811F61B8B28EA649A493C882223522EB523FE6502E2E362F8
            342001C9C9C910E0E58E46E15CB5FE341C3BE88046758D8498C31366DFC68665
            5F7325EB558E4E640CF8B08BCB75E0FE6F989B9BA37499CF605A4C5F98F2C5FA
            66FDE1F5DB08E4E7D3AC8565FC1F81375711440FF01682D7A5B860A5481C3972
            A4A39B9BDB0C3AE49BEC5707E0F21967F681714A65B8591D51513130AF32125F
            D4FE3F54AB5615A54A9AE061D85384DC7F826BBE33214D55DFA7B5EB730C67F6
            75CD69D6A72F2560C0A0D188792226CB4A875108156BFF17AD5A77571CA37AD5
            3278101AC175908778FAE0204A183D85B66835293B0847768D54D4A3ED4BFCD8
            5FD4A919FDE851981341DC4E5FF591F8EDB7DF4E3F71E2C40A3AE48B82435331
            73D61224C4F8299AB100EEC58B17100CC3DAE8D4E7576C59F50D3E2BA7A7549F
            782838DFE96F6CDDBC0ACF1FB828D984A0675801F31C2E61E1F45A48CF00ACBA
            ECC28DD383844999F5CBA0D5B76E58E7D819CD1B9B28DB28799D8CC37CFBDD88
            0AB147850A16303333A356994A7C361CC7768F5256AA9122232351AB7EED2789
            89098E5AFBC4A64D9BF63A7BF6EC41D134D4D4A3A29ABDF43A7C8F4CE6AF1E4E
            8E401A3708299C387D193AF1123CD73653889ABE4E9C8FC78081A3101F7150C5
            A56DCF1D38E7351857FF4CC737DF58213DF1868ACFD7DD0EE382570F469A8A29
            4711FB12F8E63B67DC0D9802131313F07911CA962D0BE3AC19887995D1F0DE6B
            9BE3AF2973F9F2657CD3AECD6D468BB87F3E413FD5D1994A3E0797D4E6A6F13B
            0D1B363410B22E1E3AE10476BA76555A2916651A5B6FC265EF3128612A24EDFC
            E3CC3FE0EA64CDBE2E51C9F18BA67608B93E078E2E8F30774A6D8EC6E94AF6CF
            6A4F81F7210734FD523502951C29B8EF89C4C41F7BE3755C00A54C2A59B2242C
            2C2C50BBD93C9CDCAF3B12DD3DDCE5A3C6DA5E26880BD89CD5CF1345D51C5C4C
            BD0E7B3DEED9A3A7859075B188960B47862ABB490C30C3EE3E96CDAE81FC7C12
            5F03F52C67209C835E6E7F63731B5C0B388595BFFA61DBDA36B94D8AFC0F637C
            B17B533BE4F7F375D79DF0F71EACE2DEA6FB6FB870444D5791C773F9F2E5F299
            F366E9BE6321887A9E9E9EF7B9B2FD459E3A5444D157D5B55C8087B7162BD9F4
            4D9BE2E4E92BB0B13252D26B13AC3A6F46C0C9B1CA2E7A25E1B8EE0E4E9CBA04
            DF4303956DD0C36CC760D8CF6484E6B1681207F041BF3AD0F30BE2ACFFCDCA58
            E6B4FC507EEE9DF5366EDCE83F6EDCB8969A4E265B7F3F8CFB972C3B71E27B1A
            B93F156A4EC4EDEBEB60619E5BAB3DDF6FE4111CF0E8A9E2643BED1AFCFC2E2B
            FA3325A341351C387A0B7D3A9B29A9B509531604C379717D1597F6BD77E2ECC1
            BC3F928A9BD80C9AB6D5C37D7BBE5671A64F9FBEC1C9C9294F58A8569A92CAFD
            9A9633F1F8F67225A351492B5CBC78112D9BE82BE9B509D6DDB7E2E2B1D12A2E
            C3FEEB87870F4371F1E850659BC4100B9D82B160DA17CA7A2D9218E876B8B451
            F11832E12CB6BBB457D1E75558B6B48CE7BB84EBD81F6EA5ED09E78832A60ACA
            99270A89CD59D2BC79F35E7CD2B79FA3989ED069E3D65DDCE0E763ABEC2231C6
            E2D5F7316F725565BD0649740B759ACD455890BD8A870051264BC30E9776C8FB
            19F2D3056C5FDF26AF5AA3DCB6E72E357D9F1EE62C0B81DD8C9A1ACB09C3858B
            17D0A17387DB196919CB78DF7C94BA7882A8986833FFE68E45088209A431FBC5
            DBEC17B5D74CE7813F9EC1EFAE1D9953A696DF7971EAD113C646CA7A75D2CCA5
            0FE0B4D01AB2F40815B300B17AB5F258F24B5DDAA4E43754BDB11DCE1E99892F
            AA19BC516AC8EDF77E89D1B6C338953AACE4A167521FDE276FE2DB36264AFABC
            C28C59333256AC763ACA9159F73316519820EACD9933E7776EE8FC5EC8DA7886
            FD7DAC985B47C54562500E13FFE787B58B6BA9D8722B6EFE9582EE7D6721E2BE
            736E754E5E80683BA4196CDA59429A7C3B479F99D143FBFEBE38BBD73A53D4F0
            2D46FF36DD7721D0577504AE5C6F1A6E5F5D09B3921A0A67A9DBDAB44BBC70F1
            FC6636E55FA9CAD7D33E49DBB66D27787B7BAF1737FA2CA491FC6FA6A067DF1F
            11FD689B8A4FE98A5DD07F8823D6D935561B91DBF6BDC0D2E59E08B9F6B34AD9
            6C8500D17585159A77D888DB97C767AB73520393CFD1A18F3B36AFFC06552BEA
            E7E8B33337829231E97F3EF0F31ECA796852B63A276DDBE714CE1DE89823ABCB
            3C78F0004D5B7CF53029297139EF54F6D32767F586790529F5890A0DBF188D65
            B808799B2F397E46512B4D987D0F1B967F0D486355FDF44AA159BBF57C69A031
            5A7C5511952A14C339BF70DC090EC78513F6488AF1552D934B2340DCB6D60A3B
            0E4463FCD8FE488C399FCB9A9DD5C7175F2D459B36D6F8B25E6558362E8B0B01
            91080E09C7F933DB1119EA9AEDA89456AEF7338E1FB447E37A464AFABCC2C2C5
            0B658BEC179FE40E08474662FE7640884A08A2DEECD9B30FD8DBDBF712B2364E
            4B07AC7B1EC4159FBEDADC00838A809E1990769F7E52B26ECA0651780E187F1D
            BB5D5BF3CE254D88EA993F1A0CABF3180FE897ACDE875A03931A986DE78B45D3
            6B40D7A743A70E8967CF9DDB52E0BD380451D2A851232BAEE89CE068AD73E1DE
            FFE66BF4FD61129E876ED5754E05B2E70631FE15D0B6FB06DCBA38A14075A873
            B6E97712A7F776E26DAE3AEB1B9DE7764FF9A831B6D7A419196B382AFBD0A234
            2A535690DAE62C2C04D270EAD4A93BF9CA457F21EBE295AE8FF846C50A84DF73
            D1E59A6F7B6E1045216FDF78FC32771B6EFB4DA72825179018A956DFB961C786
            5E3A4775A9540AEB76D6097E017E6E6CC69B79A482ED4F6401FE4A12498D1A35
            1A6CDEBCF942C78E1D4B0B9D2EBEF9572A3B726F76E4A3B21E1EE92A9165D72F
            CF3E352A4B7893E4055158A2E3B841769A3F4E1CF80929AFFE10AA7CB145955E
            1830CC1EAB16368091A1EE226B9CD7C8A7FE32ED12FB42F13AC6199628F84E59
            1612401A8C1E3DDA8D1BDF873232854A278BC9F30CBB3BF07473446CF8218E8A
            091ACB9428FB2D5AB49988A4F44AB87AB4B98A9F3A10B39DD67B4460B5B33BFE
            0E5AC91F40CDA096ED68501DCDDACC81FDFC1FF05D3BB36CADD654ACBAB76A6D
            157F2BE84F31ADD94A67B12F3183A95AD2D89C8537819370C9BD2A41BCCA9DB3
            15842EBF1CFA588683DE11B87B2F1C8F1F3F213FC6EBA43894B1A8C8F5BCF228
            5FA112C60D6F8276AD4C316C7210BC8F6C52A9BA4B8FB1F0746EA4A2CF56C4C4
            035E27A21118F414618F1EF3184F11FD22029F55AC86AA7CFDAD7AF56A68DDB2
            0ABAD994E22383EC52BAD3050BF8A0DE61892FA3702DFBC2F32C91B376C8BC0A
            6905517813487DEE88584E20A796285142227485653192AB6B4AC9297CF32C4D
            B55671C7534CFBCD844A214DC75071D4A078FCF8313A76EEF4FCFE83908DEC0B
            B7D3ED116FF1A44C3592840E1A8DC240100570261C648EF221960D65A1FE57B2
            78F2C81725134FFB9EDDC51D07EE04319017FAF66F54B112D1374AF862F86776
            76766708667DA1FB37F248DB51691E3B3C8E402A776733BECC6BD43898D09643
            3A2331DB9311A8CFC7062D972C5972A877EFDE1C4EB32DFF8ED4C1D1413A7FD1
            824B19E9E95B09E0295E55D1BE65CA0A1544200D3B75EA34847B185DF8B66931
            85F25FF075F0D041F9E87163EEC4C6C56CE1FDB1172FE9DDBCEFCC8A1544208D
            39D0D8B17F9C56B162453D85F223FE0AFC33107C05ED69C8FD10D107EEE1A5BC
            DB37EF790045FFC8D4848B13CBF9FAEE1846A431E58F92B8F82C9F3EF3E7A7C1
            C177777210D9CB8BB843D63990D04789F2DD27E62EC568142376316B6BEB09DC
            7A3287FF07669EDBFE31E4F9170CD2A5CB1CEE44BD88FC9D007AF39CEF91DFCF
            BF91F0400ACA02D2B87EFDFA5DF9606BF5E4C993AB290CFFF02F714F3C65EA94
            B4ADDBDC2E2527BEDEFBC1FE17271BA72C200DB93DA3FE28DB511E8E0E8E4D8D
            8CB4AFCF6597FD10A9D8E6326CC4F0A423C78F1EE58E83FD1C8503781E91E474
            CE97E54C0B45856ACE798F44300DA82B3768F020676E9AEF666363634AF91F45
            3B77ED9439AF5D1B71F5FAB57DBCA117FFADF8274FF0C3FF57184F228708A418
            A98B73C46EC341670E9B780BAE491AE6387CA08CEFB973B295AB9DE24E9C3A75
            3A23234DFCFDDF159ECA43F23FEB5FEB78420A229062C011C099D7AD5FB747DF
            DE7DA7F07DE92F2B55AA240056F8BCAFAF3B77EEC81D9639261EF23AE497F83A
            C187C7F5E71C508017CFFC5B355F9657A22269CE4A3552C802534C7D2C5A59B5
            1AD1AD6BB7915DBA74A9616969A94FF33B23F66BE0DB0FB2835E0793F61DD87F
            EBF9F388E33CD8258EBEA14C63C8A9F491332D527A2720669F21C1141128C02C
            6756C6AC756BABD6839B356BD69053A34AFC535E433D3D61CEF62E5C9A9E9E8E
            23478EC87CCF9F4BBC7AEDCA53EE52F0E3BF7606F23D8C208217868FF53F6579
            E24A9405A618B6C5AAA8995131A33AADBF6E3DACB965F326B56AD5AE54A96245
            93BA75EB1A54A95245B1175BA9702E416C59164B557783EF4A9F3D8B900605DD
            7A1570F5CAE3A0BF6E5D80047F11B87B042E8A455E66711A234FC6FC3BA5771A
            8979CF9C608A3E53B0E8374BD25E0A8628CDB95A0D6313E37A152B54ACC3ED2B
            E5CA5A942D55A68C4589E2C54D4DE3E2E333F85F5EC9D12F5E2444C744C7F07F
            B79F4865D2088216CD7291DC2016C1BE2E8E75F15116C4327A3AF3C44EFCB90E
            73EF81DE2B88B9AF2717A0A24D8B266F42BB885601B0983219C0082215A07FFA
            C77782A393B240157E0234916A63C5E020C24D9BD3FBB27DB0487C5F17F83E8E
            F309C42240F913889F402C02048AA08A4F91F809C42240A008AAF87F66F932F4
            B23BA52B0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape1: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110236220000000000
          Height = 3.779527560000000000
          ShowHint = False
          Color = clWindowText
        end
        object Memo10: TfrxMemoView
          Left = 92.598485000000000000
          Top = 45.354360000000000000
          Width = 540.472790000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Alamat : Jln. Cempaka Sari No.34 Barat VI Banjarbaru. No Telp. (' +
              '0271) 6577314'
            'Website : http://Novian-project.ga email : adrental@gmail.com')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KARYAWAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BIAYA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 173.858380000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 298.582870000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 355.275820000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL HARUS KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 411.968770000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JAMINAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 483.779840000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMOR JAMINAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 574.488560000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL SEWA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        DataSet = db_q_sewa
        DataSetName = 'db_q_sewa'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."id_sewa"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 41.574830000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_karyawan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_sewa."nm_karyawan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 173.858380000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[db_q_sewa."nm_pelanggan"]')
          ParagraphGap = 3.000000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."tgl_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 355.275820000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_hrs_kmb'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."tgl_hrs_kmb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 411.968770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jaminan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[db_q_sewa."jaminan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 483.779840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_jaminan'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          Memo.UTF8 = (
            '[db_q_sewa."no_jaminan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 574.488560000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'total_sewa'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.0m'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_q_sewa."total_sewa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'biaya'
          DataSet = db_q_sewa
          DataSetName = 'db_q_sewa'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[db_q_sewa."biaya"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 623.622450000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rp')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clWindowFrame
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PELANGGAN BELUM MENGEMBALIKAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 52.913420000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = clAppWorkSpace
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Top = 22.677180000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clAppWorkSpace
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<db_q_sewa."biaya">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 574.488560000000000000
          Top = 22.677180000000000000
          Width = 41.574830000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<db_q_sewa."total_sewa">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object q_kmb_tmbh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from q_detail ;')
    Left = 264
    Top = 304
  end
  object Ds_q_kmb_tmbh: TDataSource
    DataSet = q_kmb_tmbh
    Left = 328
    Top = 304
  end
  object ADO_kmb_tmbh: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'no'
    MasterFields = 'no'
    MasterSource = Ds_q_kmb_tmbh
    TableName = 'detail'
    Left = 416
    Top = 304
  end
  object total_film: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from q_Detail')
    Left = 536
    Top = 184
  end
  object total_plg: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from q_detail;')
    Left = 592
    Top = 184
  end
end
