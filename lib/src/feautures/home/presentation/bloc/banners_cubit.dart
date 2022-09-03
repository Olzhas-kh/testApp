import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/auth/data/repository/auth_repository.dart';
import 'package:narxoz/src/feautures/home/data/model/banner_dto.dart';

part 'banners_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'BannersCubit';

class BannersCubit extends Cubit<BannersState> {
  BannersCubit(
    this._authRepository,
  ) : super(const BannersState.initialState());
  final AuthRepository _authRepository;

  Future<void> getBanners() async {
    emit(const BannersState.loadingState());

    final result = await _authRepository.getBanners();

    result.fold(
      (l) {
        emit(BannersState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        if (r.isEmpty) {
          emit(const BannersState.emptyState());
        } else {
          emit(BannersState.loadedState(banners: r));
        }
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
class BannersState with _$BannersState {
  const factory BannersState.initialState() = _InitialState;

  const factory BannersState.loadedState({
    required List<BannerDTO> banners,
  }) = _LoadedState;

  const factory BannersState.emptyState() = _EmptyState;

  const factory BannersState.loadingState() = _LoadingState;

  const factory BannersState.errorState({
    required String message,
  }) = _ErrorState;
}
