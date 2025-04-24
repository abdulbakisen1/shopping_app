import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final String seller;
  final String imagePath;
  final double originalPrice;
  final double discountedPrice;
  bool isChecked;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.seller,
    required this.imagePath,
    required this.originalPrice,
    required this.discountedPrice,
    this.isChecked = false,
    this.quantity = 1,
  });

  void toggleChecked(bool? value) {
    isChecked = value ?? false;
    notifyListeners();
  }

  void increaseQuantity() {
    quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
      notifyListeners();
    }
  }
}

List<Product> products = [
  Product(
    id: '1',
    name: 'Triko Kazak',
    seller: 'VİP LOKAL',
    imagePath: 'assets/triko.png',
    originalPrice: 300.0,
    discountedPrice: 260.0,
  ),
  Product(
    id: '2',
    name: 'Gömlek',
    seller: 'VİP LOKAL',
    imagePath: 'assets/gomlek.png',
    originalPrice: 200.0,
    discountedPrice: 180.0,
  ),
  Product(
    id: '3',
    name: 'Pantolon',
    seller: 'Başka Satıcı',
    imagePath: 'assets/pantolon.png',
    originalPrice: 150.0,
    discountedPrice: 130.0,
  ),
];
