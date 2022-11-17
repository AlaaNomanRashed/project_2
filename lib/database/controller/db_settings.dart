import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSettings {
  late Database _database;
  static final DatabaseSettings _instance = DatabaseSettings._internal();
// singleton constructor
  factory DatabaseSettings() {
    return _instance;
  }
  DatabaseSettings._internal();
  Database get getDatabase => _database;

  Future<void> databaseInitialized() async {
    try {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String path = join(appDocDir.path, 'resume.sql ');

      // temp (مؤقتة لحتى اتست)
      await deleteDatabase(path);

      _database =  await openDatabase(path, version: 1, onCreate: _onCreate);
    } on Exception catch (e) {
      print("Error => ${e.toString()}");
    }
  }

  _onCreate(Database db, int version) async {
    print("create database");
    await db.execute(
        'CREATE TABLE skills ('
        'id INTEGER PRIMARY KEY NOT NULL AUTOINCREMENT,'
        ' topics TEXT NOT NULL,'
        ' percentage INTEGER NOT NULL'
        ')'
    );
  }
}


