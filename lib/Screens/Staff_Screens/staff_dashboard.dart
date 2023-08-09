import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/Staff_Screens/atten_nav.dart';
import 'package:management/Screens/Staff_Screens/attendance.dart';
import 'package:management/Screens/Staff_Screens/events_nav.dart';
import 'package:management/Screens/Staff_Screens/events_staff.dart';
import 'package:management/Screens/Staff_Screens/homework.dart';
import 'package:management/Screens/Staff_Screens/homewrk_nav.dart';
import 'package:management/Screens/Student_Screens/attendance_stu.dart';
import 'package:management/Screens/Student_Screens/events_stu.dart';
import 'package:management/Screens/Student_Screens/homework_stu.dart';

class StaffDashboard extends StatelessWidget {
  const StaffDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/bg1.jpg"),fit: BoxFit.fill)
          ),
          // color: Color.fromARGB(95, 226, 226, 226),
          height: size.height / 1,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(height: size.height*0.1,),
              InkWell(
                onTap: () {
                  Get.to(StaffAttenNavScreen());
                },
                child: AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.white,
                  endRadius: 100.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: Text("Attendance"),
                      radius: 60.0,
                      //shape: BoxShape.circle
                    ),
                  ),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(StaffHomeWrkNavScreen());
                },
                child: AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.white,
                  endRadius: 100.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: Text("HomeWork"),
                      radius: 60.0,
                      //shape: BoxShape.circle
                    ),
                  ),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(StaffEventsNavScreen());
                },
                child: AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.white,
                  endRadius: 100.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: Text("Events"),
                      radius: 60.0,
                      //shape: BoxShape.circle
                    ),
                  ),
                  shape: BoxShape.circle,
                  animate: true,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
