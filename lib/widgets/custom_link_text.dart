import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLinkText extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const CustomLinkText({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap ,
        child: Text(
            text,
          style: const TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
