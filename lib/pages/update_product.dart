import 'dart:io';

import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: const Text(
          "Update Product",
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
                      labelText: 'Product Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  controller: descriptionController,
                  maxLines: 5,
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      labelText: 'Description'),
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
              Container(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 0, bottom: 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButton<String>(
                  value: chosenStatus,
                  hint: const Text('Select Category'),
                  dropdownColor: Colors.white,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: const SizedBox(),
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  items: <String>[
                    'Syrup',
                    'Pills',
                    'Injection',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      chosenStatus = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  controller: priceController,
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      labelText: 'Selling Price'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
                  'Update',
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
