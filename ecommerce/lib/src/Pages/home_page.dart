import 'package:ecommerce/src/Widgets/best_rating.dart';
import 'package:ecommerce/src/Widgets/best_seller.dart';
import 'package:ecommerce/src/Widgets/categories.dart';
import 'package:ecommerce/src/Widgets/promo_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(      
        children: const [
          PromoBanner(),
          Categories(),
          BestSeller(),
          BestRating()
          
        ]
      ),
    );
  }
}