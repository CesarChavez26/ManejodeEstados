import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:manejo_estados_tarea/controllers/usuario_controller.dart';
import 'package:manejo_estados_tarea/models/usuario.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.arguments);

    String _nom = "";
    String _email = "";
    int _edad = 0;
    int _num = 0;
    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Realice su reservación aquí',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Nombre completo',
                  labelText: 'Ingrese su nombre completo',
                  suffixIcon: Icon(Icons.text_fields)),
              onChanged: (valor) {
                _nom = valor;
              },
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Edad',
                labelText: 'Ingrese su edad',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              keyboardType: TextInputType.number,
              onChanged: (valor) {
                _edad = int.parse(valor);
              },
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Email',
                labelText: 'Ingrese su email',
                suffixIcon: Icon(Icons.email),
              ),
              onChanged: (valor) {
                _email = valor;
              },
            ),
            Divider(),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Teléfono',
                labelText: 'Ingrese su número teléfonico',
                suffixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.number,
              onChanged: (valor) {
                _num = int.parse(valor);
              },
            ),
            Divider(),
            MaterialButton(
              color: Colors.orange,
              child: Text('Agregar acompañantes',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioCtrl.agregarAcom(
                    'Acompañante #${usuarioCtrl.usuario.value.acom.length + 1}');
              },
            ),
            MaterialButton(
              color: Colors.orange,
              child: Text(
                'Realizar reserva',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                usuarioCtrl.cargarUsuario(Usuario(
                    nombre: _nom, email: _email, nume: _num, edad: _edad));
              },
            ),
          ],
        ),
      ),
    );
  }
}
