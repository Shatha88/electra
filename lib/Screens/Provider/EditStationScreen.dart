import 'package:electra/Screens/Provider/ProviderStationsScreen.dart';
import 'package:electra/components/Provider/Componints/AddStationComponints/AppBar_AddStation.dart';
import 'package:electra/components/Provider/Componints/AddStationComponints/textCustom.dart';
import 'package:electra/components/Provider/Componints/EditStation/updateBankAccount.dart';
import 'package:electra/components/Provider/Componints/EditStation/updateImage.dart';
import 'package:electra/components/Provider/Componints/ElvatedButtonCustom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';


class EditStation extends StatefulWidget {
  const EditStation({super.key});

  @override
  State<EditStation> createState() => _EditStationState();
}

class _EditStationState extends State<EditStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppBar_AddStation(
                title: "Edit Station",
                icon: Icons.chevron_left,
                page: ProviderStation(),
              ),
              kVSpace24,
              Image(
                height: 200,
                width: 200,
                image: AssetImage("assets/editstation.jpg"),
              ),
              kVSpace32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: textCustom(titel: "Image Staion"),
                      ),
                      kVSpace8,
                      updateImage(),
                      kVSpace8,
                      Row(
                        children: [
                          Text(
                            "image name",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          kHSpace8,
                          Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                            size: 30,
                          ),
                        ],
                      ),
                      kVSpace8,
                      Align(
                          alignment: Alignment.centerLeft,
                          child: textCustom(titel: "Bank Account")),
                      kVSpace8,
                      updateBankAccount(),
                      kVSpace8,
                      Align(
                          alignment: Alignment.centerLeft,
                          child: textCustom(titel: "Location")),
                      kVSpace8,
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "https://www.google.com/maps/search/?api=1&query=76536740282.-9487282",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      kVSpace32,
                      ElvatedButtonCustom(
                        ButtonTitle: "Update",
                        page: ProviderStation(),
                      ),
                    ],
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
