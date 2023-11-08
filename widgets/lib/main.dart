import 'package:flutter/material.dart';
import 'package:widgets/src/widgets/basic_container.dart';
import 'package:widgets/src/widgets/basic_listview.dart';
import 'package:widgets/src/widgets/border_container.dart';
import 'package:widgets/src/widgets/custom_column.dart';
import 'package:widgets/src/widgets/custom_row.dart';
import 'package:widgets/src/widgets/custom_text.dart';
import 'package:widgets/src/widgets/image_container.dart';
import 'package:widgets/src/widgets/radius_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   title: Text('Facebook'),
          //   backgroundColor: Colors.black,
          // ),
          body: Center(
        child: ListView(
          children: const [
            CustomText(),
            NetwotkImageContainer(),        
            // SizedBox(
            //   height: 350.0,
            //   child: CustomRow()),
            CustomRow(),
            // SizedBox(
            //   height: 350.0,
            //   child: CustomColumn())
            CustomColumn()
          ],
        )
      )),
    );
  }
}
