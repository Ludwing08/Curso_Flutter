import 'package:ecommerce/src/services/api_services.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().getCategories(),
        builder: (context, AsyncSnapshot snap) {
          if (snap.hasData) {
            final catList = snap.data as List;

            return SizedBox(
              height: 150.0,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: catList.length,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25.0)),
                        width: 150.0,
                        child: Align(
                          alignment: Alignment.bottomCenter / 1.2,
                          child: Text(
                            catList[i],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
