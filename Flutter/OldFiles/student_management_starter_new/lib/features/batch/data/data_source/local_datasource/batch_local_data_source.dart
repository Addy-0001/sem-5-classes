import 'package:student_management/core/network/hive_service.dart';
import 'package:student_management/features/batch/data/data_source/batch_data_source.dart';
import 'package:student_management/features/batch/data/model/batch_hive_model.dart';
import 'package:student_management/features/batch/domain/entity/batch_entity.dart';

class BatchLocalDataSource implements IBatchDataSource {
  final HiveService _hiveService;
  BatchLocalDataSource(this._hiveService);

  @override
  Future<void> createBatch(BatchEntity batchEntity) async {
    try {
      final batchHiveModel = BatchHiveModel.fromEntity(batchEntity);
      await _hiveService.addBatch(batchHiveModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteBatch(String id) async {
    try {
      await _hiveService.deleteBatch(id);
    } catch (e) {
      Exception(e);
    }
  }

  @override
  Future<List<BatchEntity>> getBatches() async {
    try {
      final batches = await _hiveService.getBatches();
      return BatchHiveModel.toEntityList(batches);
    } catch (e) {
      throw Exception('Failed to get batches: $e');
    }
  }
}
