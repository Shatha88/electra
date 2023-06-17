import 'dart:developer';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:electra/components/add_station/text_field_custom.dart';
import 'package:electra/components/text_custom.dart';
// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/spaces.dart';
// import 'package:final_project/Componints/AddStationComponints/textCustom.dart';
// import 'package:final_project/Componints/AddStationComponints/textFeldCustom.dart';
// import 'package:final_project/conistans/colors.dart';
// import 'package:final_project/conistans/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AddStationContainer extends StatefulWidget {
  const AddStationContainer({
    super.key,
  });

  @override
  State<AddStationContainer> createState() => _AddStationContainerState();
}

class _AddStationContainerState extends State<AddStationContainer> {
  File? image;
  Future pickImage() async {
    try {
      final img = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (img == null) return;
      final imageTemporary = File(img.path);
      setState(() => image = imageTemporary);
    } on PlatformException catch (error) {
      log("Failed to pick image $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const Text(
            "Add new station",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          kVSpace24,
          const Align(
            alignment: Alignment.bottomLeft,
            child: TextCustom(
              text: "Upload images of station : ",
              fontWeight: FontWeight.bold,
            ),
          ),
          kVSpace16,
          InkWell(
            onTap: () => pickImage(),
            child: DottedBorder(
              color: Colors.grey, //color of dotted/dash line
              strokeWidth: 3, //thickness of dash/dots
              dashPattern: const [10, 6],
              radius: const Radius.circular(12),

              child: Container(
                height: 100,
                width: 250,
                padding: const EdgeInsets.all(10.0),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.cloud_upload_rounded,
                        color: Colors.grey,
                        size: 50,
                      ),
                      TextCustom(
                        text: "Add Image",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ]),
              ),
            ),
          ),
          kVSpace16,
          const Align(
            alignment: Alignment.bottomLeft,
            child: TextCustom(
              text: "Bank Account : ",
              fontWeight: FontWeight.bold,
            ),
          ),
          kVSpace16,
          const TextFieldCustom(
            titel: "Bank Account",
            iconData: Icons.attach_money_rounded,
          ),
          kVSpace16,
          SizedBox(
            height: 50,
            width: 180,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: () {},
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 25,
                      color: Colors.white,
                    ),
                    TextCustom(
                      text: "detect location",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
