import 'package:electra/Screens/Provider/manage_station.dart';
import 'package:electra/components/text_custom.dart';
// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

import 'package:electra/Screens/Provider/add_station.dart';
import 'package:electra/services/extention/navigator/navigator_ext.dart';
// import 'package:final_project/Componints/AddStationComponints/textCustom.dart';
// import 'package:final_project/Screens/AddStation.dart';
// import 'package:final_project/Screens/ManageStationScreen.dart';
// import 'package:final_project/conistans/colors.dart';
// import 'package:final_project/conistans/spaces.dart';
// import 'package:final_project/extantions/push_andpop.dart';

class ProviderStation extends StatefulWidget {
  const ProviderStation({super.key});

  @override
  State<ProviderStation> createState() => _ProviderStationState();
}

class _ProviderStationState extends State<ProviderStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Icon(Icons.add),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              const TextCustom(
                text: "Provider Name",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              kVSpace16,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextCustom(
                        text: "Your Station",
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      IconButton(
                        onPressed: () {
                          context.push(view: const AddStation());
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.teal,
                        ),
                      ),
                    ]),
              ),
              const Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              kVSpace16,
              ListView(shrinkWrap: true, children: [
                Center(
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    CircleAvatar(
                                      radius: 30,
                                    ),
                                    kHSpace8,
                                    TextCustom(
                                      text: "UserName",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ]),
                                  Column(children: [
                                    TextCustom(
                                      text: "Station name",
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    TextCustom(
                                      text: "location description",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ])
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: const Icon(
                                        Icons.edit,
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ),
                                  const Row(children: [
                                    TextCustom(
                                      text: "Charge power :",
                                      fontSize: 12,
                                    ),
                                    Icon(
                                      Icons.electric_bolt_rounded,
                                      color: Colors.amber,
                                    ),
                                  ]),
                                  InkWell(
                                    onTap: () {
                                      context.push(view: const ManageStation());
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Center(
                                        child: TextCustom(
                                          text: "View",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ]),
                    ),
                  ),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
