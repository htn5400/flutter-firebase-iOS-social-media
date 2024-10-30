// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flashquad_app/components/my_button.dart';
import 'package:flashquad_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  // text controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login () {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.person,
                size:80,
                color:Theme.of(context).colorScheme.inversePrimary,
              ),
              // after logo i want to have a gap so let's use SizedBox
              const SizedBox(height:25), 
          
              // app name
              Text(
                "H U O O N G R Y",
                style: TextStyle(fontSize:20),  
              ),
          
              const SizedBox(height:50),
          
              // email textfield
              MyTextfield(
                hintText: "Email", 
                obscureText: false, 
                controller: emailController
              ),

              const SizedBox(height:10),
          
              // password textfield
              MyTextfield(
                hintText: "Password", 
                obscureText: true, 
                controller: passwordController
              ),

              const SizedBox(height:10),

              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?", style: TextStyle(color:Theme.of(context).colorScheme.inversePrimary)),
                ],
              ),
          
              const SizedBox(height:25),

              // sign in button
              MyButton(
                text: "Login",
                onTap: login,  
              ),
          
              const SizedBox(height:25),

              // don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      " Register Here", 
                      style: TextStyle(
                        fontWeight: 
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
          
            
            ],
          ),
        ),
      ),
    ); 
  }
}