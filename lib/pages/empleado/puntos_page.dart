import 'package:flutter/material.dart';

class PuntosPage extends StatefulWidget {
  const PuntosPage({super.key});

  @override
  State<PuntosPage> createState() => _PuntosPageState();
}

class _PuntosPageState extends State<PuntosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/puntos.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.fill, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .15),
          child: const  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Aquí puedes agregar el contenido de tu pantalla
              // Más widgets aquí...
            ],
          ),
        ),
      ),
    );
  }
}