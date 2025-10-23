import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showpassword = true;
  bool _checkbox = true;
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("gambar/Logo.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "LKS",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text(
                          "MART",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Enter your ID and Password to sign in!",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w100,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text("Email"),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text("Password*"),
                SizedBox(height: 8),
                TextField(
                  obscureText: _showpassword,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: "Min. 8 characters",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showpassword = !_showpassword;
                        });
                      },
                      icon: Icon(
                        _showpassword
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                    Text("Keep me logged in"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18, right: 18),
            width: double.infinity,
            height: 50,
            child: FloatingActionButton.small(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueGrey,
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Belum punya akun? Daftar"),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, "/daftar");
                  });
                },
                child: Text(
                  "di sini",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
