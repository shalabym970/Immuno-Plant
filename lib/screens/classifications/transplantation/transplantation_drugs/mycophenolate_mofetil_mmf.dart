import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';

import '../../../../constant.dart';
import '../../pdf_viewer.dart';

class MMF extends StatelessWidget {
  const MMF({Key? key}) : super(key: key);

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
                      'assets/pdfs/transplantation/mycophenolate_mofetil/drug_interactions.pdf',
                      section: 'Drug interactions',
                    )),
              );
            }),
        DrugsCard(
            title: 'Diarrhea',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/diarrhea.pdf',
                      section: 'Diarrhea',
                    )),
              );
            }),
        DrugsCard(
            title: 'leukopenia',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/leuckpenia.pdf',
                      section: 'leukopenia',
                    )),
              );
            }),
        DrugsCard(
            title: 'Malignancy',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/malignancy.pdf',
                      section: 'Malignancy',
                    )),
              );
            }),
        DrugsCard(
            title: 'PRCA',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/prca.pdf',
                      section: 'PRCA',
                    )),
              );
            }),
        DrugsCard(
            title: 'Hypersensitivity',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/hypersensitivity.pdf',
                      section: 'Hypersensitivity',
                    )),
              );
            }),
        DrugsCard(
            title: 'infection ( CMV)',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/infection_cmv.pdf',
                      section: 'infection ( CMV)',
                    )),
              );
            }),
        DrugsCard(
            title: 'Resistance to MMF',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/resistance_to_mmf.pdf',
                      section: 'Resistance to MMF',
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
                      'assets/pdfs/transplantation/mycophenolate_mofetil/UTI.pdf',
                      section: 'UTI *',
                    )),
              );
            }),
        DrugsCard(
            title: 'Hyperglycemia*',
            icon: cardDrugIcon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PdfViewer(
                      pdfPass:
                      'assets/pdfs/transplantation/mycophenolate_mofetil/hyperglycemia.pdf',
                      section: 'Hyperglycemia*',
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
                      'assets/pdfs/transplantation/mycophenolate_mofetil/dyslipidemia_general.pdf',
                      section: 'Dyslipidemia*',
                    )),
              );
            }),
      ],
    );
  }
}
