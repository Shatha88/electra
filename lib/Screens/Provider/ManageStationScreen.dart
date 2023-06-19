import 'dart:core';

import 'package:electra/Screens/Provider/ProviderStationsScreen.dart';
import 'package:electra/components/Provider/Componints/AddStationComponints/AppBar_AddStation.dart';
import 'package:electra/components/Provider/Componints/ElvatedButtonCustom.dart';
import 'package:electra/components/Provider/Componints/ManageStation/TextCustom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageStation extends StatefulWidget {
  const ManageStation({super.key});

  @override
  State<ManageStation> createState() => _ManageStationState();
}

class _ManageStationState extends State<ManageStation> {
  late DateTime fromDateTime;
  late DateTime toDateTime;
  late String formateFromDateTime;
  late String formateToDateTime;

  @override
  void initState() {
    // TODO: implement initState
    fromDateTime = DateTime(2023, 20, 25, 12);
    toDateTime = DateTime(2023, 20, 25, 12);
    // formateFromDateTime =
    //     "${fromDateTime.day}-${fromDateTime.month}-${fromDateTime.hour}:${fromDateTime.minute}";
    // formateToDateTime =
    //     "${toDateTime.day}-${toDateTime.month}-${toDateTime.hour}:${toDateTime.minute}";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBar_AddStation(
                title: "Station Name",
                icon: Icons.chevron_left,
                page: ProviderStation(),
              ),
            ),
            const Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                    height: 190,
                    width: 300,
                    image: AssetImage("assets/images/charging-station.png")),
              ),
            ),
            kVSpace64,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextCustum(
                  titel: "Create an Order : ",
                ),
              ),
            ),
            kVSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextCustum(titel: "From"),
                    kVSpace8,
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kcolorsgerrn,
                        ),
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Donr"),
                                    ),
                                    Expanded(
                                      child: CupertinoDatePicker(
                                        initialDateTime: fromDateTime,
                                        mode:
                                            CupertinoDatePickerMode.dateAndTime,
                                        onDateTimeChanged: (date) {
                                          setState(() {
                                            fromDateTime = date;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Add Start Time"),
                            Icon(
                              Icons.arrow_drop_up_outlined,
                              color: kcolorsgrey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    kVSpace16,
                    TextCustum(
                      titel:
                          "${fromDateTime.day}-${fromDateTime.month}  ${fromDateTime.hour}:${fromDateTime.minute}",
                    )
                  ],
                ),
                Column(
                  children: [
                    const TextCustum(titel: "To"),
                    kVSpace8,
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kcolorsgerrn,
                        ),
                        onPressed: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Donr"),
                                    ),
                                    Expanded(
                                      child: CupertinoDatePicker(
                                        initialDateTime: toDateTime,
                                        mode:
                                            CupertinoDatePickerMode.dateAndTime,
                                        onDateTimeChanged: (date) {
                                          setState(() {
                                            toDateTime = date;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Add Start Time"),
                            Icon(
                              Icons.arrow_drop_up_outlined,
                              color: kcolorsgrey,
                            ),
                          ],
                        ),
                      ),
                    ),
                    kVSpace16,
                    TextCustum(
                      titel:
                          "${toDateTime.day}-${toDateTime.month}  ${toDateTime.hour}:${toDateTime.minute}",
                    )
                  ],
                ),
              ],
            ),
            kVSpace64,
            ElvatedButtonCustom(ButtonTitle: "Add", page: ProviderStation()),
            kVSpace64,
          ],
        ),
      ),
    );
  }
}
