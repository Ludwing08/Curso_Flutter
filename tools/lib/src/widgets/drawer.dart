import 'package:flutter/material.dart';
import 'package:tools/src/utils/lists.dart';
import 'package:tools/src/widgets/drawer_head.dart';

class MyDrawer extends StatelessWidget {
  final Function(int) indexCurrent;
  const MyDrawer({super.key, required this.indexCurrent});  

  @override
  Widget build(BuildContext context) {
    var itemsList = Screens().items;

    return Drawer(
      width: 250.0,
      backgroundColor: const Color.fromARGB(255, 209, 232, 243),
      shape: const Border(
          right: BorderSide(
              color: Color.fromARGB(255, 123, 123, 123), width: 2.0)),
      child: ListView(
        children: [
          const MyDrawerHead(),

          ListView.builder(
            physics: const NeverScrollableScrollPhysics(), // para quitar el scroll
            shrinkWrap: true,
            itemCount: itemsList.length,
            itemBuilder: (context, i) {              
              return ListTile(
                dense: true,
                horizontalTitleGap: 5.0,
                leading: Icon(
                  itemsList[i].icon,
                  size: 35.0,
                ),
                title: Text(itemsList[i].title),
                subtitle: Text(itemsList[i].subtitle),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15.0,
                ),
                onTap: () {
                  indexCurrent(i);
                  Navigator.pop(context);
                },
              );
            }
          )
        ],
      ),
    );
  }
}


