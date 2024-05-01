import 'dart:core';

import 'package:notes_application/src/modules/base/models/note_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqflite.dart';

class Database {
  Future<Database> getDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'Notes.db'),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTO INCREMENT,title TEXT NOT NULL,description TEXT NOT NULL, date TEXT NOT NULL)");
      },
    );
  }

// Insert data

  Future<int> insertNotes(Notes notes) async {
    int result = 0;
    final Database db = await getDB();
    result = await db.insert('Notes', notes.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return result;
  }

  Future<List<Notes>> retrievePlanets() async {
    final Database db = await getDB();
    final List<Map<String, Object?>> queryResult = await db.query('Notes');
    return queryResult.map((e) => Notes.fromMap(e)).toList();
  }

  Future<void> deletePlanet(int id) async {
    final db = await getDB();
    await db.delete(
      'notes',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
