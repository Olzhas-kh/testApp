import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/seats_count_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'dorm_card_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'DormCardCubit';

class DormCardCubit extends Cubit<DormCardState> {
  DormCardCubit(
    this._hostelRepository,
  ) : super(const DormCardState.initialState());
  final HostelRepository _hostelRepository;

  // Future<void> getFreeSeatsCount({
  //   required int catId,
  //   required String gender,
  // }) async {
  //   emit(const DormCardState.loadingState());

  //   final result = await _hostelRepository.getFreeSeatsCount(
  //     catId: catId,
  //     gender: gender,
  //   );

  //   result.fold(
  //     (l) {
  //       emit(DormCardState.errorState(message: mapFailureToMessage(l)));
  //     },
  //     (r) {
  //       emit(DormCardState.loadedState(seatsCount: r));
  //     },
  //   );
  // }

  // @override
  // void onChange(Change<LanguageState> change) {
  //   print(change);
  //   super.onChange(change);
  // }
}

@freezed
class DormCardState with _$DormCardState {
  const factory DormCardState.initialState() = _InitialState;

  const factory DormCardState.loadedState({
    required SeatsCountDTO seatsCount,
  }) = _LoadedState;

  const factory DormCardState.loadingState() = _LoadingState;

  const factory DormCardState.errorState({
    required String message,
  }) = _ErrorState;
}
