part of 'pages.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key key}) : super(key: key);

  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(1.073423, 104.025572),
    zoom: 10.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(1.073423, 104.025572),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  List<LatLng> _listLatLng = [
    LatLng(1.073423, 104.025572),
    LatLng(1.073423, 104.025572),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WorkCubit, WorkState>(
        builder: (_, state) => (state is WorkLoaded)
            ? GoogleMap(
                mapType: MapType.terrain,
                markers: state.works
                    .map((e) => customMarker(
                        LatLng(e.latitude.toDouble(), e.longitude.toDouble()),
                        e.id,
                        e.idPelanggan,
                        e.namaPelanggan,
                        e.alamat,
                        e.tarif,
                        e.daya,
                        e.rbm,
                        e.lgkh,
                        e.fkm,
                        e.keteranganP2tl))
                    .toSet(),
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              )
            : Center(child: loadingIndicator),
      ),
    );
  }

  Marker customMarker(
      LatLng e,
      int id,
      String idPelanggan,
      String namaPelanggan,
      String alamat,
      String tarif,
      String daya,
      String rbm,
      String lgkh,
      String fkm,
      String keteranganP2tl) {
    return Marker(
      markerId: MarkerId(e.hashCode.toString()),
      position: e,
      onTap: () {
        Get.to(Form1Page(
          transaction: WorkModel(
              id: id,
              idPelanggan: idPelanggan,
              namaPelanggan: namaPelanggan,
              alamat: alamat,
              tarif: tarif,
              daya: daya,
              rbm: rbm,
              lgkh: lgkh,
              fkm: fkm,
              keteranganP2tl: keteranganP2tl),
          onBackButtonPressed: () {
            Get.back();
          },
        ));
      },
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
