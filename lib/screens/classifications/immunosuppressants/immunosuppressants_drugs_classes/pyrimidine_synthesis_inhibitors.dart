import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../immunosuppressants_drug_cases.dart';

class PyrimidineSynthesisInhibitors extends StatelessWidget {
   const PyrimidineSynthesisInhibitors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            icon: cardDrugsListIcon,
            title: 'Leflunomide',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Leflunomide',id: 'Leflunomide',)),
              );
            }),
      ],
    );
  }
}
