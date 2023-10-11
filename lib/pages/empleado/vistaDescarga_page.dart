import 'package:flutter/material.dart';

class DescargadoPage extends StatefulWidget {
  const DescargadoPage({super.key});

  @override
  State<DescargadoPage> createState() => _DescargadoPageState();
}

class _DescargadoPageState extends State<DescargadoPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/home-empleado');
        },
        child: Container(
          width: double.infinity,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/descargado.jpeg'), // Ruta de la imagen de fondo
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
      ),
    );
  }
}