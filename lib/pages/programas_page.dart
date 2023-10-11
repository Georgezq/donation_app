import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class ProgramasPages extends StatefulWidget {
  const ProgramasPages({super.key});

  @override
  State<ProgramasPages> createState() => _ProgramasPagesState();
}

class _ProgramasPagesState extends State<ProgramasPages> {
  List<String> puntos = [
  "Compromiso y Puntualidad.",
  "Respeto y Empatía.",
  "Seguridad.",
  "Confidencialidad."
];

List<String> puntosA = [
  "Compromiso y Puntualidad.",
  "Respeto y Empatía.",
  "Seguridad.",
  "Confidencialidad."
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/programas_pages.jpeg'), // Ruta de la imagen de fondo
              fit: BoxFit.fill, // Ajusta la imagen al tamaño de la pantalla
            ),
          ),
          child:  Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: HexColor("#FFF1BE"),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: .4,
                            offset:  Offset(0, 2),
                          ),
                        ],
                    ),
                    child: _medicinas(context)
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Container(
                     width: MediaQuery.of(context).size.width / 2.5,
                     height: MediaQuery.of(context).size.width / 2.5,
                     decoration: BoxDecoration(
                     color: HexColor("#FFF1BE"),
                     boxShadow:  const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: .4,
                        offset:  Offset(0, 2),
                      ),
                    ],
                   ),
                     child: _programaFruver(context)
                    ),
                   )
                ],
              ),
            
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: HexColor("#FFF1BE"),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: .4,
                            offset:  Offset(0, 2),
                          ),
                        ],
                    ),
                    child: _tienda(context)
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Container(
                     width: MediaQuery.of(context).size.width / 2.5,
                     height: MediaQuery.of(context).size.width / 2.5,
                     decoration: BoxDecoration(
                     color: HexColor("#FFF1BE"),
                     boxShadow:  const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: .4,
                        offset:  Offset(0, 2),
                      ),
                    ],
                   ),
                     child: _huerto(context)
                    ),
                   )
                ],
              ),
            
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: HexColor("#FFF1BE"),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: .4,
                            offset:  Offset(0, 2),
                          ),
                        ],
                    ),
                    child: _desayunos(context)
                    ),
                  ),
                ],
              ),
            
            ],
                     ),
          ),
        ),
      ),
    );
  }

  Widget _medicinas(BuildContext context){
    return  GestureDetector(
      onTap: (){
           showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _reglasBanco(context);
                },
              );
      },
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/medicina.png"),
                  ),
                   SizedBox(
                    width: 150,
                     child: Text("Banco de medicinas", 
                         style: TextStyle(
                           fontSize: 20,
                           color: HexColor("#2C481E"),
                           fontWeight: FontWeight.bold
                         ) ,
                         textAlign: TextAlign.center,
                         ),
                   )
                ],
              )
              );
  }

   Widget _programaFruver(BuildContext context){
    return  GestureDetector(
      onTap: (){
         showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _reglasFruve(context);
                },
              );
      },
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/fruta.png"),
                  ),
                   SizedBox(
                    width: 150,
                     child: Text("Programa Fruver", 
                         style: TextStyle(
                           fontSize: 20,
                           color: HexColor("#2C481E"),
                           fontWeight: FontWeight.bold
                         ) ,
                         textAlign: TextAlign.center,
                         ),
                   )
                ],
              )
              );
  }

  Widget _tienda(BuildContext context){
    return  GestureDetector(
      onTap: (){
        showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _reglastienda(context);
                },
              );
      },
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/tienda.png"),
                  ),
                   SizedBox(
                    width: 150,
                     child: Text("Programa Tiendita", 
                         style: TextStyle(
                           fontSize: 20,
                           color: HexColor("#2C481E"),
                           fontWeight: FontWeight.bold
                         ) ,
                         textAlign: TextAlign.center,
                         ),
                   )
                ],
              )
              );
  }

  Widget _huerto(BuildContext context){
    return  GestureDetector(
      onTap: (){
         showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _reglasHuerto(context);
                },
              );
      },
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/verduras.png"),
                  ),
                   SizedBox(
                    width: 150,
                     child: Text("Huerto Comunitario", 
                         style: TextStyle(
                           fontSize: 20,
                           color: HexColor("#2C481E"),
                           fontWeight: FontWeight.bold
                         ) ,
                         textAlign: TextAlign.center,
                         ),
                   )
                ],
              )
              );
  }

  Widget _desayunos(BuildContext context){
    return  GestureDetector(
      onTap: (){
        showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _reglasDesayuno(context);
                },
              );
      },
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset("assets/images/cereal.png"),
                  ),
                   SizedBox(
                    width: 150,
                     child: Text("Desayuno “Mejores días”", 
                         style: TextStyle(
                           fontSize: 20,
                           color: HexColor("#2C481E"),
                           fontWeight: FontWeight.bold
                         ) ,
                         textAlign: TextAlign.center,
                         ),
                   )
                ],
              )
              );
  }

  Widget _reglasBanco(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return AlertDialog(
    backgroundColor: isDarkMode ? Colors.black : Colors.white,
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Reglas Generales",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          // Lista de puntos
          for (int i = 0; i < puntos.length; i++)
            ListTile(
              leading: CircleAvatar(
                child: Text((i + 1).toString()), // Número correspondiente al punto
              ),
              title: Text(puntos[i]),
            ),

          Text(
            "Actividades",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Clasificación de Medicamentos:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Los voluntarios pueden ayudar a clasificar y organizar los medicamentos donados.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Empaque de Kits de Medicamentos:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Preparar kits de medicamentos básicos para distribuir a personas necesitadas.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Educación en Salud:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Ofrecer charlas educativas sobre el uso seguro de medicamentos y la importancia de seguir las instrucciones médicas.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),

        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          // Cerrar el modal
           Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _bienvenida(context);
                },
              );
        },
        child: const Text("Aceptar"),
      ),
    ],
  );
}

