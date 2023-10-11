import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class VoluntariosPage extends StatefulWidget {
  const VoluntariosPage({super.key});

  @override
  State<VoluntariosPage> createState() => _VoluntariosPageState();
}

class _VoluntariosPageState extends State<VoluntariosPage> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/voluntarios.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.fill, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .75),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _continue(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _continue(BuildContext context){
    return  Column(
      children: [
        GestureDetector(
          onTap: (){
         Navigator.pushNamed(context, "/programas");
      },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 20,
                child: FormHelper.submitButton(
                  "DESCARGAR", fontSize: 16,
                   () {
                       Navigator.pushNamed(context, "/descarga");
                  },
                  borderColor: Colors.transparent,
                  btnColor: HexColor("#4CAF50"),
                  txtColor: Colors.white,
                  prefixIcon: Icon(Icons.download_for_offline, color: Colors.white, size: 24,)
                ),
              ),
               
            ],
          ),
        ),
       
      ]
    );
  }
}