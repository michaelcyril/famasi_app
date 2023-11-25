import 'package:famasi_app/widgets/product_stock_card.dart';
import 'package:flutter/material.dart';

class ProductStockPageScreen extends StatefulWidget {
  const ProductStockPageScreen({super.key});

  @override
  State<ProductStockPageScreen> createState() => _ProductStockPageScreenState();
}

class _ProductStockPageScreenState extends State<ProductStockPageScreen> {
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
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: data.map((e) => const ProductStockCardWidget()).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
