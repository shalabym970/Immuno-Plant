import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String section;
  const CustomAppBar({Key? key, required this.section}) : super(key: key);


  @override
  Size get preferredSize => const Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return  Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: kPrimaryColor,
          ),
           const Center(
            child: Text(
              appName,
              style: TextStyle(
                color: kBackgroundColor,
                fontSize: 28,
              ),
            ),
          ),
           Positioned.fill(
              child: Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0,left: 10, right: 10,top: 10),
                    child: Text(
                      section,
                      style: const TextStyle(
                        color: kBackgroundColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: kBackgroundColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),

        ],
      );
  }
}
