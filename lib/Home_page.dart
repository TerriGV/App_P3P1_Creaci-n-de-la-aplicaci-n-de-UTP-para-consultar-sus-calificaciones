// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_plantilla_1/Registro.dart';
import 'package:flutter_plantilla_1/inicio.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  "assets/images/logo.png",
                  height: 600.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              _MatriculaTextField(),
              const SizedBox(
                height: 15,
              ),
              _ContrasenaTextField(),
              const SizedBox(
                height: 20,
              ),
              _bottonLogin(),
              _bottonregistro()
            ],
          ),
        ),
      ),
    );
  }

  Widget _MatriculaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
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
            hintText: 'Ejemplo.utponiente.edu.mx',
            labelText: 'Gmail',
          ),
          onChanged: (Value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // ignore: deprecated_member_use
        return RaisedButton(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: const Text(
                "Iniciar Sesion",
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
                MaterialPageRoute(builder: (context) => Inicio()),
              );
            });
      },
    );
  }

  Widget _bottonregistro() {
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
                MaterialPageRoute(builder: (context) => Registrace()),
              );
            });
      },
    );
  }
}
