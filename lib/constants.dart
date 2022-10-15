//Se importa el framework flutter
import 'package:flutter/material.dart';
//se define myDefaultBackground sera un color este sirve pues sera el tono del color
var myDefaultBackground = Colors.blueGrey;
//AppBar: sirve para hacer el encabezado de página
var myAppBar = AppBar(
  //Se agrega un color en mi caso es el color negro
  backgroundColor: Colors.black26,
//Se le da un titulo centrado con un color y un tamaño de letra
  title: const Center(child:Text('Lilo Pets',style: TextStyle(color: Colors.white, fontSize: 24) ),

  ),
//Se arega una imagen esta quedara al lado derecho tipo icono.
  flexibleSpace: const Image(
    alignment: Alignment.topRight,
    image: AssetImage('imagen/perro0.jpg'),
    width: 55,
    height: 55,
  ),
);
//Drawer: es un Widget de flutter es para desplegar un menu
var mydrawer = Drawer(
  //Se crea una lista
  child: ListView(
    //
    padding: EdgeInsets.zero,
    //Children: para contener varios Widgets
    children: [
      //Se le da encabezado al menú
      DrawerHeader(
        //Le agregamos un color
        decoration: const BoxDecoration(color: Colors.grey),
        //Child: para contener un solo widget
        child: Column(
          //Children: para contener varios Widgets
          children: const [
            //Se agrega texto de un color y medidas
            Text(
              'U S U A R  I O',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            //Se agrega un icono
            Icon(
              Icons.add_a_photo_outlined,
              color: Colors.white,
              size: 70.0,
            )
          ],
        ),
      ),
      //Se una lista con un icono,color,un tamaño y un texto.
      const ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('P R I N C I P A L'),
      ),
      //Se una lista con un icono,color,un tamaño y un texto.
      const ListTile(
        leading: Icon(
          Icons.favorite,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('F A V O R I T O'),
      ),
      //Se una lista con un icono,color,un tamaño y un texto.
      const ListTile(
        leading: Icon(
          Icons.chat,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('M E N S A J E S'),
      ),
      //Se una lista con un icono,color,un tamaño y un texto.
      const ListTile(
        leading: Icon(
          Icons.notifications,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('N O T I F I C A C I O N E S'),
      ),
      //Se una lista con un icono,color,un tamaño y un texto.
      const ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('C O N F I G U R A C I O N '),
      ),
      //Se una lista con un icono,color,un tamaño y un texto.
      const ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text('S A L I R '),
      ),

    ],
  ),
);
//Se define una variable lista que crea una lista
var lista=ListView(
  //children: para tener varios widgets
  children: const <Widget>[
    //Se crea un campo en la lista que contiene una imagen,un texto alineado y de un color con su respectivo tamaño
    ListTile(
      leading:Image(
        alignment: Alignment.topRight,
        image: AssetImage('imagen/perro3.jpg'),
        width: 55,
        height: 55,
      ),
      title: Text('Cachorro de 3 meses',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 24)),
    ),

  //Se crea un campo en la lista que contiene una imagen,un texto alineado y de un color con su respectivo tamaño    ListTile(
  ListTile(
      leading:Image(
        alignment: Alignment.topRight,
        image: AssetImage('imagen/perro4.jpg'),
        width: 55,
        height: 55,
      ),
      title: Text('Cachorro de 5 meses',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 24)),
    ),

//Se crea un campo en la lista que contiene una imagen,un texto alineado y de un color con su respectivo tamaño    ListTile(
    ListTile(
      leading:Image(
        alignment: Alignment.topRight,
        image: AssetImage('imagen/perro1.jpg'),
        width: 55,
        height: 55,
      ),
      title: Text('Cachorro de un mes',textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 24)),
    ),
  ],
);
