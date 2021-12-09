import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/classifications_card.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';

class Transplantation extends StatefulWidget {
  final String section;

  const Transplantation({Key? key, required this.section}) : super(key: key);

  @override
  _TransplantationState createState() => _TransplantationState();
}

class _TransplantationState extends State<Transplantation> {
  int id = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(section: widget.section),
      floatingActionButton: const CustomFloatingActionButton(),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ClassificationsCard(
            id: 1,
            title: 'Cyclosporine',
            onTap: () {
              setState(() {
                id = 1;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Cyclosporine',
                        )),
              );
            },
          ),

          ClassificationsCard(
            id: 2,
            title: 'Tacrolimus',
            onTap: () {
              setState(() {
                id = 2;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Tacrolimus',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 3,
            title: 'Prednisone',
            onTap: () {
              setState(() {
                id = 3;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Prednisone',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 4,
            title: 'Mycophenolate mofetil (MMF)',
            onTap: () {
              setState(() {
                id = 4;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Mycophenolate mofetil (MMF)',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 5,
            title: 'Sirolimus',
            onTap: () {
              setState(() {
                id = 5;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Sirolimus',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 6,
            title: 'ATG antihymoglobin',
            onTap: () {
              setState(() {
                id = 6;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'ATG antihymoglobin',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 7,
            title: 'Basiliximab',
            onTap: () {
              setState(() {
                id = 7;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Basiliximab',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 8,
            title: 'Mabthera',
            onTap: () {
              setState(() {
                id = 8;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Mabthera',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 9,
            title: 'Everolimus',
            onTap: () {
              setState(() {
                id = 9;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TransplantationDrugs(
                          id: id,
                          section: 'Everolimus',
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
