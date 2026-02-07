import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's get started!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Create your new account."),
            const SizedBox(height: 20),

            const CustomTextField(
              hint: "Full Name",
              icon: Icons.person,
            ),

            const CustomTextField(
              hint: "name@example.com",
              icon: Icons.email,
            ),

            const CustomTextField(
              hint: "Password",
              icon: Icons.lock,
              obscure: true,
              suffix: Icon(Icons.visibility_off),
            ),

            const CustomTextField(
              hint: "Confirm Password",
              icon: Icons.security,
              obscure: true,
              suffix: Icon(Icons.visibility_off),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Sign In"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
