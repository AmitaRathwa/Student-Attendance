import 'dart:ui';

//import 'package:firebaseapp/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:internship1/signup_page.dart';

import 'dashboad.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img10.jpg"),
                    fit: BoxFit.cover
                ),
        
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text("Hello",
                  // style: TextStyle(fontSize:40,fontWeight: FontWeight.bold),),
                  // Text("Sign into your account",
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     color: Colors.grey[500]
                  //   ),
                  // ),
        
                  Text("Welcome Back",
                    style: TextStyle(fontSize:40,fontWeight: FontWeight.bold),),
                  Text("Enter your credential to login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500]
                    ),
                  ),
        
                  SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email,color: Colors.teal,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
        
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined,color: Colors.teal,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(children: [
                    Expanded(child: Container(),),
                    Text("Forgot Passwword",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[500]
                      ),
                    ),
                  ],),
        
                ],
              ),
            ),
        
            SizedBox(height: 50,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage()));
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Container(
                  width: w*0.5,
                  height: h*0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("assets/images/img10.jpg"),
                        fit: BoxFit.cover
                    ),
        
                  ),
                  child :  Center(
        
                    child: Text("Login",
        
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
        
                    ),
                  )//
                ),
              ),
            ),
            SizedBox(height:w*0.08,),
            RichText(text: TextSpan(
                text: "Don\'t have an account?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
                children: [TextSpan(
                    text: "Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
                )]
            ))
          ],
        ),
      ),
    );
  }
}

