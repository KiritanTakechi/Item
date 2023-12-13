import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import '../models/item.dart';
import '../models/maintenance_record.dart';
import '../models/use_record.dart';
import '../models/end_info.dart';
import '../models/category_stats.dart';
import '../models/overall_stats.dart';
import '../models/item_collection.dart';
// 导入其他表和DAOs（如果有的话）

part 'database.g.dart'; // Drift 会自动生成这个文件

@DriftDatabase(
  tables: [Items, MaintenanceRecords, UseRecords, EndInfos, CategoryStats, OverallStats, ItemCollections],
  // daos: [ItemDao, OtherDaos] // 如果您有定义 DAOs
)
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1; // 升级数据库时增加这个数字

// 其他数据库相关方法，比如查询和插入
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if(Platform.isAndroid){
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;

    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}