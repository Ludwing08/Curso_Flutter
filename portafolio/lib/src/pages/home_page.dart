import 'package:flutter/material.dart';
import 'package:portafolio/src/wigets/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;  //tienen un estado

  @override
  Widget build(BuildContext context) {
    String titulo = 'Producto';
    bool centerTitle = true;    

    return Scaffold(
      appBar: AppBar(
        centerTitle: centerTitle,
        title: Text(titulo),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            child: Text(counter.toString()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: (){            
            setState(() {
              counter++;
            });
          },
          child: const Icon(Icons.add)),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //posicion del boton
      body: Product()
    );
  }
}
