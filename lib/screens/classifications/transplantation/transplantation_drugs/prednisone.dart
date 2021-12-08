import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class Prednisone extends StatelessWidget {
  const Prednisone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        DrugsCard(
            title: 'Drug interactions ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/ddi_prednisone.pdf',
                      section: 'Drug interactions ',
                    )),
              );
            }),
        DrugsCard(
            title: 'GLUCOMA',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/glucoma.pdf',
                      section: 'GLUCOMA',
                    )),
              );
            }),
        DrugsCard(
            title: 'Ocular ulcer',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/ocular_ulcer.pdf',
                      section: 'Ocular ulcer',
                    )),
              );
            }),
        DrugsCard(
            title: 'Osteoporosis',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/osteoporosis.pdf',
                      section: 'Osteoporosis',
                    )),
              );
            }),
        DrugsCard(
            title: 'Vertebral fractures',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/vertebral_fractures.pdf',
                      section: 'Vertebral fractures',
                    )),
              );
            }),
        DrugsCard(
            title: 'Weight gain',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/weight_gain.pdf',
                      section: 'Weight gain',
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
                      'assets/pdfs/transplantation/prednisolone/hypertension.pdf',
                      section: 'Hypertension',
                    )),
              );
            }),
        DrugsCard(
            title: 'Fluid retention ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/fluid_retention.pdf',
                      section: 'Fluid retention ',
                    )),
              );
            }),
        DrugsCard(
            title: 'Skin atrophy ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/skin_atrophy.pdf',
                      section: 'Skin atrophy ',
                    )),
              );
            }),
        DrugsCard(
            title: 'Wound healing ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/wound_healing.pdf',
                      section: 'Wound healing ',
                    )),
              );
            }),
        DrugsCard(
            title: 'Acne',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/acne.pdf',
                      section: 'Acne',
                    )),
              );
            }),
        DrugsCard(
            title: 'Hyperglycemia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/prednisolone_hyperglicemia .pdf',
                      section: 'Hyperglycemia',
                    )),
              );
            }),
        DrugsCard(
            title: 'Cushing syndrome & Hpa axis suppression ',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/cushing_syndrome.pdf',
                      section: 'Cushing syndrome & Hpa axis suppression ',
                    )),
              );
            }),
        DrugsCard(
            title: 'Psychosis',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/psychosis.pdf',
                      section: 'Psychosis',
                    )),
              );
            }),
        DrugsCard(
            title: 'Musculoskeletal (myopathy)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/musculoskeletal.pdf',
                      section: 'Musculoskeletal (myopathy)',
                    )),
              );
            }),
        DrugsCard(
            title: 'Git disorders ( peptic ulcer and gastric bleeding )',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/prednisolone/git_disorders.pdf',
                      section: 'Git disorders ( peptic ulcer and gastric bleeding )',
                    )),
              );
            }),
      ],
    );
  }
}