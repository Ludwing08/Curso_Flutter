import 'package:flutter/material.dart';

class MyDrawerHead extends StatelessWidget {
  const MyDrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
        decoration: BoxDecoration(color: Colors.amber),
        child: Wrap(
          spacing: 5.0,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.0,
              child: Icon(
                Icons.person,
                size: 35.0,
              ),
            ),
            Text('Bienvenidos')
          ],
        ));
  }
}
