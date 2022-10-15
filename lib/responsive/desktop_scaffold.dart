//Se importa framework flutter y otras hojas de diseño
import 'package:flutter/material.dart';
import 'package:dashboard_responsive/constants.dart';
import 'package:dashboard_responsive/util/my_box.dart';
//Widget Stateful: permite realizar cambios en la pantalla
class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);
//Widget sobre escrito.
  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    //Scaffold ayuda a darle un buen diseño a nuestra pagina
    return Scaffold(
      //appBar: crea el head que esta en la hoja constants
      appBar: myAppBar,
      //Se le da el color definido en la hoja constants
      backgroundColor: myDefaultBackground,
      //Se construye una fila en el cuerpo
      body: Row(
        //children: para contener varios Widgets
        children: [
          //Se coloca el menu que construido en la hoja de constats
          mydrawer,
          //Esto crea otra columna
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  // AspectRatio: el ancho debe ser dos veces más grande que la altura

                  AspectRatio(
                    aspectRatio: 3,
                    child: SizedBox(
                      //Se define un cuadro con un tamaño
                      width: double.infinity,
                      //Se crea una lista
                      child: ListView.builder(
                        //Este ayuda a que las imagenes se muestren una vez
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            //Mybox contiene las imagenes que estan en esa hoja
                            return const MyBox();
                          }),
                    ),
                  ),
                  //Se muestra la lista creada en constants
                  Expanded(
                      child: lista
                  ),
                ],
              )),
          //Expanded: muestra una imagen como si fuera un aside
          Expanded(
            child: Column(
              children: const [
                Expanded(
                    child:Image(
                        image: AssetImage('imagen/perro.jpg')
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
