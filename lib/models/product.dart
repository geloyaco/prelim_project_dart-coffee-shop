class Product {
  final String name;
  final double price; // price in Pesos

Product({required this.name, required this.price});

  @override
    String toString() {
      return '$name - ₱${price.toStringAsFixed(2)}';
  }
}
