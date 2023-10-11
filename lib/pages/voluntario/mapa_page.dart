import 'package:flutter/material.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({super.key});

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 65),
        child: Container(
          width: double.infinity,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/mapa.jpeg'), // Ruta de la imagen de fondo
              fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
            ),
          ),
          child:  Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .75),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Aquí puedes agregar el contenido de tu pantalla
                // Más widgets aquí...
              ],
            ),
          ),
        ),
      ),
    );
  }
}