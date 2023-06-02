import 'package:examen_practic_navarro/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/users.dart';

//Clase que muestra la información de los mapas o direcciones escaneados
class Tiles extends StatelessWidget {
  const Tiles({super.key});
  @override
  Widget build(BuildContext context) {
    final usersService = Provider.of<UsersService>(
        context); //Para acceder a la lista de scanListProvider
    //final user = userProvider.name; //Para utilizar en el ListView.builder y cuando haya algún cambio se volverá a repintar
    return ListView.builder(
        itemCount: usersService.users.length,
        itemBuilder: (_, index) => Dismissible(
              key: UniqueKey(), //Para obtener una clave única para el widget
              background: Container(
                color: Colors.orange,
                // ignore: prefer_const_constructors
                child: Align(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    //Icono de papelera que aparece al eliminar un registro arrastrando
                    child: Icon(Icons.delete),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              onDismissed: (direccio) {
                Provider.of<UsersService>(context, listen: false);
                //Se invoca al método esborraPerId y se pasa como parámetro la id a eliminar
                //.esborraPerId(user[index]);
              },
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
                //Info User (nombre y correo)
                title: Text(usersService.users[index].name),
                subtitle: Text(usersService.users[index].email),
                trailing: const Icon(
                  Icons.check,
                  color: Colors.teal,
                ),
                onTap: () {
                  //TODO: Ver detalles User;
                },
              ),
            ));
  }
}
