import 'package:coffee_ui/model/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalTile extends StatelessWidget {
  final Coffee coffee;
  const HorizontalTile({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
        padding: EdgeInsets.only(left: 16),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 170,
          height: constraints.maxHeight,
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
              Container(
                height: constraints.maxHeight*0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(coffee.imageUrl!,)
                  )
                ),
              ),
              Container(
                height: constraints.maxHeight*0.2,
                padding: EdgeInsets.only(top: 10, bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffee.title,
                      style: GoogleFonts.ubuntu(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 4),
                    Text(
                      coffee.toppings,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      
                      style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ),
        );
      },
    );
  }
}
