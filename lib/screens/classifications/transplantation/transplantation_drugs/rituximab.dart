import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/screens/pdf_splash_screen.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';

class Rituximab extends StatelessWidget {
  const Rituximab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            title: 'Infusion reactions',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/infusion_reactions.pdf',
                      section: 'Infusion reactions',
                    )),
              );
            }),
        DrugsCard(
            title: 'Infections (general)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/infections_general.pdf',
                      section: 'Infections (general)',
                    )),
              );
            }),
        DrugsCard(
            title: 'HBV reactivation',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/hbv.pdf',
                      section: 'HBV reactivation',
                    )),
              );
            }),
        DrugsCard(
            title: 'Parvovirus B19 reactivation',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/Parvovirus_b19_reactivation.pdf',
                      section: 'Parvovirus B19 reactivation',
                    )),
              );
            }),
        DrugsCard(
            title: 'TB reactivation',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/tb_reactivation.pdf',
                      section: 'TB reactivation',
                    )),
              );
            }),
        DrugsCard(
            title: 'PML',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/pml.pdf',
                      section: 'PML',
                    )),
              );
            }),
        DrugsCard(
            title: 'Meningoencephalitis',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/meningoencephalitis.pdf',
                      section: 'Meningoencephalitis',
                    )),
              );
            }),
        DrugsCard(
            title: 'Neutropenia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/neutropenia.pdf',
                      section: 'Neutropenia',
                    )),
              );
            }),
        DrugsCard(
            title: 'Thrombocytopenia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/thrombocytopenia.pdf',
                      section: 'Thrombocytopenia',
                    )),
              );
            }),
        DrugsCard(
            title: 'Severe mucocutaneous reactions',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/severe_mucocutaneous_reactions.pdf',
                      section: 'Severe mucocutaneous reactions',
                    )),
              );
            }),
        DrugsCard(
            title: 'Cardiovascular side effects',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/cardiovascular_side_effects.pdf',
                      section: 'Cardiovascular side effects',
                    )),
              );
            }),
        DrugsCard(
            title: 'Renal toxicity',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfSplashScreen(
                      pdfPass:
                      'assets/pdfs/transplantation/mabthera/renal_toxicity.pdf',
                      section: 'Renal toxicity',
                    )),
              );
            }),
      ],
    );
  }
}
