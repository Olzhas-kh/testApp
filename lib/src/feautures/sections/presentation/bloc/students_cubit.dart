import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/sections/data/model/document_dto.dart';
import 'package:narxoz/src/feautures/sections/data/repository/student_repository.dart';

part 'students_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'StudentsCubit';

class StudentsCubit extends Cubit<StudentsState> {
  StudentsCubit(
    this._studentRepository,
  ) : super(const StudentsState.initialState());
  final StudentRepository _studentRepository;

  Future<void> getDocumentCats() async {
    emit(const StudentsState.loadingState());

    final result = await _studentRepository.getDocumentCats();

    result.fold(
      (l) {
        emit(StudentsState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(StudentsState.loadedState(documentCategories: r));
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
class StudentsState with _$StudentsState {
  const factory StudentsState.initialState() = _InitialState;

  const factory StudentsState.loadedState({
    required List<DocumentDTO> documentCategories,
  }) = _LoadedState;

  const factory StudentsState.emptyState() = _EmptyState;

  const factory StudentsState.loadingState() = _LoadingState;

  const factory StudentsState.errorState({
    required String message,
  }) = _ErrorState;
}
