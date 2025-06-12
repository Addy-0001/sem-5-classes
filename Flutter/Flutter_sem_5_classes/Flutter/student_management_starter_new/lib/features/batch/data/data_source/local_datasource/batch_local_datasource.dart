import 'package:student_management/core/network/hive_service.dart';
import 'package:student_management/features/batch/data/data_source/batch_data_source.dart';
import 'package:student_management/features/batch/data/model/batch_hive_model.dart';
import 'package:student_management/features/batch/domain/entity/batch_entity.dart';

class BatchLocalDatasource implements IBatchDataSource{

  final HiveService _hiveService;

  BatchLocalDatasource(this._hiveService);

  @override
  Future<void> createBatch(BatchEntity batch) async{
    try{
      final batchHiveModel = BatchHiveModel.fromEntity(batch);
      await _hiveService.addBatch(batchHiveModel);
    }catch(e){
      throw Exception(e);
    }
  }
  
  @override
  Future<void> deleteBatch(String id) async{
    try{
      // final batchHiveModel = BatchHiveModel.fromEntity(id);
      await _hiveService.deleteBatch(id);
    }catch(e){
      throw Exception(e);
    }
  }
  
  @override
  Future<List<BatchEntity>> getBatches() async{
    try{
      final batches = await _hiveService.getAllBatches();
      return BatchHiveModel.toEntityList(batches);

    }catch(e){
      throw Exception(e);
    }
  }
}