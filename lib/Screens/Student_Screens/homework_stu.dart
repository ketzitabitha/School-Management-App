import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/HomeWork/class5.dart';
import 'package:management/Screens/HomeWork/class6.dart';
import 'package:management/Screens/HomeWork/class7.dart';
import 'package:management/Screens/HomeWork/class8.dart';
import 'package:management/Screens/HomeWork/class9.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class StuHomeWork extends StatelessWidget {
  const StuHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home-Work"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Get.offAll(Login_Dashboard());
            },
          ),
          SizedBox(
            width: size.width * 0.02,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("asset/homework.png"),
            SizedBox(height: size.height*0.02,),
            GestureDetector(
              onTap: () {
                Get.to(Class5Home());
              },
              child: Container(
                height: size.height*0.07,
                width: size.width,
                color: Color.fromARGB(255, 248, 228, 167),
                child: Center(child: Text("Class 5",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: size.height*0.02,),
            GestureDetector(
              onTap: () {
                Get.to(Class6Home());;
              },
              child: Container(
                height: size.height*0.07,
                width: size.width,
                color: Color.fromARGB(255, 205, 255, 159),
                child: Center(child: Text("Class 6",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: size.height*0.02,),
            GestureDetector(
              onTap: () {
                Get.to(Class7Home());
              },
              child: Container(
                height: size.height*0.07,
                width: size.width,
                color: Color.fromARGB(255, 255, 230, 225),
                child: Center(child: Text("Class 7",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: size.height*0.02,),
            GestureDetector(
              onTap: () {
                Get.to(Class8Home());
              },
              child: Container(
                height: size.height*0.07,
                width: size.width,
                color: Color.fromARGB(255, 195, 248, 244),
                child: Center(child: Text("Class 8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: size.height*0.02,),
            GestureDetector(
              onTap: () {
                Get.to(Class9Home());
              },
              child: Container(
                height: size.height*0.07,
                width: size.width,
                color: Color.fromARGB(255, 252, 224, 255),
                child: Center(child: Text("Class 9",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}