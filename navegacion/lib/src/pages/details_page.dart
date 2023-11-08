import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, String> myImage;  

  const DetailsPage({super.key, required this.myImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(myImage['title']!)),
      body: Container(
        height: 250.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(myImage['url']!),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
