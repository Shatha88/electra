// import 'package:final_project/extantions/push_andpop.dart';
import 'package:electra/components/text_custom.dart';
// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/spaces.dart';
import 'package:electra/services/extention/navigator/navigator_ext.dart';
import 'package:flutter/material.dart';

// import '../../Screens/HomeScreen.dart';
// import '../../conistans/colors.dart';
// import '../../conistans/spaces.dart';

class AddStationAppBar extends StatelessWidget {
  const AddStationAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.screen,
  });
  final String title;
  final IconData icon;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              context.pop(view: screen);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: 30,
                color: Colors.teal,
              ),
            ),
          ),
          TextCustom(
            text: title,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          klHSpace32,
        ],
      ),
    );
  }
}
