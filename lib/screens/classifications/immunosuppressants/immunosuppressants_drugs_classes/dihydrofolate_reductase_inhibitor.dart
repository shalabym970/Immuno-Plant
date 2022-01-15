import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../immunosuppressants_drug_cases.dart';

class DihydrofolateReductaseInhibitor extends StatelessWidget {
  const DihydrofolateReductaseInhibitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            icon: cardDrugsListIcon,
            title: 'Methotrexate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Methotrexate',id: 'Methotrexate',)),
              );
            }),
      ],
    );
  }
}
