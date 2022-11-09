import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get2/controlPagina.dart';

class pagina3 extends StatefulWidget {
  const pagina3({super.key});

  @override
  State<pagina3> createState() => _pagina3State();
}

class _pagina3State extends State<pagina3> {
  controlPagina ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: [
      Center(
        child: ElevatedButton.icon(
            onPressed: () {
              ctrl.cargaValor(0);
            },
            icon: Icon(Icons.settings_backup_restore_sharp),
            label: Text("Principal")),
      ),
      Divider()
    ]));
  }
}
