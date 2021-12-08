import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class Tacrolimus extends StatelessWidget {
  const Tacrolimus({Key? key}) : super(key: key);

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
                      'assets/pdfs/transplantation/tacrolimus/drug_interactions.pdf',
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
                      'assets/pdfs/transplantation/tacrolimus/level.pdff',
                      section: 'Level',
                    )),
              );
            }),
        DrugsCard(
            title: 'Cardiovascular',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/cardiovascular.pdf',
                      section: 'Cardiovascular',
                    )),
              );
            }),
        DrugsCard(
            title: 'Neurotoxicity',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/neurotoxicity.pdf',
                      section: 'Neurotoxicity',
                    )),
              );
            }),
        DrugsCard(
            title: 'Metabolic (PTDM)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/Metabolic_ptdm.pdf',
                      section: 'Metabolic (PTDM)',
                    )),
              );
            }),
        DrugsCard(
            title: 'Infection (BK virus)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/Infection_bk_virus.pdf',
                      section: 'Infection (BK virus)',
                    )),
              );
            }),
        DrugsCard(
            title: 'Alopecia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/alopecia.pdf',
                      section: 'Alopecia',
                    )),
              );
            }),
        DrugsCard(
            title: 'Ophthalmic',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/ophthalmic.pdf',
                      section: 'Ophthalmic',
                    )),
              );
            }),
        DrugsCard(
            title: 'Nephrotoxicity',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/nephrotoxicity.pdf',
                      section: 'Nephrotoxicity',
                    )),
              );
            }),
        DrugsCard(
            title: 'UTI*',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/UTI.pdf',
                      section: 'UTI*',
                    )),
              );
            }),
        DrugsCard(
            title: 'Kaposi sarcoma',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/tacrolimus/kaposi_sarcoma.pdf',
                      section: 'Kaposi sarcoma',
                    )),
              );
            }),
      ],
    );
  }
}