Widget _reglasFruve(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return AlertDialog(
    backgroundColor: isDarkMode ? Colors.black : Colors.white,
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Reglas Generales",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          // Lista de puntos
          for (int i = 0; i < puntos.length; i++)
            ListTile(
              leading: CircleAvatar(
                child: Text((i + 1).toString()), // Número correspondiente al punto
              ),
              title: Text(puntos[i]),
            ),

          Text(
            "Actividades",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Clasificación de Frutas:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Los voluntarios pueden ayudar a clasificar y empacar las frutas frescas para su distribución.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Distribución de Frutas:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Participar en la entrega de frutas a las personas y familias necesitadas.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: " Promoción de una Dieta Saludable:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Ofrecer consejos sobre una alimentación equilibrada y saludable a través de folletos informativos.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),

        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          // Cerrar el modal
           Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _bienvenida(context);
                },
              );
        },
        child: const Text("Aceptar"),
      ),
    ],
  );
}

Widget _reglastienda(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return AlertDialog(
    backgroundColor: isDarkMode ? Colors.black : Colors.white,
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Reglas Generales",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          // Lista de puntos
          for (int i = 0; i < puntos.length; i++)
            ListTile(
              leading: CircleAvatar(
                child: Text((i + 1).toString()), // Número correspondiente al punto
              ),
              title: Text(puntos[i]),
            ),

          Text(
            "Actividades",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Clasificación y Organización:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Ayudar a clasificar y organizar prendas de vestir, artículos de higiene personal y del hogar en la tiendita.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: " Atención al Cliente:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Asistir a las personas que visitan la tiendita, ayudándolas a encontrar los productos.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: " Mantenimiento de Inventarios:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Realizar un seguimiento del inventario y notificar cuando sea necesario reabastecer productos.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),

        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          // Cerrar el modal
           Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _bienvenida(context);
                },
              );
        },
        child: const Text("Aceptar"),
      ),
    ],
  );
}

Widget _reglasHuerto(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return AlertDialog(
    backgroundColor: isDarkMode ? Colors.black : Colors.white,
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Reglas Generales",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          // Lista de puntos
          for (int i = 0; i < puntos.length; i++)
            ListTile(
              leading: CircleAvatar(
                child: Text((i + 1).toString()), // Número correspondiente al punto
              ),
              title: Text(puntos[i]),
            ),

          Text(
            "Actividades",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Siembra y Cosecha:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Participar en la siembra, cuidado y cosecha de alimentos en el huerto comunitario.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Talleres de Jardinería:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Ofrecer talleres educativos sobre jardinería y agricultura sostenible a la comunidad.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "  Mantenimiento del Huerto:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Ayudar en el mantenimiento diario del huerto, como el riego y la limpieza.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),

        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          // Cerrar el modal
           Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _bienvenida(context);
                },
              );
        },
        child: const Text("Aceptar"),
      ),
    ],
  );
}

Widget _reglasDesayuno(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return AlertDialog(
    backgroundColor: isDarkMode ? Colors.black : Colors.white,
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Reglas Generales",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          // Lista de puntos
          for (int i = 0; i < puntos.length; i++)
            ListTile(
              leading: CircleAvatar(
                child: Text((i + 1).toString()), // Número correspondiente al punto
              ),
              title: Text(puntos[i]),
            ),

          Text(
            "Actividades",
            style: TextStyle(color: HexColor("#D21F2B")),
          ),

          RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Preparación de Alimentos:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Colaborar en la preparación y servir desayunos nutritivos a las personas que asisten.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "Actividades Recreativas:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Organizar actividades recreativas para los beneficiarios, como juegos y entretenimiento.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),
RichText(
  text: const TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: "  Recopilación de Comentarios:",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
      TextSpan(
        text: " Recopilar comentarios y sugerencias de los beneficiarios para mejorar el programa.",
        style: TextStyle(
          color: Colors.black, // Cambia el color a tu preferencia
        ),
      ),
    ],
  ),
),

        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          // Cerrar el modal
          Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return _bienvenida(context);
                },
              );
        },
        child: const Text("Aceptar"),
      ),
    ],
  );
}

Widget _bienvenida(BuildContext context) {
    return AlertDialog(
  content: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        'assets/images/exito.png', // Reemplaza con la ruta de tu imagen
        width: 100, // Ajusta el ancho de la imagen según tus necesidades
        height: 100, // Ajusta la altura de la imagen según tus necesidades
      ),
          Text(
        "¡Bienvenido!",
        style: TextStyle(
          fontSize: 20,
          color: HexColor("#4CAF50"),
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 10), // Espacio entre la imagen y el texto
      const Text(
        "Su registro se ha completado con éxito",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  ),
  actions: [
    TextButton(
      onPressed: () {
        // Cerrar el modal
        Navigator.of(context).pop();
      },
      child: const Text("Aceptar"),
    ),
  ],
);
  }


}