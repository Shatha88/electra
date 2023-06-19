import 'package:electra/Screens/Auth/ForgetPassword.dart';
//import 'package:electra/Screens/Auth/forgetpassword.dart';
import 'package:electra/Screens/Auth/signup_page.dart';
import 'package:electra/components/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../../components/mTextField.dart';
import '../../constents/colors_theme.dart';
import '../../constents/spaces.dart';
import '../../services/api/auth_api.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isPassword = false;

  @override
  Widget build(BuildContext context) {
    var screenV = MediaQuery.of(context).size.height;
    var screenH = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: bGColor,
            width: double.infinity,
            height: screenV,
            child: Column(
              children: <Widget>[
                kVSpace64,
                kVSpace64,
                const Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Electra",
                      style: TextStyle(color: txtFieldColor, fontSize: 32),
                    ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Login",
                      style: TextStyle(color: txtFieldColor, fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                kVSpace64,
                const Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Your Email",
                      style: TextStyle(color: txtFieldColor, fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                mTextField(
                  isPassword: null,
                  controller: emailController,
                  hint: "example@gmail.com",
                  label: "Email",
                ),
                kVSpace16,
                const Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      " Password",
                      style: TextStyle(color: txtFieldColor, fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                mTextField(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    obscureText: isPassword,
                    isPassword: isPassword,
                    controller: passwordController,
                    hint: "*********",
                    label: "Password",
                    icon: CupertinoIcons.eye),
                kVSpace16,
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    );
                  },
                  child: const Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        " forget password?",
                        style: TextStyle(color: txtFieldColor, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                kVSpace16,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black87,
                    // background
                    onPrimary: Colors.white,
                    // foreground
                    padding: const EdgeInsets.symmetric(horizontal: 16),

                    minimumSize: Size(screenH * 0.9, 57),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onPressed: () async{

                    // todo
                    // check user type:
                    // if provider go to the provider screen
                    // if consumer go to the consumer screen
                    // create method to check user type from response:
                    final Map body = {
                    "email": emailController.text,
                    "password": passwordController.text,

                    };

                    final response = await createAccount(body: body);
                    print(response.body);
                    if (response.statusCode == 200) {
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(
                      //         builder: (context) => HomeScreen()),
                      //         (route) => false);
                      print("Success");
                    }


                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));


                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
                kVSpace16,
                kVSpace16,
                kVSpace16,
                const Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Text(
                      " Don't have account?",
                      style: TextStyle(color: txtFieldColor, fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black87,
                    // background
                    onPrimary: Colors.white,
                    // foreground
                    padding: const EdgeInsets.symmetric(horizontal: 16),

                    minimumSize: Size(screenH * 0.9, 57),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupPage()));
                  },
                  child: const Text(
                    'Create an account',
                    style: TextStyle(color: Colors.white, fontSize: 26),
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
