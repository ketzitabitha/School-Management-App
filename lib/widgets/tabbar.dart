import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/parent_login.dart';
import 'package:management/Screens/LoginScreens/staff_login.dart';
import 'package:management/Screens/LoginScreens/student_login.dart';
import 'package:management/controllers/navigationCon.dart';

class TabBarDashBoard extends StatelessWidget {
  TabBarDashBoard({super.key});

  NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height/1.8,
      child: ContainedTabBarView(
        tabBarProperties: const TabBarProperties(
            // indicatorSize: TabBarIndicatorSize.label,
            // indicatorPadding:
            //     EdgeInsets.symmetric(horizontal: size.width * 0.1),
            unselectedLabelStyle: TextStyle(
              // fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
            ),
            labelStyle: TextStyle(
              // fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
            ),
            indicatorPadding: EdgeInsets.only(right: 30,left: 30),
            indicatorColor: Color(0xff2dd2a8),
            unselectedLabelColor: Color.fromARGB(255, 192, 192, 192),
            labelColor: Colors.black),
        tabs: const [
          Text(
            'Student Login',style: TextStyle(
              // fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              fontSize: 15
            ),
          ),
          Text(
            'Parent Login',style: TextStyle(
              // fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              fontSize: 15
            ),
          ),
          Text(
            'Staff Login',style: TextStyle(
              // fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              fontSize: 15
            ),
          ),
        ],
        views: [Student_LogIn_Screen(), Parent_LogIn_Screen(), StaffLogin()],
        onChange: (index) => print(index),
      ),
    );
  }
}