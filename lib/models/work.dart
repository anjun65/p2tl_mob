part of 'models.dart';

class WorkModel extends Equatable {
  final int id;
  final String user;
  final String idPelanggan;
  final String namaPelanggan;
  final String latitude;
  final String longitude;
  final String alamat;
  final String tarif;
  final String daya;
  final String rbm;
  final String lgkh;
  final String fkm;
  final String keteranganP2tl;
  // final baPemeriksaan ba_pemeriksaan;
  final String createdAt;
  final String updatedAt;

  WorkModel({
    this.id,
    this.user,
    this.idPelanggan,
    this.namaPelanggan,
    this.latitude,
    this.longitude,
    this.alamat,
    this.tarif,
    this.daya,
    this.rbm,
    this.lgkh,
    this.fkm,
    this.keteranganP2tl,
    // this.ba_pemeriksaan,
    this.createdAt,
    this.updatedAt,
  });

  factory WorkModel.fromJson(Map<String, dynamic> data) => WorkModel(
        id: data['id'],
        user: data['users_id'],
        idPelanggan: data['id_pelanggan'],
        namaPelanggan: data['nama_pelanggan'],
        latitude: data['latitude'],
        longitude: data['longitude'],
        alamat: data['alamat'],
        tarif: data['tarif'],
        daya: data['daya'],
        rbm: data['rbm'],
        lgkh: data['lgkh'],
        fkm: data['fkm'],
        keteranganP2tl: data['keteranganP2tl'],
        // ba_pemeriksaan: data['ba_pemeriksaan'],
      );

  WorkModel copyWith({
    int id,
    String user,
    String idPelanggan,
    String namaPelanggan,
    String latitude,
    String longitude,
    String alamat,
    String tarif,
    String daya,
    String rbm,
    String lgkh,
    String fkm,
    // baPemeriksaan ba_pemeriksaan,
    String keteranganP2tl,
  }) {
    return WorkModel(
        id: id ?? this.id,
        user: user ?? this.user,
        idPelanggan: idPelanggan ?? this.idPelanggan,
        namaPelanggan: namaPelanggan ?? this.namaPelanggan,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        alamat: alamat ?? this.alamat,
        tarif: tarif ?? this.tarif,
        daya: daya ?? this.daya,
        lgkh: lgkh ?? this.lgkh,
        rbm: fkm ?? this.fkm,
        // ba_pemeriksaan: ba_pemeriksaan ?? this.ba_pemeriksaan,
        keteranganP2tl: keteranganP2tl ?? this.keteranganP2tl);
  }

  @override
  List<Object> get props => [
        id,
        user,
        idPelanggan,
        namaPelanggan,
        latitude,
        longitude,
        alamat,
        tarif,
        daya,
        rbm,
        lgkh,
        fkm,
        // ba_pemeriksaan,
        keteranganP2tl,
      ];
}
