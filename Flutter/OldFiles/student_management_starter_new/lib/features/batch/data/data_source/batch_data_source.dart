import 'package:student_management/features/batch/domain/entity/batch_entity.dart';

abstract interface class IBatchDataSource {
  Future<List<BatchEntity>> getBatches();
  Future<void> createBatch(BatchEntity batchEntity);
  Future<void> deleteBatch(String id);
}
