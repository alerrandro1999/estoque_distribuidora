import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Connection {
  init() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'borges.db');
  }
}
