import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class NavBottom extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabChange;

  NavBottom({
    required this.currentIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: GNav(
        gap: 15,
        selectedIndex: currentIndex,
        tabBorderRadius: 10,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        onTabChange: (index) => onTabChange(index),
        tabs: [
          GButton(
            icon: Icons.check_circle,
            text: 'Asistencia',
            iconActiveColor: HexColor("#0A73AC"),
            textColor: currentIndex == 0 ? HexColor("#0A73AC") : Colors.grey,
            iconColor: Colors.grey,
            onPressed: () {},
          ),         
          GButton(
            icon: Icons.person,
            text: 'Perfil',
            iconActiveColor: HexColor("#0A73AC"),
            textColor: currentIndex == 2 ? HexColor("#0A73AC") : Colors.grey,
            iconColor: Colors.grey,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
