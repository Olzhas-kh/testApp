import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/auth/data/repository/auth_repository.dart';

part 'app_bloc.freezed.dart';
part 'app_state.dart';
part 'app_event.dart';

const _tag = 'AppBloc';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthRepository _authRepository;

  AppBloc(
    this._authRepository,
  ) : super(const AppState.loadingState()) {
    on<AppEvent>(
      (AppEvent event, Emitter<AppState> emit) async => event.map(
        exiting: (_Exiting event) async => _exit(event, emit),
        checkAuth: (_CheckAuth event) async => _checkAuth(event, emit),
        logining: (_Logining event) async => _login(event, emit),
        refreshLocal: (_RefreshLocal event) async => _refreshLocal(event, emit),
      ),
    );
  }

  Future<void> _checkAuth(
    _CheckAuth event,
    Emitter<AppState> emit,
  ) async {
    await _tokenCheck(emit);
  }

  Future<void> _tokenCheck(
    Emitter<AppState> emit,
  ) async {
    final result = await _authRepository.authCheck();

    result.fold(
      (l) => emit(const AppState.notAuthorizedState()),
      (r) {
        emit(const AppState.inAppState());
        // if (r.phoneVerify == null) {
        //   emit(AppState.notVerifyed(user: r));
        // } else {
        //   _sendDeviceTokenToBack();
        //   emit(const AppState.clientState());
        // }
      },
    );
  }

  Future<void> _sendDeviceTokenToBack() async {
    // final sendResult = await _sendDeviceToken.call();

    // sendResult.fold(
    //   (l) {
    //     log('${'sendDeviceTokenToBack'.toUpperCase()}::: ${mapFailureToMessage(l)}');
    //   },
    //   (r) {
    //     log('${'sendDeviceTokenToBack'.toUpperCase()}::: $r');
    //   },
    // );
  }

  Future<void> _login(
    _Logining event,
    Emitter<AppState> emit,
  ) async {
    log('AppBloc Hello', name: _tag);
    _sendDeviceTokenToBack();
    emit(const AppState.inAppState());
  }

  Future<void> _exit(
    _Exiting event,
    Emitter<AppState> emit,
  ) async {
    final result = await _authRepository.logOut();

    result.fold(
      (l) {
        log('##### _exit::: ${mapFailureToMessage(l)}');
        emit(const AppState.notAuthorizedState());
      },
      (r) => emit(const AppState.notAuthorizedState()),
    );
  }

  Future<void> _refreshLocal(
    _RefreshLocal event,
    Emitter<AppState> emit,
  ) async {
    await state.maybeWhen(
      inAppState: () async {
        emit(const AppState.loadingState());
        await Future.delayed(const Duration(milliseconds: 100));
        emit(const AppState.inAppState());
      },
      orElse: () async {
        emit(const AppState.loadingState());
        await Future.delayed(const Duration(milliseconds: 100));
        emit(const AppState.notAuthorizedState());
      },
    );
  }
}
