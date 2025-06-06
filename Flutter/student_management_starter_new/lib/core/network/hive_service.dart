import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_management/features/batch/data/model/batch_hive_model.dart';

class HiveService {
  Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = '${directory.path}student_management.db';
    Hive.init(path);

    Hive.registerAdapter(BatchHiveModelAdapter());
  }
}
