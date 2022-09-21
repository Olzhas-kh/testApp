import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/feautures/auth/data/repository/auth_repository.dart';

part 'students_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'BannersCubit';

class StudentsCubit extends Cubit<StudentsState> {
  StudentsCubit(
    this._authRepository,
  ) : super(const StudentsState.initialState());
  final AuthRepository _authRepository;

  // @override
  // void onChange(Change<LanguageState> change) {
  //   print(change);
  //   super.onChange(change);
  // }
}

@freezed
class StudentsState with _$StudentsState {
  const factory StudentsState.initialState() = _InitialState;

  const factory StudentsState.loadedState() = _LoadedState;

  const factory StudentsState.emptyState() = _EmptyState;

  const factory StudentsState.loadingState() = _LoadingState;

  const factory StudentsState.errorState({
    required String message,
  }) = _ErrorState;
}
