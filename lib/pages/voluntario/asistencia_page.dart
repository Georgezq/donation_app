import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class AsistenciaPage extends StatefulWidget {
  const AsistenciaPage({super.key});

  @override
  State<AsistenciaPage> createState() => _AsistenciaPageState();
}

class _AsistenciaPageState extends State<AsistenciaPage> {
  bool? value = false;
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/asistencia.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .45),
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
    );
  }

  Widget _bottom(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 75),
        child: CheckboxListTile(
          value: value,
          onChanged: (bool? newValue) {
            setState(() {
              value = newValue;
            });
          },
          activeColor: Colors.green,
          title: const Text(
            "Marcar Asistencia",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
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
          "REGISTRAR",
          fontSize: 18,
          () {
            Navigator.pushNamed(context, '/mapa');
          },
          borderColor: Colors.transparent,
          btnColor: Colors.transparent, // Color del texto del botón
        ),
      ),
    ],
  );
}

}