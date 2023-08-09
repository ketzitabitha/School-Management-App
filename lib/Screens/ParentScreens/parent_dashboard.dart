import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/ParentScreens/attendance_parent.dart';
import 'package:management/Screens/ParentScreens/events_parent.dart';
import 'package:management/Screens/ParentScreens/homework_parent.dart';
import 'package:management/Screens/ParentScreens/leave_par.dart';
import 'package:management/Screens/Staff_Screens/leave_approve.dart';
import 'package:management/Screens/Student_Screens/attendance_stu.dart';
import 'package:management/Screens/Student_Screens/events_stu.dart';
import 'package:management/Screens/Student_Screens/homework_stu.dart';

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(ParentAtten());
                    },
                    child: AvatarGlow(
                      startDelay: Duration(milliseconds: 1000),
                      glowColor: Colors.white,
                      endRadius: 80.0,
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
                          radius: 50.0,
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
                      Get.to(ParentHomeWork());
                    },
                    child: AvatarGlow(
                      startDelay: Duration(milliseconds: 1000),
                      glowColor: Colors.white,
                      endRadius: 80.0,
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
                          radius: 50.0,
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
               InkWell(
                onTap: () {
                  Get.to(LeavePar());
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
                      child: Text("Leave"),
                      radius: 50.0,
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
                  Get.to(ParentEvents());
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
                      radius: 50.0,
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
