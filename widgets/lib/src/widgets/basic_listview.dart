import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 350.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 150.0,
                color: Colors.amber,
              ),

              Container(
                width: 150.0,
                color: Colors.amber,
              ),

              Container(
                width: 150.0,
                color: Colors.amber,
              ),

              Container(
                width: 150.0,
                color: Colors.amber,
              ),
            ],
          ),
        ),

        Container(
          height: 150.0,
          color: Colors.blueAccent,
        ),
        Container(
          height: 150.0,
          color: Color.fromARGB(255, 48, 85, 150),
        ),
        Container(
          height: 150.0,
          color: const Color.fromARGB(255, 90, 255, 68),
        ),
        Container(
          height: 150.0,
          color: Color.fromARGB(255, 18, 120, 66),
        )
      ],
    );
  }
}
