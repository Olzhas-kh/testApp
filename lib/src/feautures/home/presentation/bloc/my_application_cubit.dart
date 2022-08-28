import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/verification_response_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'my_application_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'MyApplicationCubit';

class MyApplicationCubit extends Cubit<MyApplicationState> {
  MyApplicationCubit(
    this._hostelRepository,
  ) : super(const MyApplicationState.initialState());
  final HostelRepository _hostelRepository;

  Future<void> checkApplication({
    required int orderId,
  }) async {
    emit(const MyApplicationState.loadingState());

    final result = await _hostelRepository.checkApplication(
      orderId: orderId,
    );

    result.fold(
      (l) {
        emit(MyApplicationState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(
          MyApplicationState.loadedState(
            verificationResponse: r,
            orderId: orderId,
          ),
        );
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
class MyApplicationState with _$MyApplicationState {
  const factory MyApplicationState.initialState() = _InitialState;

  const factory MyApplicationState.loadedState({
    required VerificationResponseDTO verificationResponse,
    required int orderId,
  }) = _LoadedState;

  const factory MyApplicationState.loadingState() = _LoadingState;

  const factory MyApplicationState.errorState({
    required String message,
  }) = _ErrorState;
}
