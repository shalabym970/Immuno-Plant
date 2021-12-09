import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/classifications_card.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';

import 'immunosuppressants_drugs_classes.dart';

class Immunosuppressants extends StatefulWidget {
  final String section;
  const Immunosuppressants({Key? key, required this.section}) : super(key: key);

  @override
  _ImmunosuppressantsState createState() => _ImmunosuppressantsState();
}

class _ImmunosuppressantsState extends State<Immunosuppressants> {
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
            title: 'Calcineurin inhibitors',
            onTap: () {
              setState(() {
                id = 1;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Calcineurin inhibitors',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 2,
            title: 'Corticosteroids',
            onTap: () {
              setState(() {
                id = 2;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Corticosteroids',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 3,
            title: 'Inosine monophosphate dehydrogenase (IMDH) inhibitors',
            onTap: () {
              setState(() {
                id = 3;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Inosine monophosphate dehydrogenase (IMDH) inhibitors',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 4,
            title: 'Interleukin-1 inhibitor',
            onTap: () {
              setState(() {
                id = 4;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Interleukin-1 inhibitor',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 5,
            title: 'Janus kinase inhibitors',
            onTap: () {
              setState(() {
                id = 5;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(id: id, section: 'Janus kinase inhibitors',)),
              );
            },
          ),
          ClassificationsCard(
            id: 6,
            title: 'Mechanistic target of rapamycin (MTOR) inhibitors',
            onTap: () {
              setState(() {
                id = 6;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Mechanistic target of rapamycin (MTOR) inhibitors',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 7,
            title: 'Monoclonal antibiodies',
            onTap: () {
              setState(() {
                id = 7;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Monoclonal antibiodies',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 8,
            title: 'Polyclonal antibiodies',
            onTap: () {
              setState(() {
                id = 8;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(id: id, section: 'Polyclonal antibiodies',)),
              );
            },
          ),
          ClassificationsCard(
            id: 9,
            title: 'Pyrimidine synthesis inhibitors',
            onTap: () {
              setState(() {
                id = 9;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'Pyrimidine synthesis inhibitors',
                        )),
              );
            },
          ),
          ClassificationsCard(
            id: 10,
            title: 'Sphingosine 1-phosphate receptor modulator',
            onTap: () {
              setState(() {
                id = 10;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(id: id, section: 'Sphingosine 1-phosphate receptor modulator',)),
              );
            },
          ),
          ClassificationsCard(
            id: 11,
            title: 'TNF-alpha inhibitor',
            onTap: () {
              setState(() {
                id = 11;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImmunosuppressantsDrugsClasses(
                          id: id, section: 'TNF-alpha inhibitor',
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
