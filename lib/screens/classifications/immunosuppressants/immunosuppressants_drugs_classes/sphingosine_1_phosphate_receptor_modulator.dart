import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';
import '../immunosuppressants_drug_cases.dart';

class SphingosinePhosphateReceptorModulator extends StatelessWidget {
   SphingosinePhosphateReceptorModulator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            icon: cardDrugsListIcon,
            title: 'Fingolimod',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Fingolimod',id: 'Fingolimod',)),
              );
            }),
      ],
    );
  }
}
