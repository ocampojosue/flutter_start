// ignore_for_file: deprecated_member_use

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://img.freepik.com/vector-premium/montanas-paisaje-forestal-bello-cielo-nocturno-estrellas_16058-112.jpg?w=740",
        ),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campousuario(),
          campocontrasena(),
          const SizedBox(
            height: 20.0,
          ),
          btnEntrar(),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return const Text(
    "INICIAR SESIÓN",
    style: TextStyle(
      color: Colors.white,
      fontSize: 40.0,
      fontFamily: "Monospace",
    ),
  );
}

Widget campousuario() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 40.0,
      vertical: 10.0,
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "NOMBRE DE USUARIO",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campocontrasena() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 40.0,
      vertical: 10.0,
    ),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "CONTRASEÑA",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget btnEntrar() {
  return ElevatedButton(
    // style: ButtonStyle(
    //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //     RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(18.0),
    //         side: BorderSide(color: Colors.blueAccent)),
    //   ),
    // ),
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.black,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),

    onPressed: () {},
    child: const Text(
      "ENTRAR",
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontFamily: "Monospace",
      ),
    ),
  );
}
