import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'dorm_card_verify_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'DormCardCubit';

class DormCardVerifyCubit extends Cubit<DormCardVerifyState> {
  DormCardVerifyCubit(
    this._hostelRepository,
  ) : super(const DormCardVerifyState.initialState());
  final HostelRepository _hostelRepository;

  Future<void> paymentDorm({
    required int orderId,
    required File? chequeFile,
    // required List<AnswerPayload> answers,
    // required String placementId,
  }) async {
    emit(const DormCardVerifyState.loadingState());

    final result = await _hostelRepository.paymentDorm(
      orderId: orderId,
      // answers: answers,
      chequeFile: chequeFile,
      // placementId: placementId,
    );

    result.fold(
      (l) async {
        emit(DormCardVerifyState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(milliseconds: 1000));
        emit(const DormCardVerifyState.initialState());
      },
      (r) {
        emit(DormCardVerifyState.loadedState(payment: r));
      },
    );
  }

  void resetState() {
    emit(const DormCardVerifyState.initialState());
  }

  // @override
  // void onChange(Change<LanguageState> change) {
  //   print(change);
  //   super.onChange(change);
  // }
}

@freezed
class DormCardVerifyState with _$DormCardVerifyState {
  const factory DormCardVerifyState.initialState() = _InitialState;

  const factory DormCardVerifyState.loadedState({
    required PaymentDTO? payment,
  }) = _LoadedState;

  const factory DormCardVerifyState.loadingState() = _LoadingState;

  const factory DormCardVerifyState.errorState({
    required String message,
  }) = _ErrorState;
}
