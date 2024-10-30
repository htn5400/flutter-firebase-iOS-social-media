// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flashquad_app/components/my_button.dart';
import 'package:flashquad_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  
  RegisterPage({super.key, required this.onTap});

  // text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  // register method
  void register () {}

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
          
              // username textfield
              MyTextfield(
                hintText: "Username", 
                obscureText: false, 
                controller: usernameController
              ),

              const SizedBox(height:10),

              // email textfield
              MyTextfield(
                hintText: "Email", 
                obscureText: false, 
                controller: emailController,
              ),

              const SizedBox(height:10),
          
              // password textfield
              MyTextfield(
                hintText: "Password", 
                obscureText: true, 
                controller: passwordController
              ),

              const SizedBox(height:10),
              
              // confirm password textfield
              MyTextfield(
                hintText: "Confirm Password", 
                obscureText: true, 
                controller: confirmPwController
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

              // register button
              MyButton(
                text: "Register",
                onTap: register,  
              ),
          
              const SizedBox(height:25),

              // don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      " Login Here", 
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