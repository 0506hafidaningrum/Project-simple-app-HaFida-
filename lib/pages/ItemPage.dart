import 'dart:js';
import 'package:clippy_flutter/arc.dart';
import 'package:e_commerce/widgets/ItemBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/ItemAppBar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget{

  // ignore: non_constant_identifier_names
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding:  const EdgeInsets.all(16),
            child: Image.asset("images/1.png", height: 150),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                         top: 35,
                         bottom: 7, 
                        ),
                  child: Row(
                    children: [
                      Text(
                        "Product Title",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                   ),                   
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(
                            Icons.favorite,
                            color: Color(0xFF4C53A5),
                          ),
                          onRatingUpdate: (index){},
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  )
                                ]
                              ),
                              child: const Icon(
                                CupertinoIcons.minus,
                                size: 18,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text("01", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  )
                                ]
                              ),
                              child: const Icon(
                                CupertinoIcons.plus,
                                size: 18,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                          ],
                        )
                      ],
                    ), ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "This is more detailed description of the product. you can write here more about the product. this is lengthy description.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF4C53A5),
                        ),
                      ), ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            const Text(
                            "Sized:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            const SizedBox(
                              width: 10,
                              ),
                            Row(
                              children: [
                                for(int i=5; i<10; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    )
                                  ]
                                ),
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                            ],),
                          ],
                        ),
                      ),
                    
                            Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            const Text(
                            "Color:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            const SizedBox(
                              width: 10,
                              ),
                            Row(
                              children: [
                                for(int i=0; i<5; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Clrs[i],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                          ],
                        ),
                        ),
                      ],
                    ), 
                  ),
                ),
              ),         
        ],       
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}