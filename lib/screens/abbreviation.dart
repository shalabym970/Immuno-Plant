import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';

class Abbreviation extends StatelessWidget {
  const Abbreviation({Key? key, required this.section}) : super(key: key);
  final String section;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(section: section),
      body: ListView(children: <Widget>[
        DataTable(
          dividerThickness: 5,
          columns: const [
            DataColumn(
              numeric: true,
                label: Text(
                'ID',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            )),
            DataColumn(label: Text(
                'Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            )),
            DataColumn(label: Text(
                'Profession',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            )),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('APD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('automated peritoneal dialysis')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('ACE',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('angiotensin-converting enzyme')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('ACS',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('acute coronary syndrome')),
            ]),
            DataRow(cells: [
              DataCell(Text('4')),
              DataCell(Text('ANC',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('absolute neutrophil count')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('Anti-HBc',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('hepatitis B core antibody')),
            ]),
            DataRow(cells: [
              DataCell(Text('6')),
              DataCell(Text('Anti-HBs',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('hepatitis B surface antibody')),
            ]),
            DataRow(cells: [
              DataCell(Text('7')),
              DataCell(Text('ARB',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('angiotensin receptor blocker')),
            ]),
            DataRow(cells: [
              DataCell(Text('8')),
              DataCell(Text('Arb',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('angiotensin converting enzyme inhibitor')),
            ]),
            DataRow(cells: [
              DataCell(Text('9')),
              DataCell(Text('Atg',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('anti thymocyte globulin')),
            ]),
            DataRow(cells: [
              DataCell(Text('10')),
              DataCell(Text('AUC',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Area Under the Curve ')),
            ]),
            DataRow(cells: [
              DataCell(Text('11')),
              DataCell(Text('AZA',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Azathioprine')),
            ]),
            DataRow(cells: [
              DataCell(Text('12')),
              DataCell(Text('BP',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('blood pressure')),
            ]),
            DataRow(cells: [
              DataCell(Text('13')),
              DataCell(Text('BSA',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Bosy Surface Area')),
            ]),
            DataRow(cells: [
              DataCell(Text('14')),
              DataCell(Text('CAPD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('continuous ambulatory peritoneal dialysis')),
            ]),
            DataRow(cells: [
              DataCell(Text('15')),
              DataCell(Text('CAV',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Continuous arteriovenous')),
            ]),
            DataRow(cells: [
              DataCell(Text('16')),
              DataCell(Text('CAVH',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('continuous arteriovenous haemofiltration')),
            ]),
            DataRow(cells: [
              DataCell(Text('17')),
              DataCell(Text('CAVHD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('continuous arteriovenous hemodialysis')),
            ]),
            DataRow(cells: [
              DataCell(Text('18')),
              DataCell(Text('CBC',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Comple Blood Count')),
            ]),
            DataRow(cells: [
              DataCell(Text('19')),
              DataCell(Text('John',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Scientist')),
            ]),
            DataRow(cells: [
              DataCell(Text('20')),
              DataCell(Text('John',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Scientist')),
            ]),
            DataRow(cells: [
              DataCell(Text('21')),
              DataCell(Text('CHOP',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('cyclophosphamide, doxorubicin hydrochloride(Hydroxydaunorubicin), vincristine sulfate (Oncovin), and Prednisone')),
            ]),
            DataRow(cells: [
              DataCell(Text('22')),
              DataCell(Text('CKD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('chronic kidney disease')),
            ]),
            DataRow(cells: [
              DataCell(Text('23')),
              DataCell(Text('CMV',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Cytomegalovirus')),
            ]),
            DataRow(cells: [
              DataCell(Text('24')),
              DataCell(Text('CNI',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Calcineurin Inhibitor')),
            ]),
            DataRow(cells: [
              DataCell(Text('25')),
              DataCell(Text('CrCl',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Creatinine Clearance')),
            ]),
            DataRow(cells: [
              DataCell(Text('26')),
              DataCell(Text('Csa',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Cyclosporine')),
            ]),
            DataRow(cells: [
              DataCell(Text('27')),
              DataCell(Text('CVVH',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('continuous venovenous haemofiltration')),
            ]),
            DataRow(cells: [
              DataCell(Text('28')),
              DataCell(Text('CVVHD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('continuous venovenous hemodialysis')),
            ]),
            DataRow(cells: [
              DataCell(Text('29')),
              DataCell(Text('CVVHDF',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('continuous venovenous haemodiafiltration')),
            ]),
            DataRow(cells: [
              DataCell(Text('30')),
              DataCell(Text('D+/-',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Donor positive/negative')),
            ]),
            DataRow(cells: [
              DataCell(Text('31')),
              DataCell(Text('DC cardioversion',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('direct-current cardioversion')),
            ]),
            DataRow(cells: [
              DataCell(Text('32')),
              DataCell(Text('EBV',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Epstein-Barr Virus')),
            ]),
            DataRow(cells: [
              DataCell(Text('33')),
              DataCell(Text('EC-MPS',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Enteric coated-Mycophenolate Sodium')),
            ]),
            DataRow(cells: [
              DataCell(Text('34')),
              DataCell(Text('GCSF',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('granulocyte colony-stimulating factor')),
            ]),
            DataRow(cells: [
              DataCell(Text('35')),
              DataCell(Text('GCV',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Ganciclovir')),
            ]),
            DataRow(cells: [
              DataCell(Text('36')),
              DataCell(Text('GFR',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('glomerular filtration rate')),
            ]),
            DataRow(cells: [
              DataCell(Text('37')),
              DataCell(Text('HBsAg',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('hepatitis B surface antigen')),
            ]),
            DataRow(cells: [
              DataCell(Text('38')),
              DataCell(Text('HD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Hemodialysis')),
            ]),
            DataRow(cells: [
              DataCell(Text('39')),
              DataCell(Text('HDF',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Hemodiafiltration')),
            ]),
            DataRow(cells: [
              DataCell(Text('40')),
              DataCell(Text('HSV',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Herpes Simplex Virus')),
            ]),
            DataRow(cells: [
              DataCell(Text('41')),
              DataCell(Text('JC virus',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('John Cunningham virus')),
            ]),
            DataRow(cells: [
              DataCell(Text('42')),
              DataCell(Text('LDH',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Lactate Dehydrogenase')),
            ]),
            DataRow(cells: [
              DataCell(Text('43')),
              DataCell(Text('LVEF',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('left ventricular ejection fraction')),
            ]),
            DataRow(cells: [
              DataCell(Text('44')),
              DataCell(Text('MMF',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('mycophenolate mofetil')),
            ]),
            DataRow(cells: [
              DataCell(Text('45')),
              DataCell(Text('NHL',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('non-Hodgkin lymphoma')),
            ]),
            DataRow(cells: [
              DataCell(Text('46')),
              DataCell(Text('PCR',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Polymerase chain reaction')),
            ]),
            DataRow(cells: [
              DataCell(Text('47')),
              DataCell(Text('PD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('peritoneal dialysis')),
            ]),
            DataRow(cells: [
              DataCell(Text('48')),
              DataCell(Text('PRCA',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Pure Red Cell Aplasia')),
            ]),
            DataRow(cells: [
              DataCell(Text('49')),
              DataCell(Text('PTLD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Post-Transplant Lymphoproliferative Disorder')),
            ]),
            DataRow(cells: [
              DataCell(Text('50')),
              DataCell(Text('R+/- ',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Receptor positive/negative')),
            ]),
            DataRow(cells: [
              DataCell(Text('51')),
              DataCell(Text('RR',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('risk ratio')),
            ]),
            DataRow(cells: [
              DataCell(Text('52')),
              DataCell(Text('SOT',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Solid Organ Transplantation')),
            ]),
            DataRow(cells: [
              DataCell(Text('53')),
              DataCell(Text('SRL',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('sirolimus')),
            ]),
            DataRow(cells: [
              DataCell(Text('54')),
              DataCell(Text('Tac',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Tacrolimus')),
            ]),
            DataRow(cells: [
              DataCell(Text('55')),
              DataCell(Text('UTI',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('urinary tract infection')),
            ]),
            DataRow(cells: [
              DataCell(Text('56')),
              DataCell(Text('VGCV',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('Valganciclovir')),
            ]),
            DataRow(cells: [
              DataCell(Text('57')),
              DataCell(Text('VT',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('ventricular tachycardia')),
            ]),
            DataRow(cells: [
              DataCell(Text('58')),
              DataCell(Text('VVHD',style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('veno-venous hemodialysis')),
            ]),

          ],
        ),
      ]),
    );
  }


}
