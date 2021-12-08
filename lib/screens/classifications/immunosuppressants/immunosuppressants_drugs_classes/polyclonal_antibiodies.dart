import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../immunosuppressants_drug_cases.dart';

class PolyclonalAntibiodies extends StatelessWidget {
   const PolyclonalAntibiodies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            icon: cardDrugsListIcon,
            title: 'Antilymphocyte polyclonal antibody(ATG)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Antilymphocyte polyclonal antibody(ATG)',id: 'Antilymphocyte_polyclonal_antibody(ATG)',)),
              );
            }),
      ],
    );
  }
}
