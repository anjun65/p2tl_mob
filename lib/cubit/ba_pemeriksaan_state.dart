part of 'ba_pemeriksaan_cubit.dart';

abstract class baPemeriksaanState extends Equatable {
  const baPemeriksaanState();

  @override
  List<Object> get props => [];
}

class baPemeriksaanInitial extends baPemeriksaanState {}

class baPemeriksaanLoaded extends baPemeriksaanState {
  final List<baPemeriksaan> bapemeriksaans;

  baPemeriksaanLoaded(this.bapemeriksaans);

  @override
  List<Object> get props => [bapemeriksaans];
}

class baPemeriksaanLoadingFailed extends baPemeriksaanState {
  final String message;

  baPemeriksaanLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
