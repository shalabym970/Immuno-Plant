import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class Cyclosporine extends StatelessWidget {
  const Cyclosporine({Key? key}) : super(key: key);

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
                              'assets/pdfs/transplantation/cyclosporine/drug_interctions.pdf',
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
                              'assets/pdfs/transplantation/cyclosporine/cyclo_level.pdf',
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
                              'assets/pdfs/transplantation/cyclosporine/hypertension.pdf',
                          section: 'Hypertension',
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
                              'assets/pdfs/transplantation/cyclosporine/nephrotoxicity.pdf',
                          section: 'Nephrotoxicity',
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
                              'assets/pdfs/transplantation/cyclosporine/neurotoxicity.pdf',
                          section: 'Neurotoxicity',
                        )),
              );
            }),
        DrugsCard(
            title: 'Migraine induced vomiting',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/cyclosporine/migraine_induced_vomiting.pdf',
                          section: 'Migraine induced vomiting',
                        )),
              );
            }),
        DrugsCard(
            title: 'Hypertrichosis',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/cyclosporine/hypertrichosis.pdf',
                          section: 'Hypertrichosis',
                        )),
              );
            }),
        DrugsCard(
            title: 'Infection',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/cyclosporine/infection.pdf',
                          section: 'Infection',
                        )),
              );
            }),
        DrugsCard(
            title: 'Gingival hyperplasia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/cyclosporine/gingival_hyperplasia.pdf',
                          section: 'Gingival hyperplasia',
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
                              'assets/pdfs/transplantation/cyclosporine/UTI.pdf',
                          section: 'UTI*',
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
                              'assets/pdfs/transplantation/cyclosporine/dyslipidemia_general.pdf',
                          section: 'Dyslipidemia*',
                        )),
              );
            }),
      ],
    );
  }
}