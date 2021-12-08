import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../immunosuppressants_drug_cases.dart';

class IMDH extends StatelessWidget {
   const IMDH ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            icon: cardDrugsListIcon,
            title: 'Mycophenolate mofetil',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Mycophenolate mofetil',id: 'Mycophenolate_mofetil',)),
              );
            }),
        DrugsCard(
            title: 'Azathioprine', icon: cardDrugsListIcon, onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Azathioprine',id: 'Azathioprine',)),
          );
        }),
      ],
    );
  }
}
