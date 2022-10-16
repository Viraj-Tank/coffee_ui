import 'package:coffee_ui/model/coffee_model.dart';
import 'package:coffee_ui/widgets/image_container.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  Coffee coffee;
  DetailScreen({Key? key,required this.coffee}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.coffee.title,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            highlightColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_rounded),
          ),
          actions: [
            IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
        body: Column(

          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.coffee.imageUrl!)
                ),
              ),
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.transparent.withOpacity(0.4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //left side part in bottom
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cappuccino',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        Text('With Oat Milk',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    //right side part in bottom
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Hello'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
