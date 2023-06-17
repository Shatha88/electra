import 'package:electra/Screens/Provider/screens.dart';
import 'package:electra/components/add_station/add_station_container.dart';
import 'package:flutter/material.dart';

import 'package:electra/Screens/Provider/request_status.dart';
import 'package:electra/components/add_station/add_station_appbar.dart';
import 'package:electra/components/text_custom.dart';
// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/spaces.dart';
import 'package:electra/services/extention/navigator/navigator_ext.dart';

// import 'package:final_project/Componints/AddStationComponints/addStationContaner.dart';
// import 'package:final_project/Screens/HomeScreen.dart';
// import 'package:final_project/Screens/RequestStatus.dart';
// import 'package:final_project/conistans/colors.dart';
// import 'package:final_project/conistans/spaces.dart';
// import 'package:final_project/extantions/push_andpop.dart';
// import '../Componints/AddStationComponints/AppBar_AddStation.dart';

class AddStation extends StatelessWidget {
  const AddStation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const AddStationAppBar(
                title: "Add Station",
                icon: Icons.close,
                screen: Screens(),
              ),
              kVSpace64,
              const AddStationContainer(),
              kVSpace64,
              Container(
                height: 44,
                width: 163,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    context.push(view: const RequestStatus());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: const TextCustom(
                    text: "Add Station",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
