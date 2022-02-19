import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class Everolimus extends StatelessWidget {
  const Everolimus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            title: 'Drug interactions',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/drug_interactions.pdf',
                          section: 'Drug interactions',
                        )),
              );
            }),
        DrugsCard(
            title: 'Level',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/level.pdf',
                          section: 'Level',
                        )),
              );
            }),
        DrugsCard(
            title: 'Hypertension',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/hypertension.pdf',
                          section: 'Hypertension',
                        )),
              );
            }),
        DrugsCard(
            title: 'Edema(peripheral/Lymphedema)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/edema.pdf',
                          section: 'Edema(peripheral/Lymphedema)',
                        )),
              );
            }),
        DrugsCard(
            title: 'Proteinuria',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/proteinuria.pdf',
                          section: 'Proteinuria',
                        )),
              );
            }),
        DrugsCard(
            title: 'Dyslipidemia*',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/dyslipidemia_general.pdf',
                          section: 'Dyslipidemia*',
                        )),
              );
            }),
        DrugsCard(
            title: 'Anemia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/anemia.pdf',
                          section: 'Anemia',
                        )),
              );
            }),
        DrugsCard(
            title: 'Backpain',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/backpain.pdf',
                          section: 'Backpain',
                        )),
              );
            }),
        DrugsCard(
            title: 'UTI *',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/everolimus/UTI.pdf',
                          section: 'UTI *',
                        )),
              );
            }),
      ],
    );
  }
}