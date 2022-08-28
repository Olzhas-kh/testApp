import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';
import 'package:narxoz/src/feautures/auth/data/repository/auth_repository.dart';

part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(
    this._authRepository,
  ) : super(const ProfileState.loadingState());
  final AuthRepository _authRepository;

  void resetToInitial() {
    emit(const ProfileState.initialState());
  }

  Future<void> getProfile() async {
    emit(const ProfileState.loadingState());
    await Future.delayed(const Duration(milliseconds: 1500));

    final res = await _authRepository.getUserFromBack();

    res.fold(
      (l) async {
        emit(ProfileState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(milliseconds: 1500));
        getProfileFromCache();
      },
      (r) {
        emit(ProfileState.loadedState(user: r));
      },
    );
  }

  Future<void> getProfileFromCache() async {
    emit(const ProfileState.loadingState());

    final res = await _authRepository.getUserFromCache();

    res.fold(
      (l) async {
        emit(ProfileState.errorState(message: mapFailureToMessage(l)));
        await Future.delayed(const Duration(milliseconds: 1500));
        emit(const ProfileState.initialState());
      },
      (r) {
        emit(ProfileState.loadedState(user: r));
      },
    );
  }
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialState() = _InitialState;

  const factory ProfileState.loadedState({
    required UserDTO user,
  }) = _LoadedState;

  const factory ProfileState.loadingState() = _LoadingState;

  const factory ProfileState.errorState({
    required String message,
  }) = _ErrorState;
}
