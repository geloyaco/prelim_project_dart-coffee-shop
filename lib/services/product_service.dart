import '../models/product.dart';

class ProductService {
  final List<Product> _products = []; // List to store products

void addProduct(String name, double price) {
  final product = Product(name: name, price: price);
  _products.add(product); // Add product to list
  print('Product added: $product');
}
  List<Product> get products => _products; // Get list of products
}
