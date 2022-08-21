import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'hostel_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'HostelCubit';

class HostelCubit extends Cubit<HostelState> {
  HostelCubit(
    this._hostelRepository,
  ) : super(const HostelState.initialState());
  final HostelRepository _hostelRepository;

  Future<void> getInfo() async {
    emit(const HostelState.loadingState());

    final result = await _hostelRepository.getInfo();

    result.fold(
      (l) {
        emit(HostelState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(HostelState.loadedState(hostelInfo: r));
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
class HostelState with _$HostelState {
  const factory HostelState.initialState() = _InitialState;

  const factory HostelState.loadedState({
    required HostelInfoDTO hostelInfo,
  }) = _LoadedState;

  const factory HostelState.loadingState() = _LoadingState;

  const factory HostelState.errorState({
    required String message,
  }) = _ErrorState;
}
