import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class AsistenciaEmpleado extends StatefulWidget {
  const AsistenciaEmpleado({super.key});

  @override
  State<AsistenciaEmpleado> createState() => _AsistenciaEmpleadoState();
}

class _AsistenciaEmpleadoState extends State<AsistenciaEmpleado> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/empleadoAsis.jpeg'), // Ruta de la imagen de fondo
              fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
            ),
          ),
          child:  Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Aquí puedes agregar el contenido de tu pantalla
                // Más widgets aquí...
                _bottom(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottom(BuildContext context) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width / 1.8,
        height: MediaQuery.of(context).size.height / 18,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [HexColor("#28A14C"), HexColor("#28A14C")],
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: FormHelper.submitButton(
          "REPORTE",
          fontSize: 18,
          () {
            Navigator.pushNamed(context, '/reporte');
          },
          borderColor: Colors.transparent,
          btnColor: Colors.transparent, // Color del texto del botón
        ),
      ),
    ],
  );
}

}