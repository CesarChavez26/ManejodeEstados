import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados_tarea/pages/menu.dart';

import 'pages/pagina1.dart';
import 'pages/pagina2.dart';
import 'pages/pagina3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      initialRoute: '/menu',
      getPages: [
        //Podemos usar inyeccion de dependencias
        GetPage(name: '/menu', page: () => Menu()),
        GetPage(name: '/pagina1', page: () => Pagina1()),
        GetPage(name: '/pagina2', page: () => Pagina2()),
        GetPage(name: '/pagina3', page: () => Pagina3())
      ],
    );
  }
}
