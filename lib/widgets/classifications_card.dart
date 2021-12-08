import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/constant.dart';

class ClassificationsCard extends StatelessWidget {
  final String title;
  final int id;
  final VoidCallback onTap;

  const ClassificationsCard(
      {Key? key, required this.title, required this.onTap, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            onTap: onTap,
            title: Text(title,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            leading: CircleAvatar(
                backgroundColor: kPrimaryColor,
                child: Text(
                  id.toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            trailing: const Icon(Icons.list, color: kPrimaryColor,)));
  }
}
