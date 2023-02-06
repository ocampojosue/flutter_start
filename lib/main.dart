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
  bool _suscribe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALERT DIALOG"),
        backgroundColor: const Color(0xFF191e3a),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF191e3a),
              ),
              child: Text(
                _suscribe
                    ? "CANCELAR SUSCRIPCIÓN AL CANAL"
                    : "SUSCRIBIRSE A ESTE CANAL",
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _showAlert(context);
              },
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              _suscribe ? "SUSCRITO" : "NO SUSCRITO",
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("SUSCRÍBETE"),
        content: Text(
          _suscribe
              ? "¿SEGURO DE QUERER CANCELAR LA SUSCRIPCIÓN AL CANAL?"
              : "¿SEGURO DE QUERER SUSCRIBIRSE A ESTE CANAL?",
        ),
        actions: [
          TextButton(
            onPressed: () {
              print("SI");
              setState(() {
                _suscribe = !_suscribe;
              });
              Navigator.pop(context);
            },
            child: const Text("SI"),
          ),
          TextButton(
            onPressed: () {
              print("NO");
              Navigator.pop(context);
            },
            child: const Text("CANCELAR"),
          ),
        ],
      ),
    );
  }
}
