import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class EventsStaff extends StatelessWidget {
  EventsStaff({super.key});

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  TextEditingController date = TextEditingController();
  TextEditingController day = TextEditingController();
  TextEditingController event = TextEditingController();
  TextEditingController dis = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
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
            Image.asset("asset/events.png"),
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
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                          Text("Add Event")
                        ],
                      ),
                    ),
                    content: Container(
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
                                    controller: date,
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
                                    controller: day,
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
                                Text("Event Name"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.05,
                                  child: TextFormField(
                                    controller: event,
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
                                Text("Description"),
                                Container(
                                  width: size.width * 0.6,
                                  height: size.height * 0.2,
                                  child: TextFormField(
                                    controller: dis,
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
                                    "Date": date.text,
                                    "Day": day.text,
                                    "Event Name": event.text,
                                    "Description": dis.text,
                                  };
                                  FirebaseFirestore.instance
                                      .collection("Events")
                                      .doc(event.text)
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
                  )
                ])
          ],
        ),
      ),
    );
  }
}
