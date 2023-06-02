/*import 'package:flutter/material.dart';
import '../models/user_model.dart';

//Esta clase sirve de interfaz intermediaria
class User extends ChangeNotifier {
  List<User> users = [];

  //Operaciones que se realizan en la BBDD

  //Insertar un nuevo registro
  Future<User> newUser(String valor) async {
    //Se asigna el ScanModel en la variable nouScan
    final newUser = User();
    final id = await DBProvider.db.insertUser(newUser);
    newUser.id = id;

    if (nouScan.tipus == tipusSeleccionat) {
      scans.add(nouScan);
      notifyListeners();
    }
    return nouScan;
  }

  //Método que carga todas las tuplas de la BBDD
  carregaScans() async {
    final scans = await DBProvider.db.getAllScans();

    //Nomenclatura Spreadsheet operator (JavaScript) para añadir una lista dentro de la otra
    this.scans = [...scans];
    notifyListeners();
  }

  //Método que carga los registro del tipo recibido por parámetro
  carregaScansPerTipus(String tipus) async {
    final scans = await DBProvider.db.getScanByTipus(tipus);
    this.scans = [...scans];
    tipusSeleccionat = tipus;
    notifyListeners();
  }

  //Método que elimina todos los registros (invocado al pulsar el icono de la papelera)
  esborraTots() async {
    final scans = await DBProvider.db.deleteAllScans();
    this.scans = [];
    notifyListeners();
  }

  //Método que elimina un registro con la id recibida por parámetro
  esborraPerId(int id) async {
    await DBProvider.db.deleteScanById(id);
    scans.removeWhere((e) => e.id == id);
    notifyListeners();
  }
}*/
