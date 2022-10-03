import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/task_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/home_repository.dart';

part 'tasks_cubit.freezed.dart';

// ignore: unused_element
// const _tag = 'TasksCubit';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit(
    this._homeRepository,
  ) : super(const TasksState.initialState());
  final HomeRepository _homeRepository;

  Future<void> getObjects() async {
    emit(const TasksState.loadingState());

    final result = await _homeRepository.getObjects();

    result.fold(
      (l) {
        emit(TasksState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(TasksState.loadedState(objects: r));
      },
    );
  }

  // @override
  // void onChange(Change<LanguageState> change) {
  //   print(change);
  //   super.onChange(change);
  // }
}

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initialState() = _InitialState;

  const factory TasksState.loadedState({
    required List<TaskDTO> objects,
  }) = _LoadedState;

  const factory TasksState.loadingState() = _LoadingState;

  const factory TasksState.errorState({
    required String message,
  }) = _ErrorState;
}
