import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class Class9Atten extends StatelessWidget {
  const Class9Atten({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 9 Attendance"),
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
      body: Container(
        height: size.height,
        width: size.width,
        // decoration: const BoxDecoration(
        //   // image: DecorationImage(
        //   //     opacity: 100,
        //   //     image: AssetImage("asset/bg5.png"),
        //   //     fit: BoxFit.cover),
        // ),
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Class 9 Attendance")
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: ((context, index) {
                      QueryDocumentSnapshot x = snapshot.data!.docs[index];

                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.02),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              // height: size.height * 0.3,
                              width: size.width,
                              color:  Color.fromARGB(255, 241, 241, 241),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.004,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      height: size.height * 0.04,
                                      width: size.width,
                                      // color: Colors.blueAccent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            x["Date"],
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            x["Day"],
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: size.height * 0.004,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      // height: size.height * 0.04,
                                      width: size.width,
                                      // color: Colors.blueGrey,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Number of Present : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(x["Present"])
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      // height: size.height * 0.04,
                                      width: size.width,
                                      // color: Colors.blueGrey,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Number of Absent : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(x["Absent"])
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    child: Container(
                                      // height: size.height * 0.04,
                                      width: size.width,
                                      // color: Colors.blueGrey,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Absents : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                  width: size.width * 0.6,
                                                  child: Text(
                                                      x["Names"]))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                          ],
                        ),
                      );
                    }));
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
