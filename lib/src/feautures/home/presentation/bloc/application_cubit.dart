import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/question_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'application_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'ApplicationCubit';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit(
    this._hostelRepository,
  ) : super(const ApplicationState.initialState());
  final HostelRepository _hostelRepository;

  Future<void> getCategoryQuestions({
    required int catId,
  }) async {
    emit(const ApplicationState.loadingState());

    final result = await _hostelRepository.getCategoryQuestions(
      catId: catId,
    );

    result.fold(
      (l) {
        emit(ApplicationState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(ApplicationState.loadedState(questions: r));
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
class ApplicationState with _$ApplicationState {
  const factory ApplicationState.initialState() = _InitialState;

  const factory ApplicationState.loadedState({
    required List<QuestionDTO> questions,
  }) = _LoadedState;

  const factory ApplicationState.loadingState() = _LoadingState;

  const factory ApplicationState.errorState({
    required String message,
  }) = _ErrorState;
}
