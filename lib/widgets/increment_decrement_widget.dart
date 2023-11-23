import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class IncrementDecrementWidget extends StatelessWidget {
  const IncrementDecrementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ThankyouPageScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: Center(child: Text("-")),
                ),
              ),
            ),
          ),
          const Expanded(
              child: Text(
            "1",
            textAlign: TextAlign.center,
          )),
          Expanded(
            child: InkWell(
              onTap: () {
                print("object");
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: Center(child: Text("+")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
