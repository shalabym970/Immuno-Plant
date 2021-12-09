import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/alert_dialog.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';

import 'immunosuppressants_drugs_classes/calcineurin_inhibitors.dart';
import 'immunosuppressants_drugs_classes/corticosteroids.dart';
import 'immunosuppressants_drugs_classes/inosine_monophosphate_dehydrogenase_inhibitors.dart';
import 'immunosuppressants_drugs_classes/interleukin_1_inhibitor.dart';
import 'immunosuppressants_drugs_classes/janus_kinase_inhibitors.dart';
import 'immunosuppressants_drugs_classes/mechanistic_target_of_rapamycin_inhibitors.dart';
import 'immunosuppressants_drugs_classes/monoclonal_antibiodies.dart';
import 'immunosuppressants_drugs_classes/polyclonal_antibiodies.dart';
import 'immunosuppressants_drugs_classes/pyrimidine_synthesis_inhibitors.dart';
import 'immunosuppressants_drugs_classes/sphingosine_1_phosphate_receptor_modulator.dart';
import 'immunosuppressants_drugs_classes/tnf_alpha_inhibitor.dart';

class ImmunosuppressantsDrugsClasses extends StatefulWidget {
  final String section;
  final int id;

  const ImmunosuppressantsDrugsClasses(
      {Key? key, required this.id, required this.section})
      : super(key: key);

  @override
  _ImmunosuppressantsDrugsClassesState createState() =>
      _ImmunosuppressantsDrugsClassesState();
}

class _ImmunosuppressantsDrugsClassesState
    extends State<ImmunosuppressantsDrugsClasses> {
  @override
  Widget build(BuildContext cocntext) {
    return Scaffold(
      appBar: CustomAppBar(section: widget.section),
      floatingActionButton: const CustomFloatingActionButton(),
      body: immunosuppressantsDrugsList(context),
    );
  }

  Widget immunosuppressantsDrugsList(BuildContext context) {
    if (widget.id == 1) {
      return  const CalcineurinInhibitors();
    } else if (widget.id == 2) {
      return  const Corticosteroids();
    } else if (widget.id == 3) {
      return  const IMDH();
    } else if (widget.id == 4) {
      return  const InterleukinInhibitor();
    } else if (widget.id == 5) {
      return  const JanusKinaseInhibitors();
    } else if (widget.id == 6) {
      return  const MTOR();
    } else if (widget.id == 7) {
      return  const MonoclonalAntibiodies();
    } else if (widget.id == 8) {
      return  const PolyclonalAntibiodies();
    } else if (widget.id == 9) {
      return  const PyrimidineSynthesisInhibitors();
    } else if (widget.id == 10) {
      return  SphingosinePhosphateReceptorModulator();
    } else if (widget.id == 11) {
      return  TNFAlphaInhibitor();
    } else {
      return const CustomAlertDialog();
    }
  }
}
