import 'package:flutter/material.dart';

class NetwotkImageContainer extends StatelessWidget {
  const NetwotkImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 250.0,
      width: 350.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 124, 10, 255),     
          width: 4.0
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25.0),
          bottomLeft: Radius.circular(25.0),          
        ),      
        image: const DecorationImage(    
          fit: BoxFit.cover,    
          image: NetworkImage(
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'
            ),
            ),
        ),
        child: const Text('Naturaleza', style: TextStyle(
          color: Colors.white, 
          letterSpacing: 3.0, 
          ),
          textScaleFactor: 2.5,),
    );
  }
}