import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
//  const HomeScreen({Key? key}) : super(key: key);
  final String username;
  const HomeScreen(this.username, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(height: 25,),
          Center(child: Text("Welcome $username", style: const TextStyle(fontSize: 25),)),
          const SizedBox(height: 250,),
          const Text('#FlutterWithFun',style: TextStyle(color: Colors.black, fontSize: 25),)
        ])
        );
  }
}
