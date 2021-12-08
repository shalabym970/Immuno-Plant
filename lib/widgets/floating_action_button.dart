import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/screens/home_page.dart';

import '../constant.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>  HomePage(
              pageState: 1,
            ),
          ),
              (route) => false,
        );
      },
      child: const Icon(Icons.home_filled, color: kBackgroundColor,),
      backgroundColor: kPrimaryColor,
    );
  }
}
