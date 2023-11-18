import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class StockTransactionsPageScreen extends StatefulWidget {
  const StockTransactionsPageScreen({super.key});

  @override
  State<StockTransactionsPageScreen> createState() =>
      _StockTransactionsPageScreenState();
}

class _StockTransactionsPageScreenState
    extends State<StockTransactionsPageScreen> {
  var data = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: const Text(
          "Stock Transactions",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Column(
              children: data
                  .map((e) => Column(
                        children: [
                          const ListTile(
                            title: Text(
                              "Kitchen Couch",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Stock in at 12 Nov 2023, with the price 20,000/= per product.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black45,
                                  ),
                                ),
                                Text(
                                  "Stock before: 10, Stock after: 23.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            child: Container(
                              color: Colors.black12,
                              height: 10,
                              width: double.infinity,
                            ),
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
