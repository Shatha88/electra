import 'package:electra/Screens/Auth/login_page.dart';
import 'package:electra/Screens/Auth/signup_page.dart';
import 'package:flutter/material.dart';

import '../../constents/colors_theme.dart';
import '../../constents/spaces.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenV = MediaQuery.of(context).size.height;
    var screenH = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: screenV / 2,
                color: Colors.white,
                child: const Image(
                    image: AssetImage("assets/images/aaa-removebg-preview.png"),
                    fit: BoxFit.fitWidth,
                    width: double.infinity),
              ),
              kVSpace16,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    "Welcome to ",
                    style: TextStyle(color: headersColor, fontSize: 22),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Text("ELECTRA",
                        style: TextStyle(
                            color: headersColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold))),
              ),
              kVSpace16,
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Find the station closest to you, or view your station with simple steps, right at your fingertips.You are one step away.",
                  style: TextStyle(color: txtFieldColor, fontSize: 16),
                ),
              ),
              kVSpace16,
              kVSpace16,
              kVSpace16,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black87,
                  // foreground
                  padding: const EdgeInsets.symmetric(horizontal: 16),

                  minimumSize: Size(screenH * 0.9, 57),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignupPage()));
                },
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
              kVSpace16,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black87,
                  // foreground
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  minimumSize: Size(screenH * 0.9, 57),

                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
              kVSpace16,
              kVSpace16,
              kVSpace16,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "",
                    style: TextStyle(color: headersColor, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
