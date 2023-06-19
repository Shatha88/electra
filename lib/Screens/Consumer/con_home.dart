import 'dart:convert';

import 'package:electra/components/Provider/Componints/text_custom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/services/api/consumer_api.dart';
import 'package:flutter/material.dart';

import '../../constents/spaces.dart';
import '../../models/station_model.dart';

class ConHome extends StatefulWidget {
  const ConHome({super.key});

  @override
  State<ConHome> createState() => _ConHomeState();
}

class _ConHomeState extends State<ConHome> {
  bool isLoading = true;
  List<Station> stations = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getStations();
  }

  void _getStations() async {
    try {
      setState(() {
        isLoading = true;
      });
      var response = await getStations();
      var result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        for (var element in result) {
          stations.add(element);
        }
      } else {}
      setState(() {
        isLoading = false;
      });
    } catch (e) {}
  }

  Widget _buildStationCard(Station station) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.all(8.0),
        elevation: 5,
        color: iconsColor,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: iconsColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          height: 150,
          child: Row(children: [
            Expanded(
                child: Column(
              children: [
                Image(
                  height: 150,
                  image: NetworkImage(station.imageUrl!),
                  fit: BoxFit.fill,
                ),
              ],
            )),
            kHSpace8,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
                TextCustom(text: 'stationName'),
                kVSpace64,
                Column(children: [
                  TextCustom(text: 'distance'),
                  TextCustom(text: 'address'),
                ]),
              ]),
            ),
            kHSpace16,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Icons.battery_charging_full_outlined,
                          color: iconsColor,
                        )
                      ]),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/station_detail');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kcolorsgrey,
        body: SafeArea(
          child: Container(
            child: isLoading == true
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    itemCount: stations.length,
                    itemBuilder: (_, index) {
                      var item = stations[index];
                      return _buildStationCard(item);
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
