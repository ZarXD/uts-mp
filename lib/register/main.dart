import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  bool _showpassword = true;
  bool _showConfirmpassword = true;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();
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
                Center(
                  child: Column(
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
                            "LKS MART",
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
                ),

                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Silahkan isi Data Pribadi Anda",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w100,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text("Nama Lengkap"),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text("Alamat"),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Alamat",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text("Username"),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
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
                SizedBox(height: 15),
                Text("Konfirmasi Password*"),
                SizedBox(height: 8),
                TextField(
                  obscureText: _showConfirmpassword,
                  controller: _passwordConfirmController,
                  decoration: InputDecoration(
                    hintText: "Min. 8 characters",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showConfirmpassword = !_showConfirmpassword;
                        });
                      },
                      icon: Icon(
                        _showConfirmpassword
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
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
              onPressed: () {
                
              },
              child: Text(
                "Daftar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sudah punya akun? Login"),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, "/");
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
