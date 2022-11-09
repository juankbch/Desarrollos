import 'package:get/get.dart';

class controlPagina extends GetxController {
  final _cambia = 0.obs;

  void cargaValor(int x) {
    _cambia.value = x;
  }

  int get cambiaPagina => _cambia.value;
}
