part of 'work_cubit.dart';

abstract class WorkState extends Equatable {
  const WorkState();

  @override
  List<Object> get props => [];
}

class WorkInitial extends WorkState {}

class WorkLoaded extends WorkState {
  final List<WorkModel> works;

  WorkLoaded(this.works);

  @override
  List<Object> get props => [works];
}

class WorkLoadingFailed extends WorkState {
  final String message;

  WorkLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
