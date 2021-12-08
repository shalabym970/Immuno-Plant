import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class DrugsCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData  icon;

  const DrugsCard(
      {Key? key, required this.title, required this.onTap, required this.icon,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            onTap: onTap,
            title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
            trailing:  Icon(icon , color: kPrimaryColor)));
  }
}
