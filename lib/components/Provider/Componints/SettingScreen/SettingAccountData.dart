

import 'package:electra/components/Provider/Componints/text_custom.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

class SettingAccountData extends StatelessWidget {
  const SettingAccountData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: "Name",
                color: Colors.black54,
                fontSize: 20,
              ),
              kVSpace16,
              TextCustom(
                text: "Email",
                color: Colors.black54,
                fontSize: 20,
              ),
              kVSpace16,
              TextCustom(
                text: "Phone",
                color: Colors.black54,
                fontSize: 20,
              ),
              kVSpace16,
              TextCustom(
                text: "Address",
                color: Colors.black54,
                fontSize: 20,
              ),
            ],
          ),
          klHSpace32,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: "KHALID ALI ALSHEHRI",
                color: Colors.black,
                fontSize: 20,
              ),
              kVSpace16,
              TextCustom(
                text: "khalid@gmail.com",
                color: Colors.black,
                fontSize: 20,
              ),
              kVSpace16,
              TextCustom(
                text: "0560286846",
                color: Colors.black,
                fontSize: 20,
              ),
              kVSpace16,
              TextCustom(
                text: "Jeddah",
                color: Colors.black,
                fontSize: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
