import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Persona> _personas = [
    Persona("name1", "lastname1", "phone1"),
    Persona("name2", "lastname2", "phone2"),
    Persona("name3", "lastname3", "phone3"),
    Persona("name4", "lastname4", "phone4"),
    Persona("name5", "lastname5", "phone5"),
    Persona("name6", "lastname6", "phone6"),
    Persona("name7", "lastname7", "phone7"),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SADsd"),
      ),
      body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                _borrarPersona(context, _personas[index]);
              },
              title:
                  Text("${_personas[index].name} ${_personas[index].lastname}"),
              subtitle: Text(_personas[index].phone),
              leading: CircleAvatar(
                child: Text(_personas[index].name.substring(0, 1)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            );
          }),
    );
  }

  _borrarPersona(context, Persona persona) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("ELIMINAR CONTACTO"),
        content: Text("¿ESTA SEGURO DE ELIMINAR A " + persona.name + '?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("CANCELAR"),
          ),
          TextButton(
            onPressed: () {
              print(persona.name);
              setState(() {
                _personas.remove(persona);
              });
              Navigator.pop(context);
            },
            child: const Text(
              "BORRAR",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Persona {
  String name;
  String lastname;
  String phone;
  Persona(this.name, this.lastname, this.phone) {
    print("HOLA");
  }
}
