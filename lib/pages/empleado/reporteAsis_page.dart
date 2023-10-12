import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class ReporteAsistenciaPage extends StatefulWidget {
  const ReporteAsistenciaPage({super.key});

  @override
  State<ReporteAsistenciaPage> createState() => _ReporteAsistenciaPageState();
}

class _ReporteAsistenciaPageState extends State<ReporteAsistenciaPage> {

  bool isImageVisible = false; // Estado para rastrear la visibilidad de la imagen

  void toggleImageVisibility() {
    setState(() {
      isImageVisible = !isImageVisible; // Cambiar el estado
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/reporteAsis.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 230),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Aquí puedes agregar el contenido de tu pantalla
              // Más widgets aquí...
              _body(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _body(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/voluntarios');
      },
      child: Column(
        children: [
          TextButton.icon(
            onPressed: (){
              toggleImageVisibility(); // Alternar la visibilidad de la imagen al presionar el botón
            }, 
            icon: Icon(Icons.calendar_month, color: HexColor("#0A9533"),), 
          label: const Text("Fecha", style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),
          ),
          style: ButtonStyle(
            iconSize: MaterialStateProperty.all(40),
          ) ,
          ),
          if (isImageVisible) // Mostrar la imagen si isImageVisible es true
            Image.asset(
              'assets/images/calendar.jpeg', // Ruta de la imagen que deseas mostrar
              width: 350,
              height: 300,
              fit: BoxFit.contain,
            ),
        ],
      ),
    );
  }
}