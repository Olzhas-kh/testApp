part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.loadingState() = _LoadingState;

  const factory AppState.notAuthorizedState() = _NotAuthorizedState;

  // const factory AppState.notVerifyed() = _NotVerifyed;

  const factory AppState.inAppState() = _InAppState;

  const factory AppState.errorState({
    required String message,
  }) = _ErrorState;
}
