
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/home/data/model/help_section_dto.dart';
import 'package:narxoz/src/feautures/home/data/repository/help_section_repository.dart';

part 'help_section_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'HelpSectionCubit';

class HelpSectionCubit extends Cubit<HelpSectionState> {
  HelpSectionCubit(
    this._helpSectionRepository,
  ) : super(const HelpSectionState.initialState());
  final HelpSectionRepository _helpSectionRepository;

  Future<void> getHelpSections() async {
    emit(const HelpSectionState.loadingState());

    final result = await _helpSectionRepository.helpSections();

    result.fold(
      (l) {
        emit(HelpSectionState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(HelpSectionState.loadedState(sections: r));
      },
    );
  }
}

@freezed
class HelpSectionState with _$HelpSectionState {
  const factory HelpSectionState.initialState() = _InitialState;

  const factory HelpSectionState.loadedState({
    required List<HelpSectionDTO> sections,
  }) = _LoadedState;

  const factory HelpSectionState.loadingState() = _LoadingState;

  const factory HelpSectionState.errorState({
    required String message,
  }) = _ErrorState;
}
