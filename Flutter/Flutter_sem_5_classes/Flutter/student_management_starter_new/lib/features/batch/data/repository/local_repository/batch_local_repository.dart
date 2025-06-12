import 'package:dartz/dartz.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/batch/data/data_source/local_datasource/batch_local_datasource.dart';
import 'package:student_management/features/batch/domain/entity/batch_entity.dart';
import 'package:student_management/features/batch/domain/repository/batch_repository.dart';

class BatchLocalRepository implements IBatchRepository{
  final BatchLocalDatasource _batchLocalDatasource;

  BatchLocalRepository(this._batchLocalDatasource);

  @override
  Future<Either<Failure, void>> createBatch(BatchEntity batch) {
    try{
      _batchLocalDatasource.createBatch(batch);
      return Future.value(Right(null));
    }catch(e){
      return Future.value(Left(LocalDatabaseFailure(message: e.toString())));
    }
  }

  @override
  Future<Either<Failure, void>> deleteBatch(String id) {
    try{
      _batchLocalDatasource.deleteBatch(id);
      return Future.value(Right(null));
    }catch(e){
      return Future.value(Left(LocalDatabaseFailure(message: e.toString())));
    }
  }

  @override
  Future<Either<Failure, List<BatchEntity>>> getBatches() async{
    try{
      final batches = await _batchLocalDatasource.getBatches();
      return Right(batches);
    }catch(e){
      return Future.value(Left(LocalDatabaseFailure(message: e.toString())));
    }
  }
}