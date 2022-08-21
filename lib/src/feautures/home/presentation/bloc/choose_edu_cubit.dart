import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/education_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'choose_edu_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'ChooseEduCubit';

class ChooseEduCubit extends Cubit<ChooseEduState> {
  ChooseEduCubit(
    this._hostelRepository,
  ) : super(const ChooseEduState.initialState());
  final HostelRepository _hostelRepository;

  Future<void> getEducationDegrees() async {
    emit(const ChooseEduState.loadingState());

    final result = await _hostelRepository.getEducationDegrees();

    result.fold(
      (l) {
        emit(ChooseEduState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(ChooseEduState.degreesState(degress: r));
      },
    );
  }

  Future<void> getEducationCategories({
    required int degreeId,
  }) async {
    emit(const ChooseEduState.loadingState());

    final result =
        await _hostelRepository.getEducationCategories(degreeId: degreeId);

    result.fold(
      (l) {
        emit(ChooseEduState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(ChooseEduState.categoriesState(categories: r));
      },
    );
  }
}

@freezed
class ChooseEduState with _$ChooseEduState {
  const factory ChooseEduState.initialState() = _InitialState;

  const factory ChooseEduState.degreesState({
    required List<EducationDTO> degress,
  }) = _DegreesState;

  const factory ChooseEduState.categoriesState({
    required List<EducationDTO> categories,
  }) = _CategoriesState;

  const factory ChooseEduState.loadingState() = _LoadingState;

  const factory ChooseEduState.errorState({
    required String message,
  }) = _ErrorState;
}
