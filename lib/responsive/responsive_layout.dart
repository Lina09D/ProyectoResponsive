//Se importa el framework flutter
import 'package:flutter/material.dart';
//Stateless: es un Widget que permite solo lectura
class ResponsiveLayout extends StatelessWidget {

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  final Widget tvScaffold;

  const ResponsiveLayout({super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
    required this.tvScaffold,
  });


  @override

  Widget build(BuildContext context) {
    //Lo que se realiza en el layout es que una pantalla tenga ciertos pixeles y muestra una hoja diferente
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return mobileScaffold;
          } else if (constraints.maxWidth < 1100) {
            return tabletScaffold;
          }
          else if (constraints.maxWidth < 1920) {
            return desktopScaffold;
          } else {
            return tvScaffold;
          }
        }
    );
  }
}
