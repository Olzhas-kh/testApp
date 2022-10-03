import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/home_repository.dart';

part 'schedule_cubit.freezed.dart';

// ignore: unused_element
// const _tag = 'ScheduleCubit';

class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit(
    this._homeRepository,
  ) : super(const ScheduleState.initialState());
  final HomeRepository _homeRepository;

  Future<void> getSchedule() async {
    emit(const ScheduleState.loadingState());

    final result = await _homeRepository.getSchedule();

    result.fold(
      (l) {
        emit(ScheduleState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(ScheduleState.loadedState(schedules: r));
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
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initialState() = _InitialState;

  const factory ScheduleState.loadedState({
    required List<ScheduleDTO> schedules,
  }) = _LoadedState;

  const factory ScheduleState.loadingState() = _LoadingState;

  const factory ScheduleState.errorState({
    required String message,
  }) = _ErrorState;
}
