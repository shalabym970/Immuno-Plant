import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/screens/classifications/immunosuppressants/immunosuppressants_drug_cases.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';
import '../../../../constant.dart';

class CalcineurinInhibitors extends StatelessWidget {
 const CalcineurinInhibitors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            title: 'Cyclosporine',
            icon: cardDrugsListIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Cyclosporine',id: 'Cyclosporine',)),
              );
            }),
        DrugsCard(
            title: 'Tacrolimus',
            icon: cardDrugsListIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  ImmunosuppressantsDrugCases(section: 'Tacrolimus',id: 'Tacrolimus',)),
              );
            }),
      ],
    );
  }
}
