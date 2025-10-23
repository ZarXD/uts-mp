import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("gambar/Logo.png"))
                  ),
                ),
                Column(
                  children: [
                    Text("LKS"),
                    Text("MART")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
