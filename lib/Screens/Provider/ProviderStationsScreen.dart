import 'package:electra/Screens/Provider/AddStationScreen.dart';
import 'package:electra/components/Provider/Componints/ProviderStation/ProviderStationView.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:electra/services/extention/navigator/navigator_ext.dart';
import 'package:flutter/material.dart';

class ProviderStation extends StatefulWidget {
  const ProviderStation({super.key});

  @override
  State<ProviderStation> createState() => _ProviderStationState();
}

class _ProviderStationState extends State<ProviderStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColor,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Provider Name",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              kVSpace16,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Station",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        context.push(view: AddStation());
                      },
                      icon: Icon(
                        Icons.add,
                        size: 40,
                        color: kcolorsgerrn,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              kVSpace16,
              ListView(
                shrinkWrap: true,
                children: [
                  Center(
                    child: ProviderStationView(),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
