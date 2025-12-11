import 'package:flutter/material.dart';
import '../../widgets/input_field.dart';
import '../../widgets/social_box.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e9ff),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 350,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("lib/assets/cignifiwhite.png", height: 40),
                const SizedBox(height: 32),
                const Text(
                  "Create an Account",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 24),
                const InputField(label: "Full Name"),
                const SizedBox(height: 16),
                const InputField(label: "Email"),
                const SizedBox(height: 16),
                const InputField(label: "Password", obscure: true),
                const SizedBox(height: 16),
                const InputField(label: "Confirm Password", obscure: true),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff08299b),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "- Or sign up with -",
                  style: TextStyle(color: Colors.black45),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialBox(asset: "lib/assets/google.png"),
                    SizedBox(width: 16),
                    SocialBox(asset: "lib/assets/facebook.png"),
                    SizedBox(width: 16),
                    SocialBox(asset: "lib/assets/twitter.png"),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xff08299b),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
