import 'package:flutter/material.dart';
import 'package:navegacion/src/pages/details_page.dart';
import 'package:navegacion/src/pages/page_2.dart';
import 'package:navegacion/src/widgets/bottom_nav.dart';
import 'package:navegacion/src/widgets/games_list.dart';
import 'package:navegacion/src/widgets/sport_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> body = [SportsList(), Games()];

    return Scaffold(
      bottomNavigationBar: BottomNav(currentIndenx: (i){
        setState(() {
          index=i;
        });        
      },), 
      body: body[index]);
  }
}
