import 'package:dartz/dartz.dart';
import 'package:student_management/core/common/usecase.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/batch/domain/entity/batch_entity.dart';
import 'package:student_management/features/batch/domain/repository/batch_repository.dart';

class GetallBatchUsecase implements UsecaseWithoutParams<void>{
  final IBatchRepository batchRepository;

  GetallBatchUsecase(this.batchRepository);
  @override
  Future<Either<Failure, List<BatchEntity>>> call() async{
    return await batchRepository.getBatches();
  }

}
