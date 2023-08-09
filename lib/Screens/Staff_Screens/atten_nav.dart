import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';
import 'package:management/Screens/Staff_Screens/attendance.dart';
import 'package:management/Screens/Staff_Screens/staff_dashboard.dart';
import 'package:management/controllers/navigationCon.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class StaffAttenNavScreen extends StatelessWidget {
  NavigationController controller = Get.put(NavigationController());

  final pageOptions = [
    AttenStaff(),
    AttenStaff()
    // AttenStaff(),
    // HomeWorkStaff(),
    // // LeaveApprove(),
    // EventsStaff()
  ];
  // var blogg = FaIcon(FontAwesomeIcons.blog,)
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<NavigationController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:
           Obx(
             (() => IndexedStack(
                   index: controller.selectedPage.value,
                   children: pageOptions,
                 )),
           ),
          bottomNavigationBar: Container(
            height: size.height*0,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 15,
                  spreadRadius: 0,
                  offset: Offset(0, -0),
                ),
              ],
            ),
            child: SlidingClippedNavBar(
              backgroundColor: Colors.white,
              onButtonPressed: (int index) {
                controller.selectedPage.value = index;
                controller.update();
              },
              // (index) {
              //   setState(() {
              //     selectedIndex = index;
              //   });
              //   controller.animateToPage(selectedIndex,
              //       duration: const Duration(milliseconds: 400),
              //       curve: Curves.easeOutQuad);
              // },
              
              iconSize: 24,
              activeColor: Colors.green,
              inactiveColor: Color.fromARGB(160, 0, 0, 0),
              selectedIndex: controller.selectedPage.value,
              barItems: [
                BarItem(
                  icon: Icons.add_reaction_sharp,
                  title: 'Attendance',
                ),
                BarItem(
                  icon: Icons.exit_to_app,
                  title: 'LogOut',
                ),
                
              ],
            ),
          ),
        ),
      );
    });
  }
}