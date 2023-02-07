// ignore_for_file: deprecated_member_use, avoid_print, unnecessary_new, prefer_final_fields

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Empresa _facebook = new Empresa("Facebook", "Mark", 1000);
  Empresa _google = new Empresa("Google", "Josue", 1500);

  @override
  void initState() {
    super.initState();
    print(_facebook.nombre);
    print(_facebook.propietario);
    print(_facebook.ingresoAnual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API REST"),
        backgroundColor: const Color(
          0xFF191e3a,
        ),
      ),
      body: Center(
        child: Text(
          _google.ingresoAnual.toString(),
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}

class Empresa {
  final String nombre;
  final String propietario;
  final int ingresoAnual;
  Empresa(this.nombre, this.propietario, this.ingresoAnual) {
    print("object");
  }
}
