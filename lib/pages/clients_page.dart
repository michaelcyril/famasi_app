import 'package:famasi_app/pages/client_debt.dart';
import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class ClientsPageScreen extends StatefulWidget {
  const ClientsPageScreen({super.key});

  @override
  State<ClientsPageScreen> createState() => _ClientsPageScreenState();
}

class _ClientsPageScreenState extends State<ClientsPageScreen> {
  var data = [
    {
      "name": "John kibase",
      // "image": "biscuits_snacks.png",
      "total": "10,000",
    },
    {
      "name": "Mika Mika",
      // "image": "food_beverage.png",
      "total": "5,000",
    },
    {
      "name": "Kipele Ki",
      // "image": "house_hold.png",
      "total": "700",
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
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ClientDebtsScreen(),));
                            },
                            leading: const Icon(
                              Icons.person,
                              color: Colors.black45,
                            ),
                            title: Text("${e['name']!}  \nphone: 0693331836"),
                            subtitle: Text(
                              "Total Debt : ${e['total']!}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: AppColors.primaryColor),
                            ),
                            trailing: const Icon(
                              Icons.phone,
                              color: Colors.black45,
                            ),
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
            addClientDialog();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneCOntroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? method;

  addClientDialog() {
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
                              "Add client",
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
                                    labelText: 'Client Name'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter client name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: phoneCOntroller,
                                style: const TextStyle(fontSize: 15),
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    labelText: 'Phone'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter phone number';
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
}
