import 'package:examen_practic_navarro/screens/loading_screen.dart';
import 'package:examen_practic_navarro/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usersService = Provider.of<UsersService>(context);
    if (!usersService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios'),
        actions: [
          //Icono de papelera que elimina todos los registros al ser pulsado
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {
              //Provider.of<User>(context, listen: false) /*.esborraTots()*/;
            },
          )
        ],
      ),
      body: Tiles(),
      // bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const AddUser(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
