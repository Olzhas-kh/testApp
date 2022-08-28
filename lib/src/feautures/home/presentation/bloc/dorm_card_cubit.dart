import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'dorm_card_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'DormCardCubit';

class DormCardCubit extends Cubit<DormCardState> {
  DormCardCubit(
    this._hostelRepository,
  ) : super(const DormCardState.initialState());
  final HostelRepository _hostelRepository;

  Future<void> paymentDorm({
    required int orderId,
    File? file,
  }) async {
    emit(const DormCardState.loadingState());

    final result = await _hostelRepository.paymentDorm(
      orderId: orderId,
      chequeFile: file,
    );

    result.fold(
      (l) async {
        emit(DormCardState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(milliseconds: 1500));
        emit(const DormCardState.initialState());
      },
      (r) {
        emit(DormCardState.loadedState(payment: r));
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
class DormCardState with _$DormCardState {
  const factory DormCardState.initialState() = _InitialState;

  const factory DormCardState.loadedState({
    required PaymentDTO? payment,
  }) = _LoadedState;

  const factory DormCardState.loadingState() = _LoadingState;

  const factory DormCardState.errorState({
    required String message,
  }) = _ErrorState;
}
