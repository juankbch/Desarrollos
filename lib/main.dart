import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get2/controlPagina.dart';
import 'package:get2/pagina2.dart';
import 'package:get2/pagina3.dart';
import 'package:get2/pagina4.dart';

void main() {
  Get.put(controlPagina());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final paginas = [
  pagina2(),
  pagina3(),
  pagina4(),
];
int contP = 0;

class _MyHomePageState extends State<MyHomePage> {
  controlPagina ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Obx(() => paginas[ctrl.cambiaPagina]),
    );
  }
}
