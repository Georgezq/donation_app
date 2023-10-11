import 'package:donation_app/home/nav_bottomEmpleado.dart';
import 'package:donation_app/pages/empleado/asistenciaEmp_page.dart';
import 'package:donation_app/pages/empleado/perfilEmpleado_page.dart';
import 'package:donation_app/pages/empleado/puntos_page.dart';
import 'package:flutter/material.dart';



class HomeEmpleado extends StatefulWidget {
  const HomeEmpleado({super.key});

  @override
  State<HomeEmpleado> createState() => _HomeEmpleadoState();
}


class _HomeEmpleadoState extends State<HomeEmpleado> {

  int _currentIndex = 0;
    
  void cambiarPagina(int index) {
    setState(() {
    _currentIndex = index;
    });
  }   

  @override
  Widget build(BuildContext context) {
        
          final List<Widget> paginas = [
            const AsistenciaEmpleado(),
            const PuntosPage(),
            const EmpleadoPerfil()
          ];


    return Scaffold(
      appBar: AppBar(
         title: Text("Hola, Elias", style: TextStyle(fontSize: 18),),
          backgroundColor: Colors.transparent, // Fondo transparente para que se vea el borde personalizado
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), 
                blurRadius: 6, 
                offset: const Offset(0, 3), 
              ),
            ],
            ),
          ),
        ),
      body: paginas[_currentIndex],
      bottomNavigationBar:  NavBottomEmpleado(
        currentIndex: _currentIndex,
        onTabChange: cambiarPagina,
      ),
    );
    
  }
  

 

  

}