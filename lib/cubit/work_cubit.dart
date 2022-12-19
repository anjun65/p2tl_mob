import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:p2tl/models/models.dart';
import 'package:p2tl/services/services.dart';

part 'work_state.dart';

class WorkCubit extends Cubit<WorkState> {
  WorkCubit() : super(WorkInitial());

  Future<void> getWorks() async {
    ApiReturnValue<List<WorkModel>> result = await WorkServices.getWorks();

    print(result);
    if (result.value != null) {
      emit(WorkLoaded(result.value));
    } else {
      emit(WorkLoadingFailed(result.message));
    }
  }

  Future<String> submitWork(WorkModel transaction) async {
    ApiReturnValue<WorkModel> result =
        await WorkServices.submitWork(transaction);

    if (result.value != null) {
      emit(WorkLoaded((state as WorkLoaded).works + [result.value]));
      return result.value.keteranganP2tl;
    } else {
      return null;
    }
  }
}
