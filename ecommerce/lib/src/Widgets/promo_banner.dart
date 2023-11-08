import 'package:ecommerce/src/services/api_services.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  final _controller = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().getProducts(),
        builder: (context, AsyncSnapshot snap) {
          if (snap.hasData) {
            final prodList = snap.data['products'] as List;

            return SizedBox(
              height: 250.0,
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  padEnds: false,
                  controller: _controller,
                  itemCount: prodList.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  (prodList[i]['thumbnail']),
                                ))),
                      ),
                    );
                  }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          ;
        });
  }
}
