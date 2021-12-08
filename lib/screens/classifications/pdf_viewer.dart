import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';
import 'package:immuno_plant/widgets/navigator_drawer.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class PdfViewer extends StatefulWidget {
  final String section;
  final String pdfPass;

  const PdfViewer({
    Key? key,
    required this.pdfPass, required this.section,
  }) : super(key: key);

  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(section: widget.section),
      floatingActionButton: const CustomFloatingActionButton(),
      drawer: const NavigatorDrawerWidget(),
      body: Stack(
        children: [
          Center(
            child: PdfView(
              controller: PdfController(
                  document: PdfDocument.openAsset(widget.pdfPass)),
            ),
          ),
          // RaisedButton(
          //   child: Text('page2'),
          //   onPressed: () {
          //     pdfController.jumpToPage(2);
          //     pdfController.animateToPage(2,
          //         duration: Duration(seconds: 1), curve: Curves.linear);
          //   },
          // )
        ],
      ),
    );
  }
}
