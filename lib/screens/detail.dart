import 'package:coffee_ui/widgets/image_container.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          highlightColor: Colors.transparent,
          onPressed: () {},
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
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://cdn.dribbble.com/users/2947819/screenshots/15475209/media/429371ad39efd45ffeddf587b2e8c6e3.png'),
              ),
            ),
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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
    );
  }
}
