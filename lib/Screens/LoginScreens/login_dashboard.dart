
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/widgets/tabbar.dart';

class Login_Dashboard extends StatelessWidget {
  const Login_Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: size.height/1,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: size.height * 0.38,
                width: size.width,
                child: Image.asset(
                  'asset/logo.png',
                ),
              ),
              TabBarDashBoard()
            ]),
          ),
        ),
      ),
    );
  }
}
