import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f2),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: double.infinity,
              height: 160,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1f1f39),
                    ),
                  ),
                  Text(
                    'Enter your details below & free sign up',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xffb8b8d2),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      const BuildTextField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        title: 'Your Email',
                        suffixIcon: SizedBox(),
                      ),
                      const SizedBox(height: 25),
                      const BuildTextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        title: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            backgroundColor: const Color(0xff3d5cff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Creat account',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Already have an account？',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color(0xff858597),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    super.key,
    required this.title,
    required this.keyboardType,
    required this.obscureText,
    required this.suffixIcon,
  });

  final String title;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color(0xff858597),
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: obscureText,
          cursorColor: Colors.grey,
          cursorHeight: 23,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            // hintText: 'Email',
            // hintStyle: GoogleFonts.poppins(color: Colors.grey),
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            isCollapsed: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}
