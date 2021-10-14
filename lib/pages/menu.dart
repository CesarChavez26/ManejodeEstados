import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Manejo de Estados'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(children: [
            Image(
                image: NetworkImage(
                    'https://res.cloudinary.com/practicaldev/image/fetch/s--J8e3KWw4--/c_imagga_scale,f_auto,fl_progressive,h_1080,q_auto,w_1080/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/l10fq2kiw28o3mok3v1m.jpg')),
            /*ElevatedButton(
              child: Text(
                'Lista de Paises',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              onPressed: () {
                Navigator.pushNamed(context, '/pagina1');
              },
            ),*/
            ElevatedButton(
              child: Text(
                'Reservar',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              onPressed: () {
                Navigator.pushNamed(context, '/pagina2');
              },
            ),
          ]),
        ));
  }
}
