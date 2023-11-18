import 'package:famasi_app/pages/add_category.dart';
import 'package:famasi_app/pages/update_category.dart';
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
      "name": "oral drugs",
      "image": "biscuits_snacks.png",
      "total": "10",
    },
    {
      "name": "injectable drugs",
      "image": "food_beverage.png",
      "total": "5",
    },
    {
      "name": "infusion fluids",
      "image": "house_hold.png",
      "total": "7",
    },
    {
      "name": "vaccines",
      "image": "personal_care.png",
      "total": "10",
    },
    {
      "name": "disinfectants",
      "image": "pet_care.png",
      "total": "10",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            leading: Image.asset(
                              "assets/images/stock-images/${e['image']}",
                              height: 40,
                            ),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddCategoryScreen(),));
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
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpdateCategoryScreen(),
                ));
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
}
