import 'package:famasi_app/utils/app_color.dart';
import 'package:famasi_app/widgets/increment_decrement_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsPageScreen extends StatefulWidget {
  const ProductDetailsPageScreen({super.key});

  @override
  State<ProductDetailsPageScreen> createState() =>
      _ProductDetailsPageScreenState();
}

class _ProductDetailsPageScreenState extends State<ProductDetailsPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/medicine.png",
                height: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Panadol",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black45),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "20,000 / 1unit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: AppColors.primaryColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Panadol is a widely recognized and trusted brand of medication designed to alleviate pain and reduce fever. The active ingredient, paracetamol, is known for its efficacy in providing relief from various types of pain, including headaches.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                // const Expanded(
                //     flex: 1,
                //     child: Column(
                //       children: [
                //         Icon(
                //           Icons.favorite,
                //           color: AppColors.primaryColor,
                //           size: 40,
                //         ),
                //         Text(
                //           "Favourite",
                //           maxLines: 1,
                //           overflow: TextOverflow.ellipsis,
                //           style: TextStyle(
                //               fontWeight: FontWeight.normal,
                //               fontSize: 12,
                //               color: Colors.black45),
                //         ),
                //       ],
                //     )),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left:20, right: 30),
                    child: IncrementDecrementWidget(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => AppColors.primaryColor)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10),
                        child: Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
