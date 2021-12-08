import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class Basiliximab extends StatelessWidget {
  const Basiliximab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            title: 'Hypersensitivity',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/basiliximab/hypersensitivity.pdf', section: 'Hypersensitivity',)),
              );
            }),
        DrugsCard(
            title: 'Non cardiogenic pulmonary edema',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const PdfViewer(pdfPass: 'assets/pdfs/transplantation/basiliximab/non_cardiogenic_pulmonary_edema.pdf', section: 'Non cardiogenic pulmonary edema',)),
              );
            }),
      ],
    );
  }
}
