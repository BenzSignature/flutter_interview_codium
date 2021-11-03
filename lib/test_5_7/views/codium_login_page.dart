import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:interview_codium/test_5_7/views/home_page.dart';

import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    void validator() {
      if (_username.text == "CODIUM" && _password.text == "CODIUM") {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        setState(() {
          _username.clear();
          _password.clear();
        });
      } else {
        Fluttertoast.showToast(
          msg: "Enter Your Username or Password.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Color(0xFF88464A),
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Image.asset(
                'assets/images/logo_codium.png',
                width: 300,
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: TextFormField(
                            onEditingComplete: (() =>
                                _focusNode.requestFocus()),
                            controller: _username,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.black54,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 12),
                              hintText: "Username",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: TextFormField(
                            focusNode: _focusNode,
                            obscureText: _obscureText,
                            controller: _password,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline_rounded,
                                  color: Colors.black54,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 12),
                                hintText: "Password",
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText == true
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 70),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 55),
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
                    Future.delayed(Duration(milliseconds: 20000));
                    validator();
                  },
                  child: Text(
                    'LOG IN',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xFF0C263F)),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 10.5.sp, color: Color(0xFF8D8D8D)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "SIGN UP NOW",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF464646)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
