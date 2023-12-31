import 'package:electra/components/Provider/Componints/SettingScreen/SettingAccountData.dart';
import 'package:electra/components/Provider/Componints/SettingScreen/SettingTitle.dart';
import 'package:electra/components/Provider/Componints/text_custom.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 247, 235),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: TextCustom(
                  text: "Setting",
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kVSpace64,
              ListView(
                shrinkWrap: true,
                children: [
                  SettingsTitle(
                    title: "Account",
                    icon: Icons.person_outline,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  kVSpace8,
                  SettingAccountData(),
                  kVSpace32,
                  SettingsTitle(
                    title: "Bank Account",
                    icon: Icons.credit_card,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  kVSpace8,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              text: "Bank Account",
                              color: Colors.black54,
                              fontSize: 20,
                            ),
                          ],
                        ),
                        klHSpace32,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              text: "SA08 0987 4567 2345 8790",
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  kVSpace64,
                  kVSpace64,
                  kVSpace64,
                  kVSpace8,
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 180,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // Background color
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.logout,
                              size: 30,
                            ),
                            TextCustom(
                              text: "Logout",
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: TextCustom(
//                   text: "Setting",
//                   color: Colors.black,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               kVSpace64,
//               ListView(
//                 shrinkWrap: true,
//                 children: [
//                   SettingsTitle(
//                     title: "Account",
//                     icon: Icons.person_outline,
//                   ),
//                   Divider(
//                     thickness: 2,
//                   ),
//                   kVSpace8,
//                   SettingAccountData(),
//                   kVSpace24,
//                   SettingsTitle(
//                     title: "Bank Account",
//                     icon: Icons.credit_card,
//                   ),
//                   Divider(
//                     thickness: 2,
//                   ),
//                   kVSpace8,
//                   Center(
//                     child: Container(
//                         height: 275,
//                         width: MediaQuery.of(context).size.width * 0.9,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           color: Colors.grey.shade200,
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: TextCustom(text: "Full Name")),
//                               kVSpace4,
//                               TextFormCoustom(
//                                 hint: "KHALID ALI ALSHEHRI",
//                                 label: "Full Name",
//                               ),
//                               kVSpace8,
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: TextCustom(text: "Card Number"),
//                               ),
//                               kVSpace4,
//                               TextFormCoustom(
//                                 hint: "4738 3847 8754 8274",
//                                 label: "Card Number",
//                               ),
//                               kVSpace8,
//                             ],
//                           ),
//                         )),
//                   ),
//                   kVSpace16,
//                   Center(
//                     child: SizedBox(
//                       height: 40,
//                       width: 180,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.red, // Background color
//                         ),
//                         onPressed: () {},
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Icon(
//                               Icons.logout,
//                               size: 30,
//                             ),
//                             TextCustom(
//                               text: "Logout",
//                               fontSize: 18,
//                               color: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),