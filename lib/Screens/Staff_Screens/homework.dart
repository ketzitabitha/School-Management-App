import 'package:accordion/accordion.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class HomeWorkStaff extends StatelessWidget {
  HomeWorkStaff({super.key});

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  TextEditingController date5 = TextEditingController();
  TextEditingController day5 = TextEditingController();
  TextEditingController subject5 = TextEditingController();
  TextEditingController homework5 = TextEditingController();

  TextEditingController date6 = TextEditingController();
  TextEditingController day6 = TextEditingController();
  TextEditingController subject6 = TextEditingController();
  TextEditingController homework6 = TextEditingController();

  TextEditingController date7 = TextEditingController();
  TextEditingController day7 = TextEditingController();
  TextEditingController subject7 = TextEditingController();
  TextEditingController homework7 = TextEditingController();

  TextEditingController date8 = TextEditingController();
  TextEditingController day8 = TextEditingController();
  TextEditingController subject8 = TextEditingController();
  TextEditingController homework8 = TextEditingController();

  TextEditingController date9 = TextEditingController();
  TextEditingController day9 = TextEditingController();
  TextEditingController subject9 = TextEditingController();
  TextEditingController homework9 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeWork"),
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
                              Text("Subject"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.05,
                                child: TextFormField(
                                  controller: subject5,
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
                              Text("Home-Work"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.2,
                                child: TextFormField(
                                  controller: homework5,
                                  maxLines: 20,
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
                                  "Subject": subject5.text,
                                  "Home-Work": homework5.text,
                                };
                                FirebaseFirestore.instance
                                    .collection("Class 5 HomeWork")
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
                              Text("Subject"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.05,
                                child: TextFormField(
                                  controller: subject6,
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
                              Text("Home-Work"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.2,
                                child: TextFormField(
                                  controller: homework6,
                                  maxLines: 20,
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
                                  "Subject": subject6.text,
                                  "Home-Work": homework6.text,
                                };
                                FirebaseFirestore.instance
                                    .collection("Class 6 HomeWork")
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
                              Text("Subject"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.05,
                                child: TextFormField(
                                  controller: subject7,
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
                              Text("Home-Work"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.2,
                                child: TextFormField(
                                  controller: homework7,
                                  maxLines: 20,
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
                                  "Subject": subject7.text,
                                  "Home-Work": homework7.text,
                                };
                                FirebaseFirestore.instance
                                    .collection("Class 7 HomeWork")
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
                              Text("Subject"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.05,
                                child: TextFormField(
                                  controller: subject8,
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
                              Text("Home-Work"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.2,
                                child: TextFormField(
                                  controller: homework8,
                                  maxLines: 20,
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
                                  "Subject": subject8.text,
                                  "Home-Work": homework8.text,
                                };
                                FirebaseFirestore.instance
                                    .collection("Class 8 HomeWork")
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
                              Text("Subject"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.05,
                                child: TextFormField(
                                  controller: subject9,
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
                              Text("Home-Work"),
                              Container(
                                width: size.width * 0.6,
                                height: size.height * 0.2,
                                child: TextFormField(
                                  controller: homework9,
                                  maxLines: 20,
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
                                  "Subject": subject9.text,
                                  "Home-Work": homework9.text,
                                };
                                FirebaseFirestore.instance
                                    .collection("Class 9 HomeWork")
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
    );
  }
}
