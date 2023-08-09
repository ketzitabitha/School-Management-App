import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class DummyHome extends StatelessWidget {
  const DummyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(onPressed: (){
          Get.to(Login_Dashboard());
        }, child: Text("HI")),
      ),
    );
  }
}