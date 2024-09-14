import 'customer.dart';
import 'product.dart';

class Purchase {
  final Customer customer;
  final Product product;
  final int quantity;

Purchase({required this.customer, required this.product, required this.quantity});

double get totalPrice => product.price * quantity; // Calculate total price

  @override
    String toString() {
      return '${customer.name} purchased $quantity x ${product.name} for ₱${totalPrice.toStringAsFixed(2)}';
  }
}
