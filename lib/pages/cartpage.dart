import 'package:flutter/material.dart';



class CartPage extends StatelessWidget {
  final List<CartItem> cartItems;

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          var cartItem = cartItems[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Buyer: ${cartItem.buyerName}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: cartItem.orders.map((order) {
                  return Text(
                    'Quantity: ${order.quantity}, Price: \$${order.price.toStringAsFixed(2)}, Expire Date: ${order.expireDate}',
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}


class CartItem {
  final String buyerName;
  final List<Order> orders;

  CartItem({
    required this.buyerName,
    required this.orders,
  });
}
class Order {
  final String buyerName;
  final int quantity;
  final double price;
  final DateTime expireDate;

  Order({
    required this.buyerName,
    required this.quantity,
    required this.price,
    required this.expireDate,
  });
}