import 'dart:io';

import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  String? discrictValue;
  String? categoryValue;
  String? wardValue;
  String? statusValue;
  String? chosenStatus;
  String? activeDeactive;

  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  // ignore: prefer_typing_uninitialized_variables
  var userData;
  late int tabIndex;

  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController streetController = TextEditingController();

  @override
  void initState() {
    tabIndex = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      // ignore: unnecessary_null_comparison
      if (pickedfiles != null) {
        setState(() {
          imagefiles = pickedfiles;
        });
      } else {
        // print("No image is selected.");
      }
    } catch (e) {
      // print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: const Text(
          "Add Category",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  controller: nameController,
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      labelText: 'Category Name'),
                ),
              ),
              MaterialButton(
                elevation: 0,
                color: AppColors.primaryColor,
                height: 50,
                minWidth: 500,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  openImages();
                },
                child: const Text(
                  'Upload Images',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              imagefiles != null
                  ? Wrap(
                      children: imagefiles!.map((imageone) {
                        return Card(
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.file(File(imageone.path)),
                          ),
                        );
                      }).toList(),
                    )
                  : Container(),
              MaterialButton(
                elevation: 0,
                color: AppColors.primaryColor,
                height: 50,
                minWidth: 500,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Save Category',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
