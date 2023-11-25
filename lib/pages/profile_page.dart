import 'package:famasi_app/pages/update_profile.dart';
import 'package:flutter/material.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  var data = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text(
                "famasi@famasiapp.com",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black54),
              ),
              leading: Icon(
                Icons.email,
                color: Colors.black45,
              ),
            ),
            const ListTile(
              title: Text(
                "+255693331836",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black54),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.black45,
              ),
            ),
            const ListTile(
              title: Text(
                "Famasi Center",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black54),
              ),
              leading: Icon(
                Icons.roofing,
                color: Colors.black45,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpdateProfileScreen(),
                    ));
              },
              title: const Text(
                "Change profile",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black54),
              ),
              leading: const Icon(
                Icons.edit_outlined,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
