// import 'package:double_back_to_close_app/double_back_to_close_app.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:management/Screens/ParentScreens/attendance_parent.dart';
// import 'package:management/Screens/ParentScreens/events_parent.dart';
// import 'package:management/Screens/ParentScreens/homework_parent.dart';
// import 'package:management/Screens/ParentScreens/leave_par.dart';
// import 'package:management/Screens/Staff_Screens/attendance.dart';
// import 'package:management/Screens/Staff_Screens/homework.dart';
// import 'package:management/Screens/Staff_Screens/leave_approve.dart';
// import 'package:management/Screens/Staff_Screens/events_staff.dart';
// import 'package:management/controllers/navigationCon.dart';
// import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

// class ParentNavScreen extends StatelessWidget {
//   NavigationController controller = Get.put(NavigationController());

//   final pageOptions = [
//     ParentAtten(),
//     ParentHomeWork(),
//     LeavePar(),
//     ParentEvents()
//   ];
//   // var blogg = FaIcon(FontAwesomeIcons.blog,)
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<NavigationController>(builder: (controller) {
//       return SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body: DoubleBackToCloseApp(
//             snackBar: const SnackBar(
//               content: Text('Tap back again to exit app'),
//             ),
//             child: Obx(
//               (() => IndexedStack(
//                     index: controller.selectedPage.value,
//                     children: pageOptions,
//                   )),
//             ),
//           ),
//           bottomNavigationBar: Container(
//             decoration: const BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.green,
//                   blurRadius: 15,
//                   spreadRadius: 0,
//                   offset: Offset(0, -0),
//                 ),
//               ],
//             ),
//             child: SlidingClippedNavBar(
//               backgroundColor: Colors.white,
//               onButtonPressed: (int index) {
//                 controller.selectedPage.value = index;
//                 controller.update();
//               },
//               // (index) {
//               //   setState(() {
//               //     selectedIndex = index;
//               //   });
//               //   controller.animateToPage(selectedIndex,
//               //       duration: const Duration(milliseconds: 400),
//               //       curve: Curves.easeOutQuad);
//               // },
              
//               iconSize: 24,
//               activeColor: Colors.green,
//               inactiveColor: Color.fromARGB(99, 168, 167, 167),
//               selectedIndex: controller.selectedPage.value,
//               barItems: [
//                 BarItem(
//                   icon: Icons.add_reaction_sharp,
//                   title: 'Attendance',
//                 ),
//                 BarItem(
//                   icon: Icons.add_home_rounded,
//                   title: 'Home Work',
//                 ),
//                 BarItem(
//                   icon: Icons.announcement_rounded,
//                   title: 'Leave',
//                 ),
//                 BarItem(
//                   icon: Icons.note_alt_rounded,
//                   title: 'Events',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }