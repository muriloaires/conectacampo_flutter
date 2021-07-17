import 'dart:io';
import 'dart:math';

import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = "CCDatabase.db";
  static const _databaseVersion = 1;

  static const table = 'reservation_item';

  static const _columnName = 'name';
  static const _columnId = '_id';
  static const _columnMeasurementUnit = 'measuremente_unit';
  static const _columnAmmount = 'ammount';
  static const _columnRating = 'rating';
  static const _columnKind = 'kind';
  static const _columnSellerName = 'seller_name';
  static const _columnSellerPhone = 'seller_phone';
  static const _columnImage = 'image';

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // only have a single app-wide reference to the database
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database!;
  }

  // this opens the database (and creates it if it doesn't exist)
  Future<Database> _initDatabase() async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $_columnId INTEGER PRIMARY KEY,
            $_columnName TEXT NOT NULL,
            $_columnMeasurementUnit TEXT NOT NULL,
            $_columnAmmount INTEGER NOT NULL,
            $_columnRating TEXT NOT NULL,
            $_columnKind TEXT NOT NULL,
            $_columnSellerName TEXT NOT NULL,
            $_columnSellerPhone TEXT NOT NULL,
            $_columnImage TEXT NOT NULL
          )
          ''');
  }

  Future<int> insert(ReservationItemDB reservationItemDB) async {
    Database db = await instance.database;
    return await db.insert(table, reservationItemDB.toJson());
  }

  Future<List<ReservationItemDB>> queryAllRows() async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> result = await db.query(table);
    return result.map((e) => ReservationItemDB.fromJson(e)).toList();
  }

  Future<int?> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  Future<ReservationItemDB?> updateOrInsert(
      ReservationItemDB reservationItemDB) async {
    final Database db = await instance.database;
    final result = await db.transaction<ReservationItemDB?>((txn) async {
      final int id = reservationItemDB.id;
      final rowsAffected = await txn.update(table, reservationItemDB.toJson(),
          where: '$_columnId = ?', whereArgs: [id]);
      if (rowsAffected <= 0) {
        await txn.insert(table, reservationItemDB.toJson());
      }
      final raw = await txn.query(table,
          where: '$_columnId = ?', whereArgs: [id], limit: 1);
      try {
        return ReservationItemDB.fromJson(raw.first);
      } catch (e) {
        return null;
      }
    });
    return result;
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$_columnId = ?', whereArgs: [id]);
  }

  Future<ReservationItemDB?> select(int id) async {
    Database db = await instance.database;
    final raw = await db.query(table,
        where: '$_columnId = ?', whereArgs: [id], limit: 1);
    try {
      return ReservationItemDB.fromJson(raw.first);
    } catch (e) {
      return null;
    }
  }
}
