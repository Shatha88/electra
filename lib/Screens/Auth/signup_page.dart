import 'package:electra/Screens/Auth/ForgetPassword.dart';
import 'package:electra/components/CustomTextField.dart';
import 'package:flutter/material.dart';

// import '../../components/mTextField.dart';
import '../../constents/colors_theme.dart';
import '../../constents/spaces.dart';
// import 'forgetpassword.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final fController = TextEditingController();
  final lController = TextEditingController();
  final phoneController = TextEditingController();
  var isPassword = false;
  var isSelected = false;
  var isSelected2 = false;
  String UserType = 'Consumer';

  String dropdownValue = 'PROVIDER';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenV = MediaQuery.of(context).size.height;
    var screenH = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: bGColor,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            width: double.infinity,
            height: screenV,
            child: Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  kVSpace64,
                  kVSpace64,
                  const Align(
                    alignment: AlignmentDirectional.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: txtFieldColor,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "on verifying the email belongs to you",
                        style: TextStyle(color: txtFieldColor, fontSize: 20),
                      ),
                    ),
                  ),
                  kVSpace64,
                  const Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Welcome to ELECTRA",
                        style: TextStyle(
                            color: txtFieldColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = !isSelected;
                                  isSelected2 = !isSelected2;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                height: 90,
                                decoration: !isSelected
                                    ? BoxDecoration(
                                        color: Colors.red,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            spreadRadius: 1,
                                            blurRadius: 15,
                                            offset: const Offset(5, 5),
                                          ),
                                          const BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-5, -5),
                                              blurRadius: 15,
                                              spreadRadius: 1),
                                        ],
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromARGB(255, 152, 222, 201),
                                            Color.fromARGB(255, 152, 222, 190),
                                            Color.fromARGB(255, 152, 222, 180),

                                            // Color.fromARGB(255, 152, 222, 170),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      )
                                    : null,
                                child: Center(
                                    child: const Text(
                                  "Electric car ",
                                  style: TextStyle(
                                      color: txtFieldColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 22),
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = !isSelected;
                                  isSelected2 = !isSelected2;

                                  print("${"1 :  $isSelected"}");
                                  print("${"2 :  $isSelected2"}");
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                height: 90,
                                decoration: isSelected2
                                    ? BoxDecoration(
                                        color: Colors.red,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            spreadRadius: 1,
                                            blurRadius: 15,
                                            offset: const Offset(5, 5),
                                          ),
                                          const BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-5, -5),
                                              blurRadius: 15,
                                              spreadRadius: 1),
                                        ],
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromARGB(255, 152, 222, 201),
                                            Color.fromARGB(255, 152, 222, 190),
                                            Color.fromARGB(255, 152, 222, 180),

                                            // Color.fromARGB(255, 152, 222, 170),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      )
                                    : null,
                                child: Center(
                                    child: const Text(
                                  "Electric Station ",
                                  style: TextStyle(
                                      color: txtFieldColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 22),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: mTextField(
                          isPassword: null,
                          controller: fController,
                          hint: "First name",
                          label: "name",
                        ),
                      ),
                      Expanded(
                        child: mTextField(
                          isPassword: null,
                          controller: lController,
                          hint: "Last Name",
                          label: "Last",
                        ),
                      ),
                    ],
                  ),
                  mTextField(
                    isPassword: null,
                    controller: emailController,
                    hint: "example@gmail.com",
                    label: "Email",
                  ),
                  mTextField(
                    isPassword: null,
                    controller: phoneController,
                    hint: "Phone number",
                    label: "Email",
                  ),
                  mTextField(
                    isPassword: null,
                    controller: passwordController,
                    hint: "Password",
                    label: "Password",
                  ),
                  mTextField(
                    isPassword: null,
                    controller: passwordController2,
                    hint: "Confirm Password",
                    label: "Password",
                  ),
                  kVSpace16,
                  const Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        " Type Of User",
                        style: TextStyle(
                            color: txtFieldColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  kVSpace16,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: txtFieldBGColor),
                    child: DropdownButton<String>(
                      underline: Container(),
                      hint: Text("Choose your Type"),
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        color: iconsColor,
                      ),

                      itemHeight: 60,
                      elevation: 0,
                      isExpanded: true,

                      style: TextStyle(fontSize: 24, color: txtFieldColor),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      value: dropdownValue,
                      // Step 4.
                      items: <String>['PROVIDER', 'CONSUMER']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 24),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  kVSpace16,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const ForgetPassword()),
                          (route) => false);
                    },
                    child: const Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          " forget password?",
                          style: TextStyle(
                              color: txtFieldColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
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
                    onPressed: () async {
                      // todo
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage()));

                      // final Map body = {
                      //   "email": emailController.text,
                      //   "password": passwordController.text,
                      //   "phone": passwordController.text,
                      //   "bank-account": "3djasdasdas",
                      //   // "username": username,
                      //   // "name": nameController.text
                      // };
                      //
                      // final response = await createAccount(body: body);
                      // print(response.body);
                      // if (response.statusCode == 200) {
                      //   // Navigator.of(context).pushAndRemoveUntil(
                      //   //     MaterialPageRoute(
                      //   //         builder: (context) => HomeScreen()),
                      //   //         (route) => false);
                      //   print("Success");
                      // }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                  kVSpace16,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Align(
                      alignment: AlignmentDirectional.center,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        child: Text(
                          "Already Have an Account",
                          style: TextStyle(
                              color: txtFieldColor,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  kVSpace64,
                  kVSpace64,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
