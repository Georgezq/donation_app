import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class RolPage extends StatefulWidget {
  const RolPage({super.key});

  @override
  State<RolPage> createState() => _RolPageState();
}

class _RolPageState extends State<RolPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rol.jpeg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
          ),
        ),
        child:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              _body(context)
             ],
          ),
        ),
      ),
    );
  }




 Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    
          Container(
            constraints: const BoxConstraints(
             maxWidth: 400.0, // Establece el ancho máximo deseado
           ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("¿Cómo deseas ingresar?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: HexColor("#0A9533"),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              )
            ],
          ),
        ),
    
        const SizedBox(height: 20,),
    
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                color: HexColor("#FFF1BE"),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset:  Offset(0, 1),
                          ),
                ],
            ),
            child: _empleado(context)
            )
          ],
        ),
    
        const SizedBox(height: 50,),
    
    
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                color: HexColor("#FFF1BE"),
                borderRadius: BorderRadius.circular(12),
               boxShadow: const [
                  BoxShadow(
                            color: Colors.black,
                            blurRadius: 2,
                            offset:  Offset(0, 1),
                          ),
                ],
            ),
             child: _voluntario(context),
            ),
             
          ],
        ),
    
       
    
      ],
    );
  }

  Widget _empleado(BuildContext context){
    return  GestureDetector(
      onTap: (){
         Navigator.pushNamed(context, "/login-empleado");
      },
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   SizedBox(
                     child: Image.asset("assets/images/evaluacion.png"),
                   ),
                    Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10),
                     child: SizedBox(
                       child: Text("Empleado", 
                           style: TextStyle(
                             fontSize: 20,
                             color: HexColor("#2C481E"),
                             fontWeight: FontWeight.bold
                           ) ,
                           ),
                     ),
                   ),
                 ],
               )
              );
  }

  Widget _voluntario(BuildContext context){
    
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/login");
      },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset("assets/images/voluntario.png"),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                child: Text("Voluntario", 
                    style: TextStyle(
                      fontSize: 20,
                      color: HexColor("#2C481E"),
                      fontWeight: FontWeight.bold
                    ) ,
                    ),
              ),
            ),
          ],
        )
              );
  }



}