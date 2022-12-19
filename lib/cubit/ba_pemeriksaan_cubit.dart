import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:p2tl/models/models.dart';
import 'package:p2tl/services/services.dart';

import 'dart:io';
part 'ba_pemeriksaan_state.dart';

class baPemeriksaanCubit extends Cubit<baPemeriksaanState> {
  baPemeriksaanCubit() : super(baPemeriksaanInitial());

  Future<void> getbaPemeriksaans() async {
    ApiReturnValue<List<baPemeriksaan>> result =
        await baPemeriksaanServices.getbaPemeriksaans();

    print(result);
    if (result.value != null) {
      emit(baPemeriksaanLoaded(result.value));
    } else {
      emit(baPemeriksaanLoadingFailed(result.message));
    }
  }

  Future<String> submitbaPemeriksaan(int works_id, {File uploadFile}) async {
    print('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW');
    print(uploadFile);
    print('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW');
    ApiReturnValue<baPemeriksaan> result = await baPemeriksaanServices
        .submitbaPemeriksaan(works_id, uploadFile: uploadFile);

    if (result.value != null) {
      emit(baPemeriksaanLoaded(
          (state as baPemeriksaanLoaded).bapemeriksaans + [result.value]));
      return result.value.path_ba_pemeriksaan;
    } else {
      return null;
    }
  }
}
