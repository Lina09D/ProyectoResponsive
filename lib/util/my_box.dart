//Se importa framework flutter y hojas de diseño
import 'package:flutter/material.dart';
//Layout: cuando una pantalla tiene ciertos pixeles muestra una hoja diferente
class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Damos espacio entre imagenes de 3px
    return Padding(padding: const EdgeInsets.all(3.0),
      //Se crea una fila
      child: Row(
        //Se alinea y se le damos espacio a cada una
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          //Se agregan las imagenes
          children:const [
            Expanded(child:Image(image: AssetImage('imagen/perro2.jpg')),),
            Expanded(child:Image(image: AssetImage('imagen/perro1.jpg')),),
            Expanded(child:Image(image: AssetImage('imagen/perro4.jpg')),),
            Expanded(child:Image(image: AssetImage('imagen/perro3.jpg')),)
          ]
      ),
    );
  }
}
