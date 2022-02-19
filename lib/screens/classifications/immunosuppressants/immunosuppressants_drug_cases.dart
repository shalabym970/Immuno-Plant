import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/drugs_card.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';

import '../../../../constant.dart';
import '../pdf_viewer.dart';

class ImmunosuppressantsDrugCases extends StatelessWidget {
  final String section;
  final String id;

  ImmunosuppressantsDrugCases({
    Key? key,
    required this.section,
    required this.id,
  }) : super(key: key);

  int opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(section: section),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          DrugsCard(
              title: 'Normal Dose (Kidney Transplant)',
              icon: cardDrugIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PdfViewer(
                            pdfPass: normalDose(),
                            section: 'Normal Dose (Kidney Trasnplant)',
                          )),
                );
              }),
          DrugsCard(
              title: 'Renal Impairment',
              icon: cardDrugIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PdfViewer(
                            pdfPass: renalImpairment(),
                            section: 'Renal Impairment',
                          )),
                );
              }),
          DrugsCard(
              title: 'Renal Replacement Therapy',
              icon: cardDrugIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PdfViewer(
                            pdfPass: renalReplacementTherapy(),
                            section: 'Renal Replacement Therapy',
                          )),
                );
              }),
          DrugsCard(
              title: 'Side Effects',
              icon: cardDrugIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PdfViewer(
                            pdfPass: sideEffects(),
                            section: 'Side Effects',
                          )),
                );
              }),
          Opacity(
              opacity: id == 'Prednisone' || id == 'Anakinra' ? 0 : 1,
              child: DrugsCard(
                  title: 'Different Indications',
                  icon: cardDrugIcon,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PdfViewer(
                                pdfPass: differentIndications(),
                                section: 'Different Indications',
                              )),
                    );
                  })),
        ],
      ),
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  String normalDose() {
    String normalDose = ' ';
    if (id == 'Cyclosporine') {
      normalDose =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/cyclosporine/cyclosporine_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Tacrolimus') {
      normalDose =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/tacrolimus/tacrolimus_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Prednisone') {
      normalDose =
          'assets/pdfs/immunosuppressants/corticosteroids/prednisolone/prednisolone_tranplantation_dose.pdf';
      return normalDose;
    } else if (id == 'Mycophenolate_mofetil') {
      normalDose =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/mycophenolate/mycophenolic_acid_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Azathioprine') {
      normalDose =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/azathioorine/azathioprine_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Anakinra') {
      normalDose =
          'assets/pdfs/immunosuppressants/interleukin_1_inhibitors/anakinra/anakinra_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Tofacitinib') {
      normalDose =
          'assets/pdfs/immunosuppressants/janus_kinase_inhibitors/tofacitinib/tofacitinib_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Sirolimus') {
      normalDose =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/sirolimus/sirolimus_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Everolimus') {
      normalDose =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/everolimus/everolimus_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Basiliximab') {
      normalDose =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/basiliximab/basiliximab_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Rituximab') {
      normalDose =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/rituximab/rituximab_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Methotrexate') {
      normalDose =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/methotrexate/methotrexate_normal_dose.pdf';
      return normalDose;
    } else if (id == 'Antilymphocyte_polyclonal_antibody(ATG)') {
      normalDose =
          'assets/pdfs/immunosuppressants/polyclonal_antibiodies/antilymphocyte_polyclonal_antibody/atg_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Leflunomide') {
      normalDose =
          'assets/pdfs/immunosuppressants/pyrimidine_synthesis/leflunomide/leflunomide_normal_dose.pdf';
      return normalDose;
    } else if (id == 'Fingolimod') {
      normalDose =
          'assets/pdfs/immunosuppressants/sphingosine_1_phosphate/fingolimod/fingolid_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Adalimumab') {
      normalDose =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/adalimumab/adalimumab_transplant_dose.pdf';
      return normalDose;
    } else if (id == 'Infliximab') {
      normalDose =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/infliximab/infliximab_transplant_dose.pdf';
      return normalDose;
    } else {
      return normalDose;
    }
  }

  String renalImpairment() {
    String renalImpairment = ' ';
    if (id == 'Cyclosporine') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/cyclosporine/cyclosporine_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Tacrolimus') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/tacrolimus/tacrolimus_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Prednisone') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/corticosteroids/prednisolone/prednisolone_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Mycophenolate_mofetil') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/mycophenolate/mycophenolic_acid_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Azathioprine') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/azathioorine/azathioprine_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Anakinra') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/interleukin_1_inhibitors/anakinra/anakinra_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Tofacitinib') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/janus_kinase_inhibitors/tofacitinib/tofacitinib_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Sirolimus') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/sirolimus/sirolimus_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Everolimus') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/everolimus/everolimus_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Basiliximab') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/basiliximab/basiliximab_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Rituximab') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/rituximab/rituximab_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Methotrexate') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/methotrexate/methotrexate_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Antilymphocyte_polyclonal_antibody(ATG)') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/polyclonal_antibiodies/antilymphocyte_polyclonal_antibody/atg_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Leflunomide') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/pyrimidine_synthesis/leflunomide/leflunomide_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Fingolimod') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/sphingosine_1_phosphate/fingolimod/fingolid_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Adalimumab') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/adalimumab/adalimumab_renal_impairment.pdf';
      return renalImpairment;
    } else if (id == 'Infliximab') {
      renalImpairment =
          'assets/pdfs/immunosuppressants/interleukin_1_inhibitors/anakinra/anakinra_renal_impairment.pdf';
      return renalImpairment;
    } else {
      return renalImpairment;
    }
  }

  String renalReplacementTherapy() {
    String renalReplacementTherapy = ' ';
    if (id == 'Cyclosporine') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/cyclosporine/cyclosporine_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Tacrolimus') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/tacrolimus/tacrolimus_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Prednisone') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/corticosteroids/prednisolone/prednisolone_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Mycophenolate_mofetil') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/mycophenolate/mycophenolic_acid_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Azathioprine') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/azathioorine/azathioprine_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Anakinra') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/interleukin_1_inhibitors/anakinra/anakinra_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Tofacitinib') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/janus_kinase_inhibitors/tofacitinib/tofacitinib_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Sirolimus') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/sirolimus/sirolimus_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Everolimus') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/everolimus/everolimus_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Basiliximab') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/basiliximab/basiliximab_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Rituximab') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/rituximab/rituximab_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Methotrexate') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/methotrexate/methotrexate_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Antilymphocyte_polyclonal_antibody(ATG)') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/polyclonal_antibiodies/antilymphocyte_polyclonal_antibody/atg_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Leflunomide') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/pyrimidine_synthesis/leflunomide/leflunomide_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Fingolimod') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/sphingosine_1_phosphate/fingolimod/fingolid_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Adalimumab') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/adalimumab/adalimumab_rrt.pdf';
      return renalReplacementTherapy;
    } else if (id == 'Infliximab') {
      renalReplacementTherapy =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/infliximab/infliximab_rrt.pdf';
      return renalReplacementTherapy;
    } else {
      return renalReplacementTherapy;
    }
  }

  String differentIndications() {
    String differentIndications = ' ';
    if (id == 'Cyclosporine') {
      differentIndications =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/cyclosporine/cyclosporine_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Tacrolimus') {
      differentIndications =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/tacrolimus/tacrolimus_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Mycophenolate_mofetil') {
      differentIndications =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/mycophenolate/mycophenolic_acid_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Azathioprine') {
      differentIndications =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/azathioorine/azathioprine_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Tofacitinib') {
      differentIndications =
          'assets/pdfs/immunosuppressants/janus_kinase_inhibitors/tofacitinib/tofacitinib_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Sirolimus') {
      differentIndications =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/sirolimus/sirolimus_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Everolimus') {
      differentIndications =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/everolimus/everolimus_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Basiliximab') {
      differentIndications =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/basiliximab/basiliximab_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Rituximab') {
      differentIndications =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/rituximab/rituximab_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Methotrexate') {
      differentIndications =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/methotrexate/methotrexate_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Antilymphocyte_polyclonal_antibody(ATG)') {
      differentIndications =
          'assets/pdfs/immunosuppressants/polyclonal_antibiodies/antilymphocyte_polyclonal_antibody/atg_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Leflunomide') {
      differentIndications =
          'assets/pdfs/immunosuppressants/pyrimidine_synthesis/leflunomide/leflunomide_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Fingolimod') {
      differentIndications =
          'assets/pdfs/immunosuppressants/sphingosine_1_phosphate/fingolimod/fingolid_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Adalimumab') {
      differentIndications =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/adalimumab/adalimumab_other_indications.pdf';
      return differentIndications;
    } else if (id == 'Infliximab') {
      differentIndications =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/infliximab/infliximab_other_indications.pdf';
      return differentIndications;
    } else {
      return differentIndications;
    }
  }

  String sideEffects() {
    String sideEffects = ' ';
    if (id == 'Cyclosporine') {
      sideEffects =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/cyclosporine/cyclosporine_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Tacrolimus') {
      sideEffects =
          'assets/pdfs/immunosuppressants/calcineurin_inhibitors/tacrolimus/tacrolimus_side_effect.pdf';
      return sideEffects;
    } else if (id == 'Prednisone') {
      sideEffects =
          'assets/pdfs/immunosuppressants/corticosteroids/prednisolone/prednisolone_side_effect.pdf';
      return sideEffects;
    } else if (id == 'Mycophenolate_mofetil') {
      sideEffects =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/mycophenolate/mycophenolic_acid_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Azathioprine') {
      sideEffects =
          'assets/pdfs/immunosuppressants/inosine_monophosphate_dehydrogenase_inhibitors/azathioorine/azathioprine_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Anakinra') {
      sideEffects =
          'assets/pdfs/immunosuppressants/interleukin_1_inhibitors/anakinra/anakinra_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Tofacitinib') {
      sideEffects =
          'assets/pdfs/immunosuppressants/janus_kinase_inhibitors/tofacitinib/tofacitinib_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Sirolimus') {
      sideEffects =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/sirolimus/sirolimus_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Everolimus') {
      sideEffects =
          'assets/pdfs/immunosuppressants/mechanistic_target_of_rapamycin_inhibitors/everolimus/everolimus_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Basiliximab') {
      sideEffects =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/basiliximab/basiliximab_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Rituximab') {
      sideEffects =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/rituximab/rituximab_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Methotrexate') {
      sideEffects =
          'assets/pdfs/immunosuppressants/monoclonal_antibiodies/methotrexate/methotrexate_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Antilymphocyte_polyclonal_antibody(ATG)') {
      sideEffects =
          'assets/pdfs/immunosuppressants/polyclonal_antibiodies/antilymphocyte_polyclonal_antibody/atg_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Leflunomide') {
      sideEffects =
          'assets/pdfs/immunosuppressants/pyrimidine_synthesis/leflunomide/leflunomide_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Fingolimod') {
      sideEffects =
          'assets/pdfs/immunosuppressants/sphingosine_1_phosphate/fingolimod/fingolid_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Adalimumab') {
      sideEffects =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/adalimumab/adalimumab_side_effects.pdf';
      return sideEffects;
    } else if (id == 'Infliximab') {
      sideEffects =
          'assets/pdfs/immunosuppressants/tnf_alpha_inhibitor/infliximab/infliximab_side_effects.pdf';
      return sideEffects;
    } else {
      return sideEffects;
    }
  }
}