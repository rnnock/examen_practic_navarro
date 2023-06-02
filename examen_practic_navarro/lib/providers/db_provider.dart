import 'dart:io';
/*
//import 'package:examen_practic_navarro/models/user_model.dart';
import 'package:path_provider/path_provider.dart';


class DBProvider {
  static Database? _database;

  /* Estructura singleton, creando una misma instancia de esta misma clase para acceder
   * siempre con la misma instancia en nuestra base de datos, con el fin de no duplicar
   * las instancias cada vez.
   * 
   * Nos devuelve una instancia en la misma clase y la almacenamos en esta variable db,
   * para acceder siempre a la misma instancia de este objeto
   */
  static final DBProvider db = DBProvider._();

  DBProvider._(); //Creamos un método constructor privado

  Future<Database> get database async {
    //Método async que realiza todas las tareas de inicialización (haremos el CREATE de la BD y tablas que necesitemos)
    if (_database == null) _database = await initDB();

    return _database!;
  }

  Future<Database> initDB() async {
    //Obtener el path o ruta donde crearemos nuestra base de datos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    //Variable que almacena la ruta del directorio + nombre
    final path = documentsDirectory.path;

    //Creación de la BBDD
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (db, version) async {
        //Aquí creamos la BBDD, con el formato requerido para las sentencias SQL
        await db.execute('''
      CREATE TABLE Users(
      id VARCHAR PRIMARY KEY, 
      name TEXT,
      email TEXT,
      address TEXT,
      phone TEXT,
      photo TEXT
      )
      ''');
      },
    );
  }

  //Método 1 para insertar una tupla en la BBDD
  Future<int> insertUser(User newuser) async {
    final nombre = newUser.name;
    final tipus = nouScan.tipus;
    final valor = nouScan.valor;

    final db = await database;

    //Variable para almacenar el resultado (siempre funciones async cuando utilizamos BBDD)
    final res = await db.rawInsert('''
      INSERT INTO Scans(id,tipus,valor)
        VALUES ($id,$tipus,$valor) 
      ''');

    return res;
  }

  //Método 2 para insertar una tupla en la BBDD
  Future<int> insertScan(ScanModel nouScan) async {
    final db = await database;
    final res = await db.insert('Scans', nouScan.toMap());
    return res;
  }

  //SELECTS
  //Select de toda la tabla Scans
  Future<List<ScanModel>> getAllScans() async {
    final db = await database;

    //Devuelve todas las tuplas de la tabla Scans y la almacena en la variable res
    final res = await db.query('Scans');

    //Si hay registros, se añaden al listado. En caso contrario, el array está vacío
    return res.isNotEmpty ? res.map((e) => ScanModel.fromMap(e)).toList() : [];
  }

  //Select de un ID en concreto
  Future<ScanModel?> getScanById(int id) async {
    final db = await database;
    final res = await db.query('Scans', where: 'id = ?', whereArgs: [id]);

    if (res.isNotEmpty) {
      return ScanModel.fromMap(res.first); //Devuelve el primer item
    } else {
      return null;
    }
  }

  //Select de un tipo en concreto
  Future<List<ScanModel>> getScanByTipus(String tipus) async {
    final db = await database;
    final res = await db.query('Scans', where: 'tipus = ?', whereArgs: [
      tipus
    ]); //Devuelve una lista con todos los ScanModel de un tipo en concreto
    return res.isNotEmpty ? res.map((e) => ScanModel.fromMap(e)).toList() : [];
  }

  //UPDATE (devuelve ID)
  Future<int> updateScan(ScanModel nouScan) async {
    final db = await database;
    final res = db.update('Scans', nouScan.toMap(),
        where: 'id = ?', whereArgs: [nouScan.id]);

    return res;
  }

//DELETE
//Elimina todos los registros
  Future<int> deleteAllScans() async {
    final db = await database;
    final res = await db.rawDelete('''
    DELETE FROM Scans
    '''); //también puede ser db.delete()
    return res;
  }

  //Elimina el registro del id recibido por parámetro
  Future<int> deleteScanById(int id) async {
    final db = await database;
    final res = await db.delete('Scans', where: 'id = ?', whereArgs: [id]);
    return res;
  }
}*/
