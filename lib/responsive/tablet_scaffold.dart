//Se importa el framework flutter y hojas de diseño
import 'package:flutter/material.dart';
import 'package:dashboard_responsive/constants.dart';
import '../util/my_box.dart';
//Widget Stateful: permite realizar cambios en la pantalla
class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffold();
}

class _TabletScaffold extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    //Scaffold ayuda a darle un buen diseño a nuestra pagina
    return Scaffold(
    //appBar: crea el head que esta en la hoja constants
      appBar: myAppBar,
      //Se le da el color definido en la hoja constants
      backgroundColor: myDefaultBackground,
      //Se coloca el menu de la hoja de constats
      drawer: mydrawer,
      //Se crea una columna
      body: Column(
        //children: para contener varios Widgets
        children: [
          // AspectRatio: el ancho debe ser dos veces más grande que la altura
          AspectRatio(
            aspectRatio: 3,
            //Se define un cuadro con un tamaño
            child: SizedBox(
              width: double.infinity,
              //Se muestran las imagenes en lista, estan en la hoja MyBox
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),
          //Se muestra la lista que construida en constants
          Expanded(
              child: lista
          ),
        ],
      ),
    );
  }
}
