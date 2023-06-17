import 'dart:core';

import 'package:electra/Screens/Provider/prov_stations.dart';
import 'package:electra/components/add_station/add_station_appbar.dart';
import 'package:electra/components/button_custom.dart';
import 'package:electra/components/text_custom.dart';
// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/spaces.dart';
// import 'package:final_project/Componints/AddStationComponints/AppBar_AddStation.dart';
// import 'package:final_project/Componints/ElvatedButtonCustom.dart';
// import 'package:final_project/Componints/ManageStation/TextCustom.dart';
// import 'package:final_project/Screens/ProviderStationsPageScreen.dart';
// import 'package:final_project/conistans/colors.dart';
// import 'package:final_project/conistans/spaces.dart';
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
              padding: EdgeInsets.all(8.0),
              child: AddStationAppBar(
                title: "Station Name",
                icon: Icons.chevron_left,
                screen: ProviderStation(),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                    height: 300,
                    width: 300,
                    image: AssetImage("assets/images/station.jpg")),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TextCustom(
                  text: "Create an Order : ",
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
                    const TextCustom(text: "From"),
                    kVSpace8,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: fromDateTime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2028),
                        );
                        if (newDate == null) return;
                        TimeOfDay? newTime;
                        if (context.mounted) {
                          newTime = showTimePicker(
                            context: context,
                            initialTime: TimeOfDay(
                              hour: fromDateTime.hour,
                              minute: fromDateTime.minute,
                            ),
                          ) as TimeOfDay?;
                        } else {
                          newTime = null;
                        }
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add Start Time"),
                          Icon(
                            Icons.arrow_drop_up_outlined,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    kVSpace16,
                    TextCustom(
                      text:
                          "${fromDateTime.day}/${fromDateTime.month}/${fromDateTime.year} - ${fromDateTime.hour}:${fromDateTime.minute}",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                Column(
                  children: [
                    const TextCustom(
                      text: "To",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    kVSpace8,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      onPressed: () async {
                        DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: toDateTime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2028),
                        );
                        if (newDate == null) return;
                        TimeOfDay? newTime;
                        if (context.mounted) {
                          newTime = showTimePicker(
                            context: context,
                            initialTime: TimeOfDay(
                              hour: fromDateTime.hour,
                              minute: fromDateTime.minute,
                            ),
                          ) as TimeOfDay?;
                        } else {
                          newTime = null;
                        }
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextCustom(text: "Add End Time"),
                          Icon(
                            Icons.arrow_drop_up_outlined,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    kVSpace16,
                    TextCustom(
                      text:
                          "${toDateTime.day}/${toDateTime.month}/${toDateTime.year} - ${toDateTime.hour}:${toDateTime.minute}",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
            kVSpace64,
            const ButtonCustom(
              title: "Create",
              screen: ProviderStation(),
              forward: true,
              hight: 20,
              width: 100,
              buttonColor: Colors.teal,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
