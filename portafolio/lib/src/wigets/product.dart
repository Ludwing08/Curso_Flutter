import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String selectedColor ='';
  String blueColor = 'https://cdn.pixabay.com/photo/2014/04/03/11/08/all-star-converse-311825__340.png';
  String orangeColor = 'https://cdn.pixabay.com/photo/2014/04/03/11/52/shoe-312435_1280.png';

  @override
  void initState() {
    selectedColor = blueColor;
    super.initState();
  }

  chooseColorBlue (){
    setState(() {
      selectedColor = blueColor;
    });
  }

  chooseColorOrange (){
    setState(() {
      selectedColor = orangeColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Container(
            height: 420.0,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50.0)),
                image: DecorationImage(
                  image: NetworkImage(
                      selectedColor,
                      scale: 2.0),
                )),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 3.0,
            children: [
              const Text('Colores: '),
              
              GestureDetector(
                onTap: () {
                  chooseColorBlue();
                },
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(blueColor),
                ),
              ),
        
              GestureDetector(
                onTap:() {
                  chooseColorOrange();
                }, 
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(orangeColor),
                ),
              ),
            ],
          ),
        ),
        
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              'Labore excepteur qui ipsum ea enim anim veniam ut ad adipisicing nulla dolore amet magna. Adipisicing aliquip occaecat ad reprehenderit dolor consectetur non Lorem commodo elit pariatur duis irure irure. Aliquip nisi tempor aute eiusmod proident laborum deserunt. Ex cillum adipisicing nulla nisi veniam occaecat ad deserunt aliquip.'),
        )
      ],
    );
  }
}
