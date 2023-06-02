import 'package:examen_practic_navarro/preferences/preferences.dart';
import 'package:examen_practic_navarro/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';

//Hacemos el main async para ejecutar nuestras preferencias y así
//se inicializan cuando arranque la App
void main() async {
  //En flutter, cuando ejecutamos una tarea async antes de ejecutar el runApp, necesitamos
  //hacer llamadas a instrucciones nativas en una capa de bajo nivel, por eso necesitamos
  //utilizar el WidgetsFlutterBinding para asegurar que se han establecido unos canales
  //para poder comunicarnos con una capa inferior de código nativo y poder ejecutar el método async
  //sin ningún problema antes de ejecutar el runApp().
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {},
        ),
        ChangeNotifierProvider(create: (_) => UsersService()),
      ],
      child: MyApp(),
    ),
  );
}
/*
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => UsersService(),
      ),
    ]);
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final App',
      initialRoute: 'home',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
      },
    );
  }
}
