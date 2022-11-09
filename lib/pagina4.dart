import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controlPagina.dart';

class pagina4 extends StatefulWidget {
  const pagina4({super.key});

  @override
  State<pagina4> createState() => _pagina4State();
}

class _pagina4State extends State<pagina4> {
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
