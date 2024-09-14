import 'package:riverpod/riverpod.dart';
import 'global_providers.dart';
import 'dart:io';

void main(List<String> arguments){
  final container = ProviderContainer();

  final customerService = container.read(customerServiceProvider);
  final productService = container.read(productServiceProvider);
  final purchaseService = container.read(purchaseServiceProvider);

while(true){
  print('-- Welcome to KaffeHaus! --');
  print('1. Add Customer');
  print('2. Add Product');
  print('3. Make Purchase');
  print('4. View Products');
  print('5. View Customers');
  print('6. Exit');

    stdout.write('Choose an option: ');
      final choice = stdin.readLineSync();

switch (choice){
  case '1':
    stdout.write('Enter Customer Name: ');
      final name = stdin.readLineSync()!;
    stdout.write('Enter Customer Email: ');
      final email = stdin.readLineSync()!;
    customerService.addCustomer(name, email);
      break;

  case '2':
    stdout.write('Enter Product Name: ');
      final productName = stdin.readLineSync()!;
    stdout.write('Enter Product Price');
      final productPrice = double.parse(stdin.readLineSync()!);
    productService.addProduct(productName, productPrice);
      break;

  case '3':
    print('Choose a Customer: ');
      customerService.customers.asMap().forEach((i, c) => print('$i: $c'));
        final customerIndex = int.parse(stdin.readLineSync()!);
        final customer = customerService.customers[customerIndex];

    print('Choose a Product: ');
      productService.products.asMap().forEach((i, p) => print('$i: $p'));
        final productIndex = int.parse(stdin.readLineSync()!);
        final product = productService.products[productIndex];

    stdout.write('Enter Quantity: ');
      final quantity = int.parse(stdin.readLineSync()!);

    purchaseService.makePurchase(customer, product, quantity);
      break;

  case '4':
    print('-- Products --');
      productService.products.forEach(print);
        break;

  case '5':
    print('-- Customers --');
      customerService.customers.forEach(print);
        break;

  case '6':
    print('Exiting...');
      exit(0);

      default:
        print('Invalid Option. Try Again!');

    }
  }
}