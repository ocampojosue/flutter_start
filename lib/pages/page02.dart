import 'package:flutter/material.dart';

class Page02 extends StatelessWidget {
  const Page02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TÉRMINOS Y CONDICIONES"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            const Text(
              "TÉRMINOS Y CONDICIONES",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Para usar esta aplicación es necesario que aceptes los términos y condiciones. Para usar esta aplicación es necesario que aceptes los términos y condiciones. Para usar esta aplicación es necesario que aceptes los términos y condiciones",
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Para usar esta aplicación es necesario que aceptes los términos y condiciones. Para usar esta aplicación es necesario que aceptes los términos y condiciones. Para usar esta aplicación es necesario que aceptes los términos y condiciones",
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Para usar esta aplicación es necesario que aceptes los términos y condiciones. Para usar esta aplicación es necesario que aceptes los términos y condiciones. Para usar esta aplicación es necesario que aceptes los términos y condiciones",
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.pop(context),
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: Colors.red,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "ACEPTO TODO",
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
