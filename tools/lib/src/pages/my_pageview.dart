import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Image(
          fit: BoxFit.cover,
          image: NetworkImage('https://cdn.pixabay.com/photo/2019/07/25/17/09/camp-4363073_1280.png')
        ),

        Image(
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/14/18/35/sign-post-5655110_1280.png')
        )
      ],
    );    
  }
}