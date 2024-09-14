import 'package:riverpod/riverpod.dart';
import 'services/customer_service.dart';
import 'services/product_service.dart';
import 'services/purchase_service.dart';

final customerServiceProvider = Provider((ref) => CustomerService());
final productServiceProvider = Provider((ref) => ProductService());
final purchaseServiceProvider = Provider((ref) => PurchaseService());