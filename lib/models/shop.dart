import '../modules/coffee.dart';

class Shop {
  final List<Coffee> _CoffeeMenu = [
    //Cappucinno
    Coffee(
        name: 'Cappucino',
        price: 'Kshs: 100.00',
        imagePath: "assets/images/icon-2.png",
        rating: '4.9'),
    //Black Coffee
    Coffee(
        name: 'Black Coffee',
        price: 'Kshs: 200.00',
        imagePath: "assets/images/icon-3.png",
        rating: '5.0'),
  ];
  List<Coffee> _cart = [];

  List<Coffee> get CoffeeMenu => _CoffeeMenu;
  List<Coffee> get Cart => _cart;

  // add and remove items from cart
  void addToCart(Coffee coffeeItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(coffeeItem);
    }
  }

  void removeFromCart(Coffee coffee) {
    _cart.remove(coffee);
  }
}
