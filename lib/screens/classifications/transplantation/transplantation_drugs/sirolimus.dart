import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class Sirolimus extends StatelessWidget {
  const Sirolimus({Key? key}) : super(key: key);

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
                              'assets/pdfs/transplantation/sirolimus/drug_interactions.pdf',
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
                              'assets/pdfs/transplantation/sirolimus/level.pdf',
                          section: 'Level',
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
                              'assets/pdfs/transplantation/sirolimus/anemia.pdf',
                          section: 'Anemia',
                        )),
              );
            }),
        DrugsCard(
            title: 'Thrombocytopenia and leukopenia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/thrombocytopenia_and_leukopenia.pdf',
                          section: 'Thrombocytopenia and leukopenia',
                        )),
              );
            }),
        DrugsCard(
            title: 'Edema',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/edema.pdf',
                          section: 'Edema',
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
                              'assets/pdfs/transplantation/sirolimus/proteinuria.pdf',
                          section: 'Proteinuria',
                        )),
              );
            }),
        DrugsCard(
            title: 'Interstitial pneumonitis ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/interstitial_pneumonitis.pdf',
                          section: 'Interstitial pneumonitis ',
                        )),
              );
            }),
        DrugsCard(
            title: 'Mouth ulcers / stomatitis',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/mouth_ulcers_stomatitis.pdf',
                          section: 'Mouth ulcers / stomatitis',
                        )),
              );
            }),
        DrugsCard(
            title: 'Infections',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/infections.pdf',
                          section: 'Infections',
                        )),
              );
            }),
        DrugsCard(
            title: 'Thromboembolism',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/thromboembolism.pdf',
                          section: 'Thromboembolism',
                        )),
              );
            }),
        DrugsCard(
            title: 'Lymphoceles',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/lymphoceles.pdf',
                          section: 'Lymphoceles',
                        )),
              );
            }),
        DrugsCard(
            title: 'Arthralgia osteopenia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/arthralgia_osteopenia.pdf',
                          section: 'Arthralgia osteopenia',
                        )),
              );
            }),
        DrugsCard(
            title: 'Impaired would healing ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/impaired_would_healing.pdf',
                          section: 'Impaired would healing ',
                        )),
              );
            }),
        DrugsCard(
            title: 'Acne *',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/acne.pdf',
                          section: 'Acne *',
                        )),
              );
            }),
        DrugsCard(
            title: 'Hypertension *',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/hypertension.pdf',
                          section: 'Hypertension *',
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
                              'assets/pdfs/transplantation/sirolimus/UTI.pdf',
                          section: 'UTI *',
                        )),
              );
            }),
        DrugsCard(
            title: 'Hyperglycemia *',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/hyperglycemia.pdf',
                          section: 'Hyperglycemia *',
                        )),
              );
            }),
        DrugsCard(
            title: 'Hyperlipidemia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                          pdfPass:
                              'assets/pdfs/transplantation/sirolimus/hyperlipidemia.pdf',
                          section: 'Hyperlipidemia',
                        )),
              );
            }),
      ],
    );
  }
}