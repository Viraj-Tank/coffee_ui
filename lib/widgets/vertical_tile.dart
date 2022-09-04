import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/coffee_model.dart';

class VerticalTile extends StatelessWidget {
  final Coffee coffee;
  const VerticalTile({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(colors: [
          Colors.grey.shade900,
          Colors.grey.shade800,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Row(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  coffee.imageUrl!,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffee.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  coffee.toppings,
                  style: GoogleFonts.ubuntu(
                      fontSize: 13,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(color: Colors.orange),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "${coffee.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
