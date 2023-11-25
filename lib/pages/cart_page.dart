import 'package:famasi_app/utils/app_color.dart';
import 'package:famasi_app/widgets/cart_food_card.dart';
import 'package:flutter/material.dart';

class CartPageScreen extends StatefulWidget {
  const CartPageScreen({super.key});

  @override
  State<CartPageScreen> createState() => _CartPageScreenState();
}

class _CartPageScreenState extends State<CartPageScreen> {
  var data = [1, 2, 3];

  popUp() {
    return PopupMenuButton<String>(
      onSelected: (String item) {
        switch (item) {
          case "add":
            break;
          case "1":
            break;
          case "2":
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: "add",
          child: Text(
            'Add New Location',
            style: TextStyle(color: Colors.green),
          ),
        ),
        const PopupMenuItem<String>(
          value: "1",
          child: Text(
            'Makumbusho (office)',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const PopupMenuItem<String>(
          value: "2",
          child: Text(
            'Kimara (home)',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  String? selectedValue;
  final List<String> items = [
    'Makumbusho(Office)',
    'Kimara (Home)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: const Text(
          "Back",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            "Sub Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.right,
                            "10,000/=",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.right,
                            "12,000/=",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                 
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            "Pharmacy Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black45),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.right,
                            "Kijitonyama Pharmacy",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(),
                    Column(
                        children:
                            data.map((e) => const CartFoodCardWidget()).toList())
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Material(
                  borderRadius: BorderRadius.circular(14.0),
                  elevation: 0,
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: 
                          // (context) => const PaymentMethodPageScreen(),));
                        },
                        borderRadius: BorderRadius.circular(14.0),
                        child: const Center(
                          child: Text(
                            'Sale',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
