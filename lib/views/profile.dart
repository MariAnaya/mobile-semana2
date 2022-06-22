import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/maria-anaya.png'),
                radius: 130),
            const Text(
              "\n Name: Maria Anaya",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "Username: marianaya01",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "Cel: 3182302865",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "Email: manaya@lsv-tech.com",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}