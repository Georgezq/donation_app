import 'package:donation_app/pages/empleado/descarga_page.dart';
import 'package:donation_app/pages/empleado/home_empleado.dart';
import 'package:donation_app/pages/empleado/reporteAsis_page.dart';
import 'package:donation_app/pages/empleado/vistaDescarga_page.dart';
import 'package:donation_app/pages/empleadoLogin_page.dart';
import 'package:donation_app/pages/firsrt_page.dart';
import 'package:donation_app/pages/login_page.dart';
import 'package:donation_app/pages/programas_page.dart';
import 'package:donation_app/pages/register_page.dart';
import 'package:donation_app/pages/rol_page.dart';
import 'package:donation_app/pages/voluntario/home_voluntario.dart';
import 'package:donation_app/pages/voluntario/mapa_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const FirstPage(),
        '/rol': (context) => const RolPage(),
        '/login-empleado': (context) => const EmpleadoLoginPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/programas': (context) => const ProgramasPages(),
        '/home': (context) => const Home(),
        '/home-empleado': (context) => const HomeEmpleado(),
        '/mapa': (context) => const MapaPage(),
        '/reporte': (context) => const ReporteAsistenciaPage(),
        '/descarga': (context) => const DescargaPage(),
        '/descargado': (context) => const DescargadoPage(),

      },
      
    );
  }
}