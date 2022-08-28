import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalTile extends StatelessWidget {
  const HorizontalTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(colors: [
            Colors.grey.shade800,
            Colors.grey.shade900,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/images/milkcofee.jpg'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cappaccino",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height:4),
                  Text(
                    "with Oat Milk",
                    style: GoogleFonts.ubuntu(
                        fontSize: 13, fontWeight: FontWeight.w100,color: Colors.grey),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("\$",style: TextStyle(color: Colors.orange),),
                    SizedBox(width: 4,),
                    Text("4.20",style: TextStyle(fontWeight: FontWeight.w700),)
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6)),
                  child: Icon(Icons.add),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
