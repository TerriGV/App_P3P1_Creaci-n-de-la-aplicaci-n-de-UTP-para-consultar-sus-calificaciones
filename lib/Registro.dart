import 'package:flutter/material.dart';
import 'package:flutter_plantilla_1/Home_page.dart';

class Registrace extends StatefulWidget {
  static String id = 'login_page';

  Registrace({Key? key}) : super(key: key);

  @override
  State<Registrace> createState() => _RegistraceState();
}

class _RegistraceState extends State<Registrace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  "assets/images/registro.png",
                  height: 400.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              _NombreTextField(),
              const SizedBox(
                height: 15,
              ),
              _registraceTextField(),
              const SizedBox(
                height: 15,
              ),
              _ContrasenaTextField(),
              const SizedBox(
                height: 20,
              ),
              _ConfirmarContrasenaTextField(),
              const SizedBox(
                height: 20,
              ),
              _MatriculaTextField(),
              const SizedBox(
                height: 20,
              ),
              _bottonIniciarSesion(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ContrasenaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Contraseña',
            labelText: 'contraseña',
          ),
          onChanged: (Value) {},
        ),
      );
    });
  }

//registrarce
  Widget _registraceTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Ejemplo.utponiente.edu.mx',
            labelText: 'Gmail',
          ),
          onChanged: (Value) {},
        ),
      );
    });
  }

//Confirmar Contraseña
  Widget _ConfirmarContrasenaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Confirmar Contraseña',
            labelText: 'Confirmar Contraseña',
          ),
          onChanged: (Value) {},
        ),
      );
    });
  }

  _NombreTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Nombre',
            labelText: 'Nombre',
          ),
          onChanged: (Value) {},
        ),
      );
    });
  }
}

Widget _MatriculaTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          icon: Icon(Icons.email),
          hintText: '20331123',
          labelText: 'Matricula',
        ),
        onChanged: (Value) {},
      ),
    );
  });
}

//Botones
_bottonIniciarSesion() {
  return StreamBuilder(
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text(
              "Registrarce",
              style: TextStyle(
                fontSize: 16.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          });
    },
  );
}
