import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';

part 'application_verify_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'ApplicationCubit';

class ApplicationVerifyCubit extends Cubit<ApplicationVerifyState> {
  ApplicationVerifyCubit(
    this._hostelRepository,
  ) : super(const ApplicationVerifyState.initialState());
  final HostelRepository _hostelRepository;

  void resetStates() {
    emit(const ApplicationVerifyState.initialState());
  }

  Future<void> questionsCheck({
    required int catId,
    required List<AnswerPayload> answers,
    required String gender,
  }) async {
    emit(const ApplicationVerifyState.loadingState());

    final result = await _hostelRepository.questionsCheck(
      catId: catId,
      answers: answers,
    );

    result.fold(
      (l) async {
        emit(ApplicationVerifyState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(milliseconds: 1000));
        emit(const ApplicationVerifyState.initialState());
      },
      (r) {
        emit(
          ApplicationVerifyState.loadedState(
            catId: catId,
            answers: answers,
            gender: gender,
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
class ApplicationVerifyState with _$ApplicationVerifyState {
  const factory ApplicationVerifyState.initialState() = _InitialState;

  const factory ApplicationVerifyState.loadedState({
    required int catId,
    required List<AnswerPayload> answers,
    required String gender,
  }) = _LoadedState;

  const factory ApplicationVerifyState.loadingState() = _LoadingState;

  const factory ApplicationVerifyState.errorState({
    required String message,
  }) = _ErrorState;
}
