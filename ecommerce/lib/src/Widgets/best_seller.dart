import 'package:ecommerce/src/Widgets/flayers.dart';
import 'package:ecommerce/src/services/api_services.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().bestSeller(),
        builder: (_, AsyncSnapshot snap) {
          if (snap.hasData) {
            final bSList = snap.data['products'] as List;

            return Flayers(
              title: 'Lo más vendido',
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: bSList.length,                  
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (_, i) {
                    return Image(image: NetworkImage(bSList[i]['thumbnail']));
                  }),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
