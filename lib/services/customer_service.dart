import '../models/customer.dart';

class CustomerService {
  final List<Customer> _customers = []; // List to store customers

void addCustomer(String name, String email) {
  final customer = Customer(name: name, email: email);
  _customers.add(customer); // Add customer to list
  print('Customer added: $customer');
}
  List<Customer> get customers => _customers; // Get list of customers
}
