class Usuario {
  //? El atributo opcional
  String? nombre;
  int? edad;
  String? email;
  int? nume;
  //Las materias son obligatorias
  List<String> acom;

  //Las materias las inicializamos con una lista vacia
  Usuario({this.nombre, this.edad, this.email,this.nume , this.acom = const []});
}
