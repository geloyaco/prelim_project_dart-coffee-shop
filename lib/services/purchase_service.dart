import '../models/purchase.dart';
import '../models/customer.dart';
import '../models/product.dart';

class PurchaseService {
  final List<Purchase> _purchases = []; // List to store purchases

void makePurchase(Customer customer, Product product, int quantity) {
  final purchase = Purchase(customer: customer, product: product, quantity: quantity);
  _purchases.add(purchase); // Add purchase to list
  print('Purchase made: $purchase');
}
  List<Purchase> get purchases => _purchases; // Get list of purchases
}
