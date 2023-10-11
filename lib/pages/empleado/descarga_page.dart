import 'package:flutter/material.dart';

class DescargaPage extends StatefulWidget {
  const DescargaPage({super.key});

  @override
  State<DescargaPage> createState() => _DescargaPageState();
}

class _DescargaPageState extends State<DescargaPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/descargado');
        },
        child: Container(
          width: double.infinity,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/descarga.jpeg'), // Ruta de la imagen de fondo
              fit: BoxFit.fill, // Ajusta la imagen al tamaño de la pantalla
            ),
          ),
          child:  Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .15),
            child: Column(
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