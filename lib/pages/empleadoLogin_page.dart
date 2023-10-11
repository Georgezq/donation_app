import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class EmpleadoLoginPage extends StatefulWidget {
  const EmpleadoLoginPage({super.key});

  @override
  State<EmpleadoLoginPage> createState() => _EmpleadoLoginPageState();
}

class _EmpleadoLoginPageState extends State<EmpleadoLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/empleado-login.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .65),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Aquí puedes agregar el contenido de tu pantalla
              _button(context)
              // Más widgets aquí...
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
              colors: [ HexColor("#28A14C"), HexColor("#28A14C")],
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: FormHelper.submitButton(
            "ACCEDER", fontSize: 18,
             () {
              Navigator.pushNamedAndRemoveUntil(context, '/home-empleado', (route) => false);
            },
            borderColor: Colors.transparent,
            btnColor: Colors.transparent, // Color del texto del botón
          ),
        ),

        
      ],
    );
  }

}