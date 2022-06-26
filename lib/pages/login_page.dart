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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hey.png",
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value){
                          if (value!.isEmpty) {
                            return "Username can not be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          _name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value){
                          if (value!.isEmpty) {
                            return "Password can not be empty";
                          }
                          if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          _password = value;
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
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
          ),
        ));
  }
}
