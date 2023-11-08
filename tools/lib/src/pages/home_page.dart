import 'package:flutter/material.dart';
import 'package:tools/src/pages/local_image.dart';
import 'package:tools/src/pages/my_gridview.dart';
import 'package:tools/src/pages/my_pageview.dart';
import 'package:tools/src/utils/lists.dart';
import 'package:tools/src/utils/my_items.dart';
import 'package:tools/src/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MyItems> screens = Screens().items;

  int index = 0;

  @override
  Widget build(BuildContext context) {        
    return Scaffold(
      appBar: AppBar(
        title: Text(screens[index].title),
      ),
      drawer: MyDrawer(indexCurrent: (i){
        setState(() {
          index = i;
        });
      }),
      body: screens[index].route,
    );
  }
}
