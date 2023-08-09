import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class LeavePar extends StatelessWidget {
  const LeavePar({super.key});
  _callNumber() async {
    const number = '0987654321'; //set the number here
    var res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Permissions"),
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _callNumber();
                            },
                            child: Image.asset("asset/call.png")),
                        )
                      ],
                    ),
                      )),
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
                        width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _callNumber();
                            },
                            child: Image.asset("asset/call.png")),
                        )
                      ],
                    ),
                      )),
                      AccordionSection(
                      header: Container(
                        child: Row(
                          children: [
                            Icon(Icons.filter_5),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Text("6th Standard")
                          ],
                        ),
                      ),
                      content: Container(
                        width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _callNumber();
                            },
                            child: Image.asset("asset/call.png")),
                        )
                      ],
                    ),
                      )),
                      AccordionSection(
                      header: Container(
                        child: Row(
                          children: [
                            Icon(Icons.filter_5),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Text("7th Standard")
                          ],
                        ),
                      ),
                      content: Container(
                        width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _callNumber();
                            },
                            child: Image.asset("asset/call.png")),
                        )
                      ],
                    ),
                      )),
                      AccordionSection(
                      header: Container(
                        child: Row(
                          children: [
                            Icon(Icons.filter_5),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Text("8th Standard")
                          ],
                        ),
                      ),
                      content: Container(
                        width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _callNumber();
                            },
                            child: Image.asset("asset/call.png")),
                        )
                      ],
                    ),
                      )),
                      AccordionSection(
                      header: Container(
                        child: Row(
                          children: [
                            Icon(Icons.filter_5),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            Text("9th Standard")
                          ],
                        ),
                      ),
                      content: Container(
                        width: size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              _callNumber();
                            },
                            child: Image.asset("asset/call.png")),
                        )
                      ],
                    ),
                      )),
                ]),
          ],
        ),
      ),
    );
  }
}
