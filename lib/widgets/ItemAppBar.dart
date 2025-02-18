import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back, 
              size: 30,
              color:  Color(0xFF4C53A5),
              ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color:  Color(0xFF4C53A5),
              ),
            ),
            ),
            const Spacer(),
            const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            )
        ],
      ),
    );
  }
}