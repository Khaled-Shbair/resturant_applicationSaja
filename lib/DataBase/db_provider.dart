import 'package:sqflite/sqflite.dart';

class DBProvider {
  static final DBProvider _inst = DBProvider._();
  late final Database _database;

  DBProvider._();

  factory DBProvider() {
    return _inst;
  }
}
