// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  String _password = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_secure_login_pdn4.png",
                fit: BoxFit.cover,
                // height: 800,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $_name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username"
                      ),
                      onChanged: (value){
                        _name = value;
                        setState(() {
                          
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                      ),
                      onChanged: (value){
                        _password = value;
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () async {
                  if (_name != "" && _password != "" ) {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  // color: Colors.deepPurple,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton ? BoxShape.circle : BoxShape.rectangle, // can't use boderRadius
                    borderRadius: BorderRadius.circular( changeButton ? 50 : 8)
                  ),
                  child: changeButton ? Icon(Icons.done, color: Colors.white) : Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
              )
              // ElevatedButton(
              //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              //   onPressed: () {
              //     if (_name != "" && _password != "" ) {
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     }
              //   }, 
              //   child: const Text('Login') 
              // )
            ],
          ),
        ));
  }
}
