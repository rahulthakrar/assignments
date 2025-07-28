import 'dart:io';

// Product class
class Product {
  String name;
  double price;
  Product(this.name, this.price);
}

// Cart class (can hold multiple products)
class Cart {
  List<Product> products = [];

  void addProduct(Product p) {
    products.add(p);
    print('Added: ${p.name}');
  }

  void showCart() {
    if (products.isEmpty) {
      print('Cart is empty.');
    } else {
      print('Cart items:');
      for (var p in products) {
        print('${p.name} - Rs.${p.price}');
      }
      print('Total: Rs.${getTotalPrice()}');
    }
  }

  double getTotalPrice() {
    double total = 0;
    for (var p in products) {
      total += p.price;
    }
    return total;
  }

  // Returns the total amount of the cart
  double returnTotalAmount() {
    return getTotalPrice();
  }
}

// Order class
class Order {
  Cart cart;
  Order(this.cart);

  void placeOrder() {
    if (cart.products.isEmpty) {
      print('Cannot place order. Cart is empty.');
    } else {
      print('Order placed! Total amount: Rs.${cart.getTotalPrice()}');
    }
  }
}

void main() {
  Cart cart = Cart();
  while (true) {
    print('\n1. Add Product to Cart');
    print('2. View Cart');
    print('3. Place Order');
    print('4. Show Total Amount');
    print('0. Exit');
    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Enter product name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter product price: ');
        double price = double.parse(stdin.readLineSync()!);
        cart.addProduct(Product(name, price));
        break;
      case 2:
        cart.showCart();
        break;
      case 3:
        Order order = Order(cart);
        order.placeOrder();
        break;
      case 4:
        double total = cart.returnTotalAmount();
        print('Total amount of the whole cart: Rs.$total');
        break;
      case 0:
        double total = cart.returnTotalAmount();
        print('Exiting...');
        print('Total amount of the whole cart: Rs.$total');
        return;
      default:
        print('Invalid choice.');
    }
  }
}
