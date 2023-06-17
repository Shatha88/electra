import 'package:electra/Screens/Provider/prov_stations.dart';
import 'package:electra/components/text_custom.dart';
// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/spaces.dart';
import 'package:electra/services/extention/navigator/navigator_ext.dart';
import 'package:flutter/material.dart';

// import 'package:final_project/Screens/HomeScreen.dart';
// import 'package:final_project/Screens/ProviderStationsPageScreen.dart';
// import 'package:final_project/conistans/colors.dart';
// import 'package:final_project/conistans/spaces.dart';
// import 'package:final_project/extantions/push_andpop.dart';

class RequestStatus extends StatelessWidget {
  const RequestStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        context.push(view: const ProviderStation());
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    const TextCustom(
                      text: "Your Request",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    klHSpace32,
                  ]),
            ),
            kVSpace64,
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.done,
                          size: 100,
                          color: Colors.amber,
                        ),
                      ),
                      const TextCustom(
                        text: "Successfully",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: TextCustom(
                          text: "The request will be\n  answered soon....",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
