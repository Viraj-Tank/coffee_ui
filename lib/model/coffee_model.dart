class Coffee {
  final String? imageUrl;
  final String title;
  final String toppings;
  final double price;

  const Coffee(
      {this.imageUrl,
      required this.title,
      required this.toppings,
      required this.price});

  static const coffeeList = [
    Coffee(
      imageUrl: 'assets/images/cappaccino.jpg',
      title: "Cappaccino",
      toppings: "with Oat Milk",
      price: 4.99,
    ),
    Coffee(
      imageUrl: 'assets/images/milkcofee.jpg',
      title: "Milk Coffee",
      toppings: "with Milk",
      price: 3.99,
    ),
    Coffee(
      imageUrl: 'assets/images/blackcoffee.jpg',
      title: "Black Coffee",
      toppings: "with Oat Milk",
      price: 5.99,
    ),
    Coffee(
      imageUrl: 'assets/images/combo.jpg',
      title: "Coffee Combo",
      toppings: "Plain, Powder & Cappaccino",
      price: 9.99,
    ),
  ];
}
