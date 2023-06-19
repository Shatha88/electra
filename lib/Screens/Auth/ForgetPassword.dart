import 'package:electra/components/CustomTextField.dart';

import 'package:flutter/material.dart';

import '../../constents/colors_theme.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: bGColor,
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              Text("Please enter your Email"),
              mTextField(
                onPressed: () {},
                hint: 'example@gmail.com',
                label: "",
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87,
                  // background
                  onPrimary: Colors.white,
                  // foreground
                  padding: const EdgeInsets.symmetric(horizontal: 16),

                  minimumSize: Size( 200, 57),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                onPressed: () async {
                // todo:

                },
                child: const Text(
                  'Rest Password',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
