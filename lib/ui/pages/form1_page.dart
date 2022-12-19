part of 'pages.dart';

class Form1Page extends StatefulWidget {
  final WorkModel transaction;
  final Function onBackButtonPressed;
  final baPemeriksaan pemeriksaan;

  Form1Page({this.onBackButtonPressed, this.transaction, this.pemeriksaan});

  bool isLoading = false;

  @override
  _Form1PageState createState() => _Form1PageState();
}

class _Form1PageState extends State<Form1Page> {
  // TextEditingController address1Controller = TextEditingController();
  // TextEditingController address2Controller = TextEditingController();

  // String selectedProvince;
  // String selectedCity;

  // TextEditingController postalCodeController = TextEditingController();
  // TextEditingController mobileController = TextEditingController();

  List<String> keterangan;
  String selectedKeterangan;
  String name;
  i.File uploadFile;

  void initState() {
    super.initState();

    keterangan = ['BA', 'RK', 'TO', 'Normal'];
    selectedKeterangan = keterangan[0];
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Form 1',
      subtitle: "Detail Pelanggan",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ID Pelanggan',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.idPelanggan,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alamat',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.alamat,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nama Pelanggan',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.namaPelanggan,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tarif',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.tarif,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daya',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.daya,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'RBM',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.rbm,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LGKH',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.lgkh,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FKM',
                  style: greyFontStyle,
                ),
                Text(
                  widget.transaction.fkm,
                  style: blackFontStyle3,
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
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
            child: DropdownButton(
                value: selectedKeterangan,
                isExpanded: true,
                underline: SizedBox(),
                items: keterangan
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: blackFontStyle3,
                        )))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedKeterangan = item;
                  });
                }),
          ),
          GestureDetector(
            onTap: () async {
              FilePickerResult result = await FilePicker.platform
                  .pickFiles(type: FileType.any, allowMultiple: false);

              if (result != null) {
                uploadFile = i.File(result.files.single.path);
                name = result.files.first.name;
              } else {
                // User canceled the picker
              }
            },
            child: Container(
                width: 110,
                height: 110,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: (uploadFile != null)
                    ? Container(
                        child: Text(name),
                      )
                    : Container(
                        child: Text("Upload BA"),
                      )),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: RaisedButton(
              onPressed: () async {
                // setState(() {
                //   isLoading = true;
                // });

                String keterangan = await context.bloc<WorkCubit>().submitWork(
                    widget.transaction.copyWith(
                        id: widget.transaction.id,
                        keteranganP2tl: selectedKeterangan));

                // String ba = await context
                //     .bloc<baPemeriksaanCubit>()
                //     .submitbaPemeriksaan(widget.transaction.id,
                //         uploadFile: uploadFile);

                // if (ba != null) {
                //   print('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW');
                // }
                if (keterangan != null) {
                  Get.to(MainPage());
                } else {
                  Get.snackbar("", "",
                      backgroundColor: "00D100".toColor(),
                      icon: Icon(MdiIcons.closeCircleOutline,
                          color: Colors.white),
                      titleText: Text(
                        'Perubahan Berhasil',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      messageText: Text(
                        'Data Tersimpan',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ));
                }
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: mainColor,
              child: Text(
                'Ubah',
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
