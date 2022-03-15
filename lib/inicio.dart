import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_plantilla_1/Paginas/Calificaciones.dart';
import 'package:flutter_plantilla_1/Paginas/Dise%C3%B1o-menu/Drawer.dart';
import 'package:flutter_plantilla_1/Paginas/Resultado.dart';
import 'package:flutter_plantilla_1/main.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _paginaActual = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.black,
        ),
        body: _paginaActual == 0 ? const Calificaciones() : const Resultado(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.pages), label: "Calificaciones"),
            BottomNavigationBarItem(
              icon: Icon(Icons.pages),
              label: "Resultado",
            ),
          ],
        ),
      );
}
