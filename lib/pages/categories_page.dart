// import 'package:famasi_app/pages/add_category.dart';
// import 'package:famasi_app/pages/update_category.dart';
import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class CategoriesPageScreen extends StatefulWidget {
  const CategoriesPageScreen({super.key});

  @override
  State<CategoriesPageScreen> createState() => _CategoriesPageScreenState();
}

class _CategoriesPageScreenState extends State<CategoriesPageScreen> {
  var data = [
    {
      "name": "Oral drugs",
      "image": "biscuits_snacks.png",
      "total": "10",
    },
    {
      "name": "Injectable drugs",
      "image": "food_beverage.png",
      "total": "5",
    },
    {
      "name": "Infusion fluids",
      "image": "house_hold.png",
      "total": "7",
    },
    {
      "name": "Vaccines",
      "image": "personal_care.png",
      "total": "10",
    },
    {
      "name": "Disinfectants",
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
              height: 20,
            ),
            Column(
              children: data
                  .map((e) => Column(
                        children: [
                          ListTile(
                            // leading: Image.asset(
                            //   "assets/images/stock-images/${e['image']}",
                            //   height: 40,
                            // ),
                            title: Text(e['name']!),
                            subtitle: Text(
                              "Total Products : ${e['total']!}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: AppColors.primaryColor),
                            ),
                            trailing: popUp(),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => AppColors.primaryColor),
          onPressed: () {
            addCategoryDialog();
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCategoryScreen(),));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }

   popUp() {
    return PopupMenuButton<String>(
      onSelected: (value) {
        switch (value) {
          case 'delete':
            break;
          case 'update':
          editCategoryDialog();
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const UpdateCategoryScreen(),
            //     ));
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'delete',
            child: Text('Delete'),
          ),
          const PopupMenuItem<String>(
            value: 'update',
            child: Text('Update'),
          ),
        ];
      },
    );
  }

  
  TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? method;

  addCategoryDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Add category",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: nameController,
                                style: const TextStyle(fontSize: 15),
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    labelText: 'Category Name'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter category name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
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
                                        Navigator.pop(context);
                                        // Navigator.pop(context);
                                        // Navigator.pop(context);
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             const ThankyouPageScreen()));
                                      },
                                      borderRadius: BorderRadius.circular(14.0),
                                      child: const Center(
                                        child: Text(
                                          'Add',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }



  
  TextEditingController nameController2 = TextEditingController();
  final _formKey2 = GlobalKey<FormState>();

  editCategoryDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Form(
              key: _formKey2,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Update category",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: nameController,
                                style: const TextStyle(fontSize: 15),
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    labelText: 'Category Name'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter category name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
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
                                        Navigator.pop(context);
                                        // Navigator.pop(context);
                                        // Navigator.pop(context);
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             const ThankyouPageScreen()));
                                      },
                                      borderRadius: BorderRadius.circular(14.0),
                                      child: const Center(
                                        child: Text(
                                          'Update',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
