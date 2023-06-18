import 'dart:core';


import 'package:electra/Screens/Provider/ProviderStationsScreen.dart';
import 'package:electra/components/Provider/Componints/AddStationComponints/AppBar_AddStation.dart';
import 'package:electra/components/Provider/Componints/ElvatedButtonCustom.dart';
import 'package:electra/components/Provider/Componints/ManageStation/TextCustom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

class ManageStation extends StatefulWidget {
  const ManageStation({super.key});

  @override
  State<ManageStation> createState() => _ManageStationState();
}

class _ManageStationState extends State<ManageStation> {
  DateTime fromDateTime = DateTime(2023, 20, 25, 12, 30);
  DateTime toDateTime = DateTime(2023, 20, 25, 12, 30);
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
                    height: 300,
                    width: 300,
                    image: AssetImage("assets/station.jpg")),
              ),
            ),
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kcolorsgerrn,
                      ),
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: fromDateTime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2028),
                        );
                        if (newDate == null) return;
                        TimeOfDay? newTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(
                            hour: fromDateTime.hour,
                            minute: fromDateTime.minute,
                          ),
                        );
                        if (newTime == null) return;

                        final fromNewDateTime = DateTime(
                          newDate.year,
                          newDate.month,
                          newDate.day,
                          newTime.hour,
                          newTime.minute,
                        );
                        setState(() {
                          fromDateTime = fromNewDateTime;
                        });
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
                    kVSpace16,
                    TextCustum(
                      titel:
                          "${fromDateTime.day}/${fromDateTime.month}/${fromDateTime.year} - ${fromDateTime.hour}:${fromDateTime.minute}",
                    )
                  ],
                ),
                Column(
                  children: [
                    const TextCustum(titel: "To"),
                    kVSpace8,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kcolorsgerrn,
                      ),
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: toDateTime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2028),
                        );
                        if (newDate == null) return;
                        TimeOfDay? newTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(
                            hour: toDateTime.hour,
                            minute: toDateTime.minute,
                          ),
                        );
                        if (newTime == null) return;

                        final toNewDateTime = DateTime(
                          newDate.year,
                          newDate.month,
                          newDate.day,
                          newTime.hour,
                          newTime.minute,
                        );
                        setState(() {
                          toDateTime = toNewDateTime;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add End Time"),
                          Icon(
                            Icons.arrow_drop_up_outlined,
                            color: kcolorsgrey,
                          ),
                        ],
                      ),
                    ),
                    kVSpace16,
                    TextCustum(
                      titel:
                          "${toDateTime.day}/${toDateTime.month}/${toDateTime.year} - ${toDateTime.hour}:${toDateTime.minute}",
                    ),
                  ],
                ),
              ],
            ),
            kVSpace64,
            ElvatedButtonCustom(ButtonTitle: "Create", page: ProviderStation()),
          ],
        ),
      ),
    );
  }
}
