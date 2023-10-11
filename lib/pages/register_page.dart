import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration:   BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/register_page.jpeg'), // Ruta de la imagen de fondo
              fit: BoxFit.fill, // Ajusta la imagen al tamaño de la pantalla
            ),
          ),
          child:  Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               _continue(context)
              ],
            ),
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
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 18,
                child: FormHelper.submitButton(
                  "Continuar", fontSize: 18,
                   () {
                       Navigator.pushNamed(context, "/programas");
                  },
                  borderColor: Colors.transparent,
                  btnColor: Colors.transparent,
                  txtColor: Colors.black,
                ),
              ),
               Container(
                decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [ HexColor("#28A14C"), HexColor("#28A14C")],
              ),
              borderRadius: BorderRadius.circular(24),
            ),
                child: const Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white, size: 50,))
            ],
          ),
        ),
       
      ]
    );
  }
}