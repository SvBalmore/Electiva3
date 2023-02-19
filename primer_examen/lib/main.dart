import 'package:flutter/material.dart';
import 'package:primer_examen/registro.dart';
import 'Login.dart';
import 'configuracion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  var index;

  List<Widget> _paginas = [
    LoginPage(),
    RegistroMain(),
    ConfiguracionMain(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen ETPS3',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _paginaActual,
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Login",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_rounded), label: "Registrarse"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Configuracion")
            ]),
      ),
    );
  }
}
