import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/task_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/home_repository.dart';

part 'assessment_cubit.freezed.dart';

// ignore: unused_element
// const _tag = 'TasksCubit';

class AssessmentsCubit extends Cubit<AssessmentState> {
  AssessmentsCubit(
    this._homeRepository,
  ) : super(const AssessmentState.initialState());
  final HomeRepository _homeRepository;

  Future<void> getAssessments({
    required String name,
  }) async {
    emit(const AssessmentState.loadingState());

    final result = await _homeRepository.getAssessments(
      name: name,
    );

    result.fold(
      (l) {
        emit(AssessmentState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(AssessmentState.loadedState(tasks: r));
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
class AssessmentState with _$AssessmentState {
  const factory AssessmentState.initialState() = _InitialState;

  const factory AssessmentState.loadedState({
    required List<TaskDTO> tasks,
  }) = _LoadedState;

  const factory AssessmentState.loadingState() = _LoadingState;

  const factory AssessmentState.errorState({
    required String message,
  }) = _ErrorState;
}
