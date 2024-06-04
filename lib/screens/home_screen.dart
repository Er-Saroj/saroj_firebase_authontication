// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saroj_firebase_authontication/controller/auth_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.email}) : super(key: key);

  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/login.png'))),
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 26),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 26),
          ),
          ElevatedButton(
              onPressed: () => AuthController.instance..logOut(),
              child: Text('Process'))
        ],
      ),
    );
  }
}
