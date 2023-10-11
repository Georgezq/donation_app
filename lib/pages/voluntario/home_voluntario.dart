import 'package:donation_app/home/nav_bottomUser.dart';
import 'package:donation_app/pages/voluntario/asistencia_page.dart';
import 'package:donation_app/pages/voluntario/perfil_page.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  int _currentIndex = 0;
    
  void cambiarPagina(int index) {
    setState(() {
    _currentIndex = index;
    });
  }   

  @override
  Widget build(BuildContext context) {
        
          final List<Widget> paginas = [
            const AsistenciaPage(),
            const PerfilPage()
          ];


    return Scaffold(
      appBar: AppBar(
        title: Text("Hola, Danna", style: TextStyle(fontSize: 18),),
        
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
      bottomNavigationBar:  NavBottom(
        currentIndex: _currentIndex,
        onTabChange: cambiarPagina,
      ),
    );
    
  }
  

 

  

}