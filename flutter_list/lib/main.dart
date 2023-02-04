import 'package:flutter/material.dart';
import 'Principal.dart';
void main() {
  runApp(flutter_list());
}
class flutter_list extends StatelessWidget{
  const flutter_list({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Principal(),
    );
  }
}
