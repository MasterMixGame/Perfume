import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sql.dart';

class DBHelper {
  static const String _dbName = 'jobsdata.db';
  static const int _dbVersion = 1;

   final int? id;
   final String productName;
   final String gram;
   final String amount;
   final String discount;
   final String other;

   DBHelper({
   this.id, required this.productName, required this.gram, required this.amount, required this.discount, required this.other
});


  static Future<void> createTable(Database database) async {
    await database.execute(""" CREATE TABLE items(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      productName TEXT,
      gram TEXT,
      amount TEXT,
      discount TEXT,
      other TEXT,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)
      """);
  }

  static Future<Database> db() async {
    return openDatabase(_dbName, version: _dbVersion,
        onCreate: (Database database, int databaseVersion) {
      return createTable(database);
    });
  }

  static Future<int> createItems(String? productName, String gram, String amount, String discount, String other) async {
    final db = await DBHelper.db();
    final data = {'productName': productName, 'gram': gram, 'amount': amount, 'discount': discount, 'other':other};
    final id = await db.insert('items', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await DBHelper.db();
    return await db.query('items', orderBy: 'id');
  }

  // update
  static Future<int> updateItems(
      int id, String? productName, String? gram, String? amount,
      String? discount, String? other
      ) async {
    final db = await DBHelper.db();
    final data = {
      'productName': productName,
      'gram': gram,
      'amount': amount,
      'discount':discount,
      'other':other
    };
    final result =
        await db.update('items', data, where: 'id = ?', whereArgs: [id]);
    return result;
  }

  // delete
  static Future<void> deleteItems(int id) async {
    final db = await DBHelper.db();

    try {
      await db.delete('items', where: 'id = ?', whereArgs: [id]);
    } catch (e) {
      print('error: ${e.toString()}');
    }
  }
}
