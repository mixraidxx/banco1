import 'package:bankapp/views/MainView.dart';
import 'package:flutter/material.dart';
import 'package:bankapp/Brand/Extensions.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenido",
                style: BrandStyle.tittle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                  "Ingresa la siguiente información para empezar a disfrutar los beneficios de la app.",
                  style: BrandStyle.body),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Usuario",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Contraseña",
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, MainView.routeName);
                  },
                  child: Container(
                      width: double.infinity,
                      child: Center(child: Text("Ingresar"))))
            ],
          ),
        ),
      ),
    );
  }
}
