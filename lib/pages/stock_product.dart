import 'package:famasi_app/pages/add_product.dart';
import 'package:famasi_app/utils/app_color.dart';
import 'package:famasi_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class StockProductScreen extends StatefulWidget {
  const StockProductScreen({super.key});

  @override
  State<StockProductScreen> createState() => _StockProductScreenState();
}

class _StockProductScreenState extends State<StockProductScreen> {
  var data = [
    {
      "name": "Biscuits Snacks",
      "image": "biscuits_snacks.png",
      "total": "10",
    },
    {
      "name": "Food and Beverage",
      "image": "food_beverage.png",
      "total": "5",
    },
    {
      "name": "House hold",
      "image": "house_hold.png",
      "total": "7",
    },
    {
      "name": "Personal Care",
      "image": "personal_care.png",
      "total": "10",
    },
    {
      "name": "Pet Care",
      "image": "pet_care.png",
      "total": "10",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: data.map((e) => const ProductCardWidget()).toList(),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
        child: FloatingActionButton(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => AppColors.primaryColor),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddProductScreen()),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
