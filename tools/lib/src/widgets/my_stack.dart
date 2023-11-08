import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 175.0,        
        width: double.infinity,        
        child: Stack(
          children: <Widget>[
          Align(
            alignment: Alignment.bottomRight / 1.5,
            child: Container(
              padding: const EdgeInsets.only(left: 70.0),
              width: 250.0,            
              decoration: BoxDecoration(color: Colors.brown,            
              borderRadius: BorderRadius.circular(25.0)),
              height: 140.0,
              child: Align(
                alignment: Alignment.topCenter * 0.5,
                child: const Text('Commodo labore laboris commodo ullamco quis.',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft /2.0,
            child: const Image(
              image: AssetImage('assets/shoes.png'),
              height: 150.0,
            ),
          ),
        ]),
      ),
    );
  }
}
