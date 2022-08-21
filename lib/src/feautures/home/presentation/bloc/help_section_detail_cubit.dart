import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/help_section_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/help_section_repository.dart';

part 'help_section_detail_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'HelpSectionCubit';

class HelpSectionDetailCubit extends Cubit<HelpSectionDetailState> {
  HelpSectionDetailCubit(
    this._helpSectionRepository,
  ) : super(const HelpSectionDetailState.initialState());
  final HelpSectionRepository _helpSectionRepository;

  Future<void> getHelpSections({
    required int helpSectionId,
  }) async {
    emit(const HelpSectionDetailState.loadingState());

    final result = await _helpSectionRepository.showDetailHelpSection(
      helpSectionId: helpSectionId,
    );

    result.fold(
      (l) {
        emit(
          HelpSectionDetailState.errorState(message: mapFailureToMessage(l)),
        );
      },
      (r) {
        emit(HelpSectionDetailState.loadedState(section: r));
      },
    );
  }
}

@freezed
class HelpSectionDetailState with _$HelpSectionDetailState {
  const factory HelpSectionDetailState.initialState() = _InitialState;

  const factory HelpSectionDetailState.loadedState({
    required HelpSectionDTO section,
  }) = _LoadedState;

  const factory HelpSectionDetailState.loadingState() = _LoadingState;

  const factory HelpSectionDetailState.errorState({
    required String message,
  }) = _ErrorState;
}
