import 'package:flutter/material.dart';
import 'package:login_signup/View/widgets/signupbutton.global.dart';
import 'package:login_signup/View/widgets/text.form.global.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/View/login.view.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'RIDESENSE',
                    style: TextStyle(
                      color: GlobalColor.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ATTACK',
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Sign up for an account',
                  style: TextStyle(
                      color: GlobalColor.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 45),
                // Email Input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                // Password input
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 20),
                // Confirm Password input
                TextFormGlobal(
                  controller: confirmPasswordController,
                  text: 'Confirm Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 10),
                const ButtonGlobal(),
                const SizedBox(height: 25),
                // const SocialSignup(),
                const SizedBox(height: 150),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoginView()), // Navigate to the LoginView
                      );
                    },
                    child: const Text(
                      "Already have an account? Sign in",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
