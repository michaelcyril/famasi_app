import 'package:famasi_app/pages/update_product.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({super.key});

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                width: 110,
                height: 120,
                child: Column(
                  children: [
                    // Text("Product ID"),
                    Container(
                      width: 110,
                      height: 72,
                      child: Image.asset(
                        "assets/images/medicine.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: InkWell(
                  onLongPress: () {
                    _showAlertDialog(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: 'Name : ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      // color: Colors.blue,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Paracetamol',
                                    style: TextStyle(
                                      fontSize: 14,
                                      // color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              hoverColor: Colors.black45,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const UpdateProductScreen(),
                                    ));
                              },
                              child: const Icon(
                                Icons.edit,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Brand : ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  // color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: 'KProducts',
                                style: TextStyle(
                                  fontSize: 14,
                                  // color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          children: [
                            Text(
                              'Tshs.',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '1000',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Divider(
          height: 2,
        )
      ],
    );

    // return Container(
    //   color: Colors.white,
    //   child: Padding(
    //     padding:
    //         const EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 10),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         Row(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Expanded(
    //                 child: Column(
    //               children: [
    //                 const Text(
    //                   "product ID : XXXXX",
    //                   textAlign: TextAlign.left,
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     color: AppColors.primaryColor,
    //                     fontSize: 14,
    //                   ),
    //                 ),
    //                 Image.asset(
    //                   "assets/images/medicine.png",
    //                   height: 100,
    //                 ),
    //               ],
    //             )),
    //             Expanded(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Name : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                             // color: Colors.blue,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: 'Paracetamol',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Brand : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                             // color: Colors.blue,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: 'KProducts',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Total Stock : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: '54',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Selling Price : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: '100,000',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Pharmacy Name : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                             // color: Colors.blue,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: 'Kijitonyama234',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   Row(
    //                     children: [
    //                       Expanded(
    //                         child: Padding(
    //                           padding: const EdgeInsets.only(right: 5),
    //                           child: TextButton(
    //                             onPressed: () {
    //                               Navigator.push(
    //                                   context,
    //                                   MaterialPageRoute(
    //                                     builder: (context) =>
    //                                         const UpdateProductScreen(),
    //                                   ));
    //                             },
    //                             style: ButtonStyle(
    //                                 backgroundColor:
    //                                     MaterialStateColor.resolveWith(
    //                                         (states) =>
    //                                             AppColors.confirmButton)),
    //                             child: const Text(
    //                               'Update',
    //                               maxLines: 1,
    //                               overflow: TextOverflow.ellipsis,
    //                               style: TextStyle(
    //                                 fontSize: 14,
    //                                 color: Colors.white,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       Expanded(
    //                         child: Padding(
    //                           padding: const EdgeInsets.only(left: 5),
    //                           child: TextButton(
    //                             onPressed: () {},
    //                             style: ButtonStyle(
    //                                 backgroundColor:
    //                                     MaterialStateColor.resolveWith(
    //                                         (states) => Colors.redAccent)),
    //                             child: const Text(
    //                               'Delete',
    //                               maxLines: 1,
    //                               overflow: TextOverflow.ellipsis,
    //                               style: TextStyle(
    //                                 fontSize: 14,
    //                                 color: Colors.white,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         const Divider()
    //       ],
    //     ),
    //   ),
    // );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an action' ,style: TextStyle(fontSize: 12),),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Handle delete action
                Navigator.of(context).pop();
                // Add your delete logic here
                print('Delete button pressed');
              },
              child: const Text('Delete'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle update action
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpdateProductScreen(),
                    ));
                // Navigator.of(context).pop();
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }
}
