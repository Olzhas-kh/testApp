import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/feautures/sections/data/model/document_dto.dart';
import 'package:narxoz/src/feautures/sections/data/repository/student_repository.dart';

part 'documents_cubit.freezed.dart';

// ignore: unused_element
const _tag = 'DocumentsCubit';

class DocumentsCubit extends Cubit<DocumentsState> {
  DocumentsCubit(
    this._studentRepository,
  ) : super(const DocumentsState.initialState());
  final StudentRepository _studentRepository;

  Future<void> getDocumentCats({
    required int documentCatId,
  }) async {
    emit(const DocumentsState.loadingState());

    final result = await _studentRepository.getDocuments(
      documentCatId: documentCatId,
    );

    result.fold(
      (l) {
        emit(DocumentsState.errorState(message: mapFailureToMessage(l)));
      },
      (r) {
        emit(DocumentsState.loadedState(documents: r));
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
class DocumentsState with _$DocumentsState {
  const factory DocumentsState.initialState() = _InitialState;

  const factory DocumentsState.loadedState({
    required List<DocumentDTO> documents,
  }) = _LoadedState;

  const factory DocumentsState.emptyState() = _EmptyState;

  const factory DocumentsState.loadingState() = _LoadingState;

  const factory DocumentsState.errorState({
    required String message,
  }) = _ErrorState;
}
