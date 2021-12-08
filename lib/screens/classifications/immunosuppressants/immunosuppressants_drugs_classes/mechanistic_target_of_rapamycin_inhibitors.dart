import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../immunosuppressants_drug_cases.dart';

class MTOR extends StatelessWidget {
   const MTOR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            icon: cardDrugsListIcon,
            title: 'Sirolimus',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Sirolimus',id: 'Sirolimus',)),
              );
            }),
        DrugsCard(title: 'Everolimus', icon: cardDrugsListIcon, onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Everolimus',id: 'Everolimus',)),
          );
        }),
      ],
    );
  }
}
