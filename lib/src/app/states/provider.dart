import 'package:flutter/material.dart';

// ShoppingProvider sınıfı, state yönetimini sağlar
class ShoppingProvider extends ChangeNotifier {
  bool _isChecked = true;  // Checkbox durumu
  int _quantity = 1;       // Ürün miktarı

  // Getter'lar
  bool get checked => _isChecked;
  int get quantity => _quantity;

  
  void toggleCheckbox(bool? value) {
    _isChecked = value ?? false;
    notifyListeners(); 
  }

  // Miktarı artıran fonksiyon
  void increaseQuantity() {
    _quantity++;
    notifyListeners(); 
  }

  // Miktarı azaltan fonksiyon
  void decreaseQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }
}
