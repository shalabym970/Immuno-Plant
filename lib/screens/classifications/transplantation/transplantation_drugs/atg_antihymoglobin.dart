import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class ATGAntihymoglobin extends StatelessWidget {
  const ATGAntihymoglobin({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/DRUG_INTERACTIONS.pdf', section: 'Drug interactions',)),
              );
            }),
        DrugsCard(
            title: 'Hematological',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/HEMATOLOGICAL.pdf', section: 'Hematological',)),
              );
            }),
        DrugsCard(
            title: 'UTI',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/URINARY_TRACT_INFECTION.pdf', section: 'UTI',)),
              );
            }),
        DrugsCard(
            title: 'Gastrointestinal',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/GASTROINTESTINAL.pdf', section: 'Gastrointestinal',)),
              );
            }),
        DrugsCard(
            title: 'Cardiovascular',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/CARDIOVASCULAR.pdf', section: 'Cardiovascular',)),
              );
            }),
        DrugsCard(
            title: 'Infusion reactions',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/INFUSION_REACTIONS.pdf', section: 'Infusion reactions',)),
              );
            }),
        DrugsCard(
            title: 'Immunological',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/IMMUNOLOGIC.pdf', section: 'Immunological',)),
              );
            }),
        DrugsCard(
            title: 'Musculoskeletal',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/MUSCULOSKELETAL.pdf', section: 'Musculoskeletal',)),
              );
            }),
        DrugsCard(
            title: 'Psychiatric',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/PSYCHIATRIC.pdf', section: 'Psychiatric',)),
              );
            }),
        DrugsCard(
            title: 'Pain (Local And Systemic)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/ERYTHEMA_SKIN_RASH_CHEMICAL_PHLEPITIS.pdf', section: 'Pain (Local And Systemic)',)),
              );
            }),
        DrugsCard(
            title: 'Respiratory',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfViewer(pdfPass: 'assets/pdfs/transplantation/atg_antihymoglobin/RESPIRATORY.pdf', section: 'Respiratory',)),
              );
            }),

      ],
    );
  }
}
