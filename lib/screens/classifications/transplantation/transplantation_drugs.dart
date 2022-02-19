import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/atg_antihymoglobin.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/basiliximab.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/cyclosporine.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/everolimus.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/prednisone.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/rituximab.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/mycophenolate_mofetil_mmf.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/sirolimus.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation_drugs/tacrolimus.dart';
import 'package:immuno_plant/widgets/alert_dialog.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';

class TransplantationDrugs extends StatefulWidget {
  final String section;
  final int id;

  const TransplantationDrugs({Key? key, required this.id, required this.section})
      : super(key: key);

  @override
  _TransplantationDrugsState createState() => _TransplantationDrugsState();
}

class _TransplantationDrugsState extends State<TransplantationDrugs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        section: widget.section,
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      body: transplantationDrugs(context),
    );
  }

  Widget transplantationDrugs(BuildContext context) {
    if (widget.id == 1) {
      return const Cyclosporine();
    } else if (widget.id == 2) {
      return const Tacrolimus();
    } else if (widget.id == 3) {
      return const Prednisone();
    } else if (widget.id == 4) {
      return const MMF();
    } else if (widget.id == 5) {
      return const Sirolimus();
    } else if (widget.id == 6) {
      return const ATGAntihymoglobin();
    } else if (widget.id == 7) {
      return const Basiliximab();
    } else if (widget.id == 8) {
      return const Rituximab();
    } else if (widget.id == 9) {
      return const Everolimus();
    } else {
      return const CustomAlertDialog();
    }
  }
}
