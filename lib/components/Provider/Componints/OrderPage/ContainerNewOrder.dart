
import 'package:electra/components/Provider/Componints/OrderPage/AccseprOrReject.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

class ContainerNewOrder extends StatelessWidget {
  const ContainerNewOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: kcolorsgerrn,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New order from username",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Status :  waiting",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kcolorsgrey,
                    ),
                  ),
                ),
              ],
            ),
            kVSpace8,
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "description",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "time : from 1 to 3",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                klHSpace32,
                Row(
                  children: [
                    AccseprOrReject(
                      titel: "Accept",
                      color: Color.fromARGB(255, 3, 238, 14),
                    ),
                    kHSpace8,
                    AccseprOrReject(
                      titel: "Reject",
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
