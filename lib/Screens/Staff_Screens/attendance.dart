import 'package:accordion/accordion.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';
import 'package:management/Screens/Staff_Screens/staff_dashboard.dart';

class AttenStaff extends StatelessWidget {
  AttenStaff({super.key});

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  TextEditingController date5 = TextEditingController();
  TextEditingController day5 = TextEditingController();
  TextEditingController present5 = TextEditingController();
  TextEditingController absent5 = TextEditingController();
  TextEditingController names5 = TextEditingController();

  TextEditingController date6 = TextEditingController();
  TextEditingController day6 = TextEditingController();
  TextEditingController present6 = TextEditingController();
  TextEditingController absent6 = TextEditingController();
  TextEditingController names6 = TextEditingController();

  TextEditingController date7 = TextEditingController();
  TextEditingController day7 = TextEditingController();
  TextEditingController present7 = TextEditingController();
  TextEditingController absent7 = TextEditingController();
  TextEditingController names7 = TextEditingController();

  TextEditingController date8 = TextEditingController();
  TextEditingController day8 = TextEditingController();
  TextEditingController present8 = TextEditingController();
  TextEditingController absent8 = TextEditingController();
  TextEditingController names8 = TextEditingController();

  TextEditingController date9 = TextEditingController();
  TextEditingController day9 = TextEditingController();
  TextEditingController present9 = TextEditingController();
  TextEditingController absent9 = TextEditingController();
  TextEditingController names9 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Attendance"),
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
        child: Container(
          // height: size.height/1,
          child: Column(
            children: [
              Image.asset("asset/staffAtten.png"),
              Accordion(
                disableScrolling: true,
                headerBackgroundColor: Colors.white,
                rightIcon: Icon(Icons.expand_more),
                flipRightIconIfOpen: true,
                contentBorderColor: Colors.white,
                contentBackgroundColor: Color.fromARGB(172, 243, 243, 243),
                children: [
                  AccordionSection(
                    header: Container(
                      child: Row(
                        children: [
                          Icon(Icons.filter_5),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Text("5th Standard")
                        ],
                      ),
                    ),
                    content: Container(
                      // height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: date5,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Day"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: day5,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Present"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: present5,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Absent"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: absent5,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Names"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: names5,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    fixedSize: const Size(200, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50))),
                                onPressed: () {
                                  Map<String, dynamic> data = {
                                    "Date": date5.text,
                                    "Day": day5.text,
                                    "Present": present5.text,
                                    "Absent": absent5.text,
                                    "Names": names5.text,
                                  };
                                  FirebaseFirestore.instance
                                      .collection("Class 5 Attendance")
                                      .doc(date5.text)
                                      .set(data)
                                      .then((value) => showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.green,
                                                // title: Text('Login Failed'),
                                                content: Text("Submit Success"),
                                              );
                                            },
                                          ));
                                },
                                child: Text("Submit",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white))),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AccordionSection(
                    header: Container(
                      child: Row(
                        children: [
                          Icon(Icons.filter_6),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Text("6th Standard")
                        ],
                      ),
                    ),
                    content: Container(
                      // height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: date6,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Day"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: day6,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Present"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: present6,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Absent"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: absent6,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Names"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: names6,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    fixedSize: const Size(200, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50))),
                                onPressed: () {
                                  Map<String, dynamic> data = {
                                    "Date": date6.text,
                                    "Day": day6.text,
                                    "Present": present6.text,
                                    "Absent": absent6.text,
                                    "Names": names6.text,
                                  };
                                  FirebaseFirestore.instance
                                      .collection("Class 6 Attendance")
                                      .doc(date6.text)
                                      .set(data)
                                      .then((value) => showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.green,
                                                // title: Text('Login Failed'),
                                                content: Text("Submit Success"),
                                              );
                                            },
                                          ));
                                },
                                child: Text("Submit",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white))),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AccordionSection(
                    header: Container(
                      child: Row(
                        children: [
                          Icon(Icons.filter_7),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Text("7th Standard")
                        ],
                      ),
                    ),
                    content: Container(
                      // height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: date7,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Day"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: day7,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Present"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: present7,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Absent"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: absent7,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Names"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: names7,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    fixedSize: const Size(200, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50))),
                                onPressed: () {
                                  Map<String, dynamic> data = {
                                    "Date": date7.text,
                                    "Day": day7.text,
                                    "Present": present7.text,
                                    "Absent": absent7.text,
                                    "Names": names7.text,
                                  };
                                  FirebaseFirestore.instance
                                      .collection("Class 7 Attendance")
                                      .doc(date7.text)
                                      .set(data)
                                      .then((value) => showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.green,
                                                // title: Text('Login Failed'),
                                                content: Text("Submit Success"),
                                              );
                                            },
                                          ));
                                },
                                child: Text("Submit",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white))),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AccordionSection(
                    header: Container(
                      child: Row(
                        children: [
                          Icon(Icons.filter_8),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Text("8th Standard")
                        ],
                      ),
                    ),
                    content: Container(
                      // height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: date8,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Day"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: day8,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Present"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: present8,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Absent"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: absent8,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Names"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: names8,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    fixedSize: const Size(200, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50))),
                                onPressed: () {
                                  Map<String, dynamic> data = {
                                    "Date": date8.text,
                                    "Day": day8.text,
                                    "Present": present8.text,
                                    "Absent": absent8.text,
                                    "Names": names8.text,
                                  };
                                  FirebaseFirestore.instance
                                      .collection("Class 8 Attendance")
                                      .doc(date8.text)
                                      .set(data)
                                      .then((value) => showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.green,
                                                // title: Text('Login Failed'),
                                                content: Text("Submit Success"),
                                              );
                                            },
                                          ));
                                },
                                child: Text("Submit",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white))),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  AccordionSection(
                    header: Container(
                      child: Row(
                        children: [
                          Icon(Icons.filter_9),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Text("9th Standard")
                        ],
                      ),
                    ),
                    content: Container(
                      // height: size.height,
                      width: size.width,
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: date9,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Day"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: day9,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Present"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: present9,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Absent"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: absent9,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Names"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: names9,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 10, bottom: 10, left: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    fixedSize: const Size(200, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50))),
                                onPressed: () {
                                  Map<String, dynamic> data = {
                                    "Date": date9.text,
                                    "Day": day9.text,
                                    "Present": present9.text,
                                    "Absent": absent9.text,
                                    "Names": names9.text,
                                  };
                                  FirebaseFirestore.instance
                                      .collection("Class 9 Attendance")
                                      .doc(date9.text)
                                      .set(data)
                                      .then((value) => showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.green,
                                                // title: Text('Login Failed'),
                                                content: Text("Submit Success"),
                                              );
                                            },
                                          ));
                                },
                                child: Text("Submit",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white))),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
