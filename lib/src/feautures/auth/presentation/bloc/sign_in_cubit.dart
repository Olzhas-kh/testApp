import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';
import 'package:narxoz/src/feautures/auth/data/repository/auth_repository.dart';

part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(
    this._authRepository,
  ) : super(const SignInState.loadingState());
  final AuthRepository _authRepository;

  Future<void> signIn({
    required String login,
    required String password,
  }) async {
    emit(const SignInState.loadingState());
    final failureOrUser = await _authRepository.signIn(
      login: login,
      password: password,
    );

    failureOrUser.fold(
      (l) async {
        emit(SignInState.errorState(message: mapFailureToMessageBack(l)));
        // await Future.delayed(const Duration(milliseconds: 1000));
        // emit(const SignInState.initialState());
      },
      (r) {
        emit(SignInState.loadedState(user: r));
      },
    );
  }
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initialState() = _InitialState;

  const factory SignInState.loadedState({
    required UserDTO user,
  }) = _LoadedState;

  const factory SignInState.loadingState() = _LoadingState;

  const factory SignInState.errorState({
    required String message,
  }) = _ErrorState;
}
