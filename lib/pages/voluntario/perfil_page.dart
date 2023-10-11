import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/perfil.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _button(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.8,
          height: MediaQuery.of(context).size.height / 18,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [ HexColor("#DD1020"), HexColor("#DD1020")],
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: FormHelper.submitButton(
            "CERRAR SESIÓN", fontSize: 18,
             () {
              Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
            },
            borderColor: Colors.transparent,
            btnColor: Colors.transparent, // Color del texto del botón
          ),
        ),
      ],
    );
  }
}