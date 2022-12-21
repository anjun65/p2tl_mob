part of 'pages.dart';

class FormLangsungDataPemeriksaanTerminal extends StatefulWidget {
  final Function onBackButtonPressed;
  FormLangsungDataPemeriksaanTerminal({this.onBackButtonPressed});

  bool isLoading = false;

  @override
  _FormLangsungDataPemeriksaanTerminalState createState() =>
      _FormLangsungDataPemeriksaanTerminalState();
}

class _FormLangsungDataPemeriksaanTerminalState
    extends State<FormLangsungDataPemeriksaanTerminal> {
  List<String> peralatan;
  List<String> segel;
  List<String> post_peralatan;
  List<String> post_segel;

  TextEditingController nomor_tahun_kode_segel = TextEditingController();
  TextEditingController post_nomor_tahun_kode_segel = TextEditingController();
  TextEditingController keterangan = TextEditingController();

  String selectedperalatan;
  String selectedsegel;
  String selectedpost_peralatan;
  String selectedpost_segel;

  void initState() {
    super.initState();

    peralatan = ['Ada', 'Tidak Ada'];
    segel = ['Ada', 'Tidak Ada'];
    post_peralatan = ['Ada', 'Tidak Ada'];
    post_segel = ['Ada', 'Tidak Ada'];

    selectedperalatan = peralatan[0];
    selectedsegel = segel[0];
    selectedpost_peralatan = post_peralatan[0];
    selectedpost_segel = post_segel[0];
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Form Phase 1',
      subtitle: "Terminal KWH Meter",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Kondisi Ketika Pemeriksaan",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Peralatan",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: DropdownButton(
                value: selectedperalatan,
                isExpanded: true,
                underline: SizedBox(),
                items: peralatan
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: blackFontStyle3,
                        )))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedperalatan = item;
                  });
                }),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Segel",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: DropdownButton(
                value: selectedsegel,
                isExpanded: true,
                underline: SizedBox(),
                items: segel
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: blackFontStyle3,
                        )))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedsegel = item;
                  });
                }),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Nomor, Tahun, Kode, Segel",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: nomor_tahun_kode_segel,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Masukkan Nomor, Tahun, Kode, Segel'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Keterangan",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: keterangan,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Masukkan Keterangan'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Kondisi Setelah Pemeriksaan",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Peralatan",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: DropdownButton(
                value: selectedpost_peralatan,
                isExpanded: true,
                underline: SizedBox(),
                items: post_peralatan
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: blackFontStyle3,
                        )))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedpost_peralatan = item;
                  });
                }),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Segel",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: DropdownButton(
                value: selectedpost_segel,
                isExpanded: true,
                underline: SizedBox(),
                items: post_segel
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: blackFontStyle3,
                        )))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedpost_segel = item;
                  });
                }),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Nomor, Tahun, Kode, Segel",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: post_nomor_tahun_kode_segel,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Masukkan Nomor, Tahun, Kode, Segel'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 24, 0, 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: RaisedButton(
              onPressed: () {
                Get.to(FormLangsungDataPemeriksaanPelindungKwhMeter(
                  onBackButtonPressed: () {
                    Get.back();
                  },
                ));
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: mainColor,
              child: Text(
                'Selanjutnya',
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
