import 'package:ecommerce/src/Widgets/flayers.dart';
import 'package:ecommerce/src/services/api_services.dart';
import 'package:flutter/material.dart';

class BestRating extends StatelessWidget {
  const BestRating({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().bestRating(),
        builder: (_, AsyncSnapshot snap) {
          if (snap.hasData) {
            var bRList = snap.data['products'] as List;
            bRList = bRList.where((e) => e['rating'] >= 4.7 ).toList();

            return Flayers(
              title: 'Mejores calificados',
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: bRList.length,
                  itemBuilder: (_, i) {
                    return Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(bRList[i]['thumbnail'])),
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                '⭐${bRList[i]['rating']}',
                                style: const TextStyle(
                                    backgroundColor: Colors.black,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${bRList[i]["description"]}'),
                          ),
                        ),
                      ],
                    );
                  }),
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
