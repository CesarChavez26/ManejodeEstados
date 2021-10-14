import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:manejo_estados_tarea/controllers/usuario_controller.dart';
import 'package:manejo_estados_tarea/models/usuario.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Guardar la informacion de la inyeccion de dependencia
    final usuarioCtrl = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva'),
      ),
      //Obx es de Getx y cada vez que cambia una proiwedad de estado, se redibuja el widget
      body: Obx(() => usuarioCtrl.existeUsuario.value
          ? InformacionUsuario(
              usuario: usuarioCtrl.usuario.value,
            )
          : NoUsuario()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.toNamed(
          'pagina3',
        ),
      ),
    );
  }
}

class NoUsuario extends StatelessWidget {
  const NoUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'No existe información de reserva',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const InformacionUsuario({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Información de la Reservación'),
          Divider(),
          ListTile(
            title: Text('Nombre completo: ${this.usuario.nombre}'),
          ),
          Divider(),
          ListTile(
            title: Text('Edad:  ${this.usuario.edad}'),
          ),
          Divider(),
          ListTile(
            title: Text('Email:  ${this.usuario.email}'),
          ),
          Divider(),
          ListTile(
            title: Text('Número Teléfonico:  ${this.usuario.nume}'),
          ),
          Text('Acompañantes'),
          Divider(),
          ...usuario.acom.map((e) => ListTile(
                title: Text(e),
              ))
        ],
      ),
    );
  }
}
