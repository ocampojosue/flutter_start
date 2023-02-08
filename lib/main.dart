// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:api_rest_yt_course/models/gif.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<Gif>?> _getGifs() async {
    final response = await http.get(
      Uri.parse(
          "https://api.giphy.com/v1/gifs/trending?api_key=SP6Ny1kGNN34J8AHZpl4zxVXM9Fnoqj8&limit=10&rating=g"),
    );
    List<Gif> gifs = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      //print(jsonData["data"][0]["images"]["downsized"]["url"]);
      for (var item in jsonData["data"]) {
        gifs.add(Gif(item["title"], item["images"]["downsized"]["url"]));
      }
      return gifs;
    } else {
      throw Exception("FALLÓ LA CONEXIÓN");
    }
  }

  late final Future<List<Gif>?> _listadoGifs = _getGifs();

  @override
  void initState() {
    super.initState();
    _listadoGifs;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Appp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App BaR'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(0.0),
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
