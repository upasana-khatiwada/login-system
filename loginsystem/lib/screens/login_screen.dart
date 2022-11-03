import 'package:flutter/material.dart';
// ignore: unused_import
import 'home_screen.dart';

TextStyle myStyle = const TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        onPressed: () {
          if (username == "upasana" && password == "hello123") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            debugPrint("login failed");
          }
        },
        child: const Text('Login',
            style: TextStyle(color: Colors.black, fontSize: 25)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.supervised_user_circle, size: 100),
                      const SizedBox(height: 20),
                      usernameField,
                      const SizedBox(height: 10),
                      passwordField,
                      const SizedBox(height: 10),
                      myLoginButton,
                      const SizedBox(height: 25),
                      const Text('#flutterWithFun',
                          style: TextStyle(color: Colors.black, fontSize: 25)),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
