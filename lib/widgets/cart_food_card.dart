import 'package:famasi_app/utils/app_color.dart';
import 'package:famasi_app/widgets/increment_decrement_widget.dart';
import 'package:flutter/material.dart';

class CartFoodCardWidget extends StatefulWidget {
  const CartFoodCardWidget({super.key});

  @override
  State<CartFoodCardWidget> createState() => _CartFoodCardWidgetState();
}

class _CartFoodCardWidgetState extends State<CartFoodCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/pill.jpg",
                height: 60,
              ),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.right,
                    "Azuma",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  Text(
                    textAlign: TextAlign.right,
                    "1 Unit",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  Text(
                    textAlign: TextAlign.right,
                    "Qty : 2",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.right,
                    "20,000 TZS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppColors.primaryColor),
                  ),
                  SizedBox(height: 5,),
                  IncrementDecrementWidget()
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(),
      ],
    );
  }
}
