import 'package:coffee_ui/model/coffee_model.dart';
import 'package:coffee_ui/widgets/coffee_type.dart';
import 'package:coffee_ui/widgets/horizontal_tile.dart';
import 'package:coffee_ui/widgets/vertical_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const coffeeList = Coffee.coffeeList;
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List selectedCoffeeType = [
    ['Cappaccino', true],
    ['Black coffee', false],
    ['Milk', false],
    ['Others', false]
  ];

  void setSelectedIndex(int index) {
    setState(() {
      for (int i = 0; i < selectedCoffeeType.length; i++) {
        selectedCoffeeType[i][1] = false;
      }
      selectedCoffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Find the coffee that you like 🤎",
                  style: GoogleFonts.dancingScript(fontSize: 46)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Cappaccino, Black coffee etc.",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade500),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: selectedCoffeeType.length,
                itemBuilder: (ctx, index) {
                  return CoffeeType(
                    coffeeType: selectedCoffeeType[index][0],
                    isSelected: selectedCoffeeType[index][1],
                    onTap: () {
                      setSelectedIndex(index);
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: HomePage.coffeeList.length,
                itemBuilder: (context, index) {
                  return HorizontalTile(coffee: HomePage.coffeeList[index]);
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 8),
              child: Text(
                "Special for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: HomePage.coffeeList.length,
                itemBuilder: (context, index) {
                  return VerticalTile(
                    coffee: HomePage.coffeeList[index],
                  );
                },
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
    );
  }
}
