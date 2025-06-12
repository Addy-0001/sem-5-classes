import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management/features/batch/domain/use_case/create_batch_usecase.dart';
import 'package:student_management/features/batch/domain/use_case/delete_batch_usecase.dart';
import 'package:student_management/features/batch/domain/use_case/getall_batch_usecase.dart';
import 'package:student_management/features/batch/presentation/view_model/batch_event.dart';
import 'package:student_management/features/batch/presentation/view_model/batch_state.dart';

class BatchViewModel extends Bloc<BatchEvent,BatchState>{
  final CreateBatchUsecase _createBatchUsecase;
  final DeleteBatchUsecase _deleteBatchUsecase;
  final GetallBatchUsecase _getallBatchUsecase;

  BatchViewModel({
    required CreateBatchUsecase createBatchUseCase,
    required DeleteBatchUsecase deleteBatchUseCase,
    required GetallBatchUsecase getAllBatchUseCase,
  }) : _createBatchUsecase = createBatchUseCase,
      _deleteBatchUsecase = deleteBatchUseCase,
      _getallBatchUsecase = getAllBatchUseCase,
      super(BatchState.initial()){
        on<LoadBatchEvent>(_onLoadBatches);
        on<AddBatchEvent>(_onAddBatch);
        on<DeleteBatchEvent>(_onDeleteBatch);

        add(LoadBatchEvent());
      }

  Future<void> _onLoadBatches(
    LoadBatchEvent event,
    Emitter<BatchState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getallBatchUsecase();
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (batches) {
        emit(state.copyWith(batches: batches, isLoading: false));
      },
    );
  }

  Future<void> _onAddBatch(
    AddBatchEvent event,
    Emitter<BatchState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await _createBatchUsecase(
      CreateBatchParams(batchName: event.batchName),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        add(LoadBatchEvent());
      },
    );
  }

  Future<void> _onDeleteBatch(
    DeleteBatchEvent event,
    Emitter<BatchState> emit,
  ) async {
    // Logic to delete a batch
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await _deleteBatchUsecase.call(
      DeleteBatchParams(batchId: event.batchId),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        add(LoadBatchEvent());
      },
    );
  }
  
}
