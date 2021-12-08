import 'package:flutter/cupertino.dart';

import '../constant.dart';

class OutlineBtn extends StatefulWidget {
  final String btnText;

  const OutlineBtn({required this.btnText});

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor, width: 2),
          borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
