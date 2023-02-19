import 'package:flutter/material.dart';

import 'Principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      

      debugShowCheckedModeBanner: false,
      title: 'Aplicacion Formulario',
      home: Scaffold(
        appBar: AppBar
      (
        title: Text('Formularo'),
      ),
      body: 
      
        
        Principal(),

      ),

    );
  }
}

