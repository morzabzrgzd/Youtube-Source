import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkdinLoginPage extends StatelessWidget {
  const LinkdinLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/icons/LI-Logo.png',
          width: 120,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign in',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'Or   ',
                style: const TextStyle(color: Colors.grey, fontSize: 18),
                children: [
                  TextSpan(
                      text: 'Join Linkdin',
                      style: const TextStyle(
                        color: Color(0xff0a66c3),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // ignore: avoid_print
                          print('Tap join Linkdin');
                        }),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const BuildCustomTextField(
              obscureText: false,
              hintText: 'Email',
            ),
            const SizedBox(height: 10),
            const BuildCustomTextField(
              obscureText: true,
              hintText: 'Password',
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forget Password?',
                style: TextStyle(color: Color(0xff0a66c2)),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    shadowColor: Colors.transparent,
                    backgroundColor: const Color(0xff0a66c2),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class BuildCustomTextField extends StatelessWidget {
  const BuildCustomTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
  });
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
        isCollapsed: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
