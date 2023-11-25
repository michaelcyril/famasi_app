import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class AddStockScreen extends StatefulWidget {
  const AddStockScreen({super.key});

  @override
  State<AddStockScreen> createState() => _AddStockScreenState();
}

class _AddStockScreenState extends State<AddStockScreen> {
  TextEditingController quantityController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  TextEditingController expireController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? validateUsername(String? value) {
    if (value!.isEmpty) {
      return 'Email Field must not be empty';
    } else {
      if (validateEmail(value)) {
        return null;
      } else {
        return 'Email Field must be valid';
      }
    }
  }

  bool validateEmail(String email) {
    String pattern =
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        title: const Text(
          "Add Stock",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: quantityController,
                        validator: validateUsername,
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'Quantity',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: priceController,
                        // validator: validateUsername,
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'Price Per Product',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // controller: userPasswordController,
                        controller: expireController,
                        keyboardType: TextInputType.datetime,
                        // obscureText: true,
                        // validator: validatePassword,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'Expire date',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  color: Colors.white,
                  child: Material(
                    borderRadius: BorderRadius.circular(40.0),
                    elevation: 0,
                    child: Container(
                      height: 48,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(40.0),
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
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
