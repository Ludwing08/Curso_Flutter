import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function(int) currentIndenx;

  const BottomNav({super.key, required this.currentIndenx});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(173, 2, 52, 133),
      fixedColor: const Color.fromARGB(255, 255, 255, 255),
      selectedLabelStyle: TextStyle(letterSpacing: 2.0),
      currentIndex: index,
      onTap: (i) {
        setState(() {
          index = i;
          widget.currentIndenx(i);
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Deporte'),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports), label: 'Juegos')
      ],
    );
  }
}
