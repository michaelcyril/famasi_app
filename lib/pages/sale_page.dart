import 'package:famasi_app/pages/cart_page.dart';
import 'package:famasi_app/utils/app_color.dart';
import 'package:famasi_app/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SalePageScreen extends StatefulWidget {
  const SalePageScreen({super.key});

  @override
  State<SalePageScreen> createState() => _SalePageScreenState();
}

class _SalePageScreenState extends State<SalePageScreen> {
  var data = [
    {
      "title": "Burger",
      "price": "30,000",
      "image": "burger.png",
    },
    {
      "title": "Burger",
      "price": "30,000",
      "image": "burger.png",
    },
    {
      "title": "Burger",
      "price": "30,000",
      "image": "burger.png",
    },
    {
      "title": "Burger",
      "price": "30,000",
      "image": "burger.png",
    },
    {
      "title": "Burger",
      "price": "30,000",
      "image": "burger.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left:12, right: 12),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const FoodCardWidget();
          },
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => AppColors.primaryColor),
          onPressed: () {
            // addClientDialog();
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPageScreen(),));
          },
          child: const Icon(
            Icons.local_grocery_store,
            color: Colors.white,
          )),
    );
  }
}
