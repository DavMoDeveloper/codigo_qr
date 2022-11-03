import 'dart:io';

import 'package:codigo_qr/models/qr_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  static final DBAdmin db = DBAdmin._();
  DBAdmin._();

  Database? myDatabase;

  Future<Database?> getDatabase() async {
    if (myDatabase != null) {
      return myDatabase;
    }
    myDatabase = await initDatabase();
    return myDatabase;
  }

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "QrDB.db");
    return openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute(
            "CREATE TABLE QR(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, date TEXT, time TEXT, url TEXT)");
      },
    );
  }

  Future<int> insertQR(QRModel model) async {
    Database? db = await getDatabase();
    int res = await db!.insert(
      "QR",
      {
        "title": model.title,
        "description": model.description,
        "date": model.date,
        "time": model.time,
        "url": model.url,
      },
    );
    return res;
  }

  Future<List<QRModel>> getQRData() async{
    Database? db = await getDatabase();
    List qrList= await db!.query("QR");
    List<QRModel> listModel = [];
    qrList.forEach((element) {
      QRModel model = QRModel.fromJson(element);
      listModel.add(model);
    });
    return listModel;
  }
}
