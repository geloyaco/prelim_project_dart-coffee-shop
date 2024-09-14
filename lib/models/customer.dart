class Customer {
  final String name;
  final String email;

Customer({required this.name, required this.email});

  @override
    String toString() {
      return 'Customer: $name, Email: $email';
  }
}
