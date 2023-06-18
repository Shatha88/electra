import 'package:electra/Screens/Provider/ProviderStationsScreen.dart';
import 'package:electra/Screens/Provider/RequestStatusScreen.dart';
import 'package:electra/components/Provider/Componints/AddStationComponints/AppBar_AddStation.dart';
import 'package:electra/components/Provider/Componints/AddStationComponints/addStationContaner.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:electra/services/extention/navigator/navigator_ext.dart';
import 'package:flutter/material.dart';

class AddStation extends StatelessWidget {
  const AddStation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const AppBar_AddStation(
                title: "Add Station",
                icon: Icons.close,
                page: ProviderStation(),
              ),
              kVSpace64,
              addStationContainer(),
              kVSpace64,
              Center(
                child: Container(
                  height: 44,
                  width: 163,
                  decoration: BoxDecoration(
                    color: kcolorsgerrn,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(view: RequestStatus());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kcolorsgerrn,
                    ),
                    child: Text(
                      "Add Station",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
