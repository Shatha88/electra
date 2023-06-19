import 'package:electra/components/Provider/Componints/text_custom.dart';
import 'package:electra/components/rating.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class StationDetailPage extends StatefulWidget {
  const StationDetailPage({super.key});

  @override
  State<StationDetailPage> createState() => _StationDetailPageState();
}

class _StationDetailPageState extends State<StationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: kcolorsgrey,
          body: SafeArea(
              child: ListView(children: [
            Stack(children: [
              Container(
                child: Image.network(
                  'https://media.istockphoto.com/id/1251125012/photo/close-up-of-a-charging-electric-car.jpg?s=612x612&w=0&k=20&c=FYXsskzOZlSuPneNAIghjRbDKpH00946l2jlNo4anSk=',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                // padding: EdgeInsets.only(top: 100),
                child: Column(children: [
                  const SizedBox(
                    height: 195,
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: kcolorsgrey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                ]),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const TextCustom(
                  text: 'Electric Vehicle Charging Station',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                const TextCustom(
                  text: '\$ ',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kcolorsgerrn,
                ),
                //discription label
                const TextCustom(
                  text: 'Discription:',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),

                //discription text
                const TextCustom(
                  text: '',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                const TextCustom(
                  text: 'Ratings:',
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                ratings,
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonBGColor),
                    onPressed: () {},
                    child: const TextCustom(
                      text: 'Add To Favorite',
                      color: Colors.white,
                    ),
                  ),
                  kHSpace16,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonBGColor),
                      onPressed: () {
                        setState(() {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 250,
                                child: Column(children: [
                                  const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextCustom(
                                            text: 'Choose Time:',
                                            color: Colors.black),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonBGColor),
                                            onPressed: () {},
                                            child: const TextCustom(
                                                text: '06:00 am - 10:00 pm',
                                                color: Colors.white)),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonBGColor),
                                            onPressed: () {},
                                            child: const TextCustom(
                                                text: '10:00 pm - 02:00 pm',
                                                color: Colors.white)),
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonBGColor),
                                            onPressed: () {},
                                            child: const TextCustom(
                                                text: '06:00 pm - 10:00 pm',
                                                color: Colors.white)),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: buttonBGColor),
                                            onPressed: () {},
                                            child: const TextCustom(
                                                text: '10:00 pm - 02:00 am',
                                                color: Colors.white)),
                                      ]),
                                ]),
                              );
                            },
                          );
                        });
                      },
                      child: const TextCustom(
                          text: 'Booking', color: Colors.white)),
                ])
              ]),
            ),
          ]))),
    );
  }
}
