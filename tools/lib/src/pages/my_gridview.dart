import 'package:flutter/material.dart';
import 'package:tools/src/utils/images_list.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    var lista = ImageList().imagesList;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(               
        crossAxisCount: 3),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return Image(
          fit: BoxFit.fill,
          image: NetworkImage(lista[index])
        );
      },
    );
  }
}