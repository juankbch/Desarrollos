import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get2/controlPagina.dart';
import 'package:get2/pagina3.dart';
import 'package:get2/pagina4.dart';

class pagina2 extends StatefulWidget {
  const pagina2({super.key});

  @override
  State<pagina2> createState() => _pagina2State();
}

class _pagina2State extends State<pagina2> {
  controlPagina ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        Center(
          child: ElevatedButton.icon(
              onPressed: () {
                ctrl.cargaValor(1);
              },
              icon: Icon(Icons.next_plan_outlined),
              label: Text("Pagina 2")),
        ),
        Divider(),
        Center(
          child: ElevatedButton.icon(
              onPressed: () {
                ctrl.cargaValor(2);
              },
              icon: Icon(Icons.next_plan_outlined),
              label: Text("Pagina 3")),
        ),
        Divider(),
        Center(
          child: ElevatedButton.icon(
              onPressed: () {
                ctrl.cargaValor(2);
              },
              icon: Icon(Icons.next_plan_outlined),
              label: Text("Pagina 4")),
        ),
        Divider()
      ],
    ));
  }
}
