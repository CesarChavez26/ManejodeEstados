import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados_tarea/controllers/controller.dart';

class Pagina1 extends StatelessWidget {
  Pagina1({Key? key}) : super(key: key);

  final PaisesControlller paisesController = Get.put(PaisesControlller());

  List<String> paises = [
    '🇲🇽 México',
    '🇧🇷 Brasil',
    '🇺🇸 EUA',
    '🇦🇷 Argentina',
    '🇨🇦 Canada',
    '🇩🇪 Alemania',
    '🇫🇷 Francia',
    '🇨🇱 Chile',
    '🇪🇸 España',
    '🏴󠁧󠁢󠁥󠁮󠁧󠁿󠁧󠁢󠁥󠁮󠁧 Inglaterra',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<PaisesControlller>(
          init: paisesController,
          builder: (PaisesControlller paisesCtrl) {
            return ListView.builder(
              itemCount: paisesCtrl.list.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(
                    paisesCtrl.list[index],
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: IconButton(
                    onPressed: () => paisesCtrl.remove(index),
                    icon: Icon(Icons.close),
                  ),
                );
              },
            );
          },
        ),
        bottomNavigationBar: Container(
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black)),
            child: Text('Añadir País',
                style: TextStyle(color: Colors.white, fontSize: 22)),
            onPressed: () {
              var rand = new Random();
              paisesController.add(paises[rand.nextInt(paises.length)]);
            },
          ),
        ));
  }
}
