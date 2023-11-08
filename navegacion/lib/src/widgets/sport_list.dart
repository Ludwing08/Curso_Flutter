import 'package:flutter/material.dart';
import 'package:navegacion/src/Utils/my_list.dart';
import 'package:navegacion/src/pages/details_page.dart';

class SportsList extends StatelessWidget {
  const SportsList({super.key});

  @override
  Widget build(BuildContext context) {
    List myList = Lista().myList;

    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (ctx, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => DetailsPage(myImage: myList[i]),
              ),
            ),
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(myList[i]['url'], scale: 2.0),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
