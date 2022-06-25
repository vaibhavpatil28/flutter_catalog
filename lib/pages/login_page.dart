import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
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
              const SizedBox(height: 20),
              const Text(
                "Welcome",
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                }, 
                child: const Text('Login') 
                )
            ],
          ),
        ));
  }
}
