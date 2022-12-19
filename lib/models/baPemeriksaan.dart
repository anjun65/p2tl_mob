part of 'models.dart';

class baPemeriksaan extends Equatable {
  final int id;
  final int works_id;
  final String path_ba_pemeriksaan;

  baPemeriksaan({
    this.id,
    this.works_id,
    this.path_ba_pemeriksaan,
  });

  factory baPemeriksaan.fromJson(Map<String, dynamic> data) => baPemeriksaan(
        id: data['id'],
        works_id: data['works_id'],
        path_ba_pemeriksaan: data['path_ba_pemeriksaan'],
      );

  baPemeriksaan copyWith({
    int id,
    int works_id,
    String path_ba_pemeriksaan,
    String uploadFile,
  }) {
    return baPemeriksaan(
      id: id ?? this.id,
      works_id: works_id ?? this.works_id,
      path_ba_pemeriksaan: path_ba_pemeriksaan ?? this.path_ba_pemeriksaan,
    );
  }

  @override
  List<Object> get props => [
        id,
        works_id,
        path_ba_pemeriksaan,
      ];
}
