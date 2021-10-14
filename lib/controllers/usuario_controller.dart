import 'package:get/get.dart';
import 'package:manejo_estados_tarea/models/usuario.dart';

class UsuarioController extends GetxController {
  //Observable
  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  //Mtodo para crear usuario y cambiar el valor del observable
  void cargarUsuario(Usuario usuario) {
    this.existeUsuario.value = true;
    this.usuario.value = usuario;
  }

  void cambiarEdad(int edad) {
    //update ppara modificar un atributo
    this.usuario.update((val) {
      //!será obligatorio
      val!.edad = edad;
    });
  }

  void agregarAcom(String acom) {
    this.usuario.update((val) {
      //... Toma toda la lista y concatena SPREP
      val!.acom = [...val.acom, acom];
    });
  }
}
