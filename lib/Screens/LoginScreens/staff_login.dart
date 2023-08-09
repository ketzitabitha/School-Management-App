import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management/Screens/All_Screens/DUdummy.dart';
import 'package:management/Screens/Staff_Screens/staff_dashboard.dart';

class StaffLogin extends StatefulWidget {
  const StaffLogin({super.key});

  @override
  State<StaffLogin> createState() => _StaffLoginState();
}

class _StaffLoginState extends State<StaffLogin> {
  
  TextEditingController staffcode = TextEditingController();

  String _email = '';
  String _password = '';
  bool _isLoading = false;
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  void _login() async {
    if (_formKey.currentState!.validate()) {
      if (staffcode.text == "staff123") {
        setState(() {
          _isLoading = true;
        });
        try {
          await _auth.signInWithEmailAndPassword(
            email: _email.trim(),
            password: _password.trim(),
          );
          Get.offAll(StaffDashboard());
        } on FirebaseAuthException catch (e) {
          setState(() {
            _isLoading = false;
          });
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Login Failed'),
                content: Text(e.message.toString()),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
        color: Colors.white,
        // height: size.height,
        // width: size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text("Email"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("Password"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("Staff Code"),
                  ),
                  TextFormField(
                    controller: staffcode,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Staff Code';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        staffcode = value as TextEditingController;
                      });
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: const Size(200, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  _login();
                },
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text("Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)))
          ]),
        ),
      ),
    );
  }
}
