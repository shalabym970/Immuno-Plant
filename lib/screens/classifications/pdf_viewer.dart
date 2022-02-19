import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/widgets/custom_app_bar.dart';
import 'package:immuno_plant/widgets/floating_action_button.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

import '../../constant.dart';

class PdfViewer extends StatefulWidget {
  final String section;
  final String pdfPass;

  const PdfViewer({
    Key? key,
    required this.pdfPass,
    required this.section,
  }) : super(key: key);

  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer>
    with SingleTickerProviderStateMixin {
  static const int _initialPage = 1;
  int _actualPageNumber = _initialPage, _allPagesCount = 0;
  bool isSampleDoc = true;
  late PdfController _pdfController;
  bool expanded = true;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(widget.pdfPass),
      initialPage: _initialPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(section: widget.section),
      floatingActionButton: const CustomFloatingActionButton(),
      body: Stack(
        children: [
          Center(
            child: PdfView(
              documentLoader: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please Wait',
                    style: TextStyle(color: kPrimaryColor, fontSize: MediaQuery.of(context).size.width * 0.05),
                  )
                ],
              )),
              pageLoader: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please Wait',
                    style: TextStyle(color: kPrimaryColor, fontSize: MediaQuery.of(context).size.width * 0.05),
                  )
                ],
              )),
              controller: _pdfController,
              onDocumentLoaded: (document) {
                setState(() {
                  _allPagesCount = document.pagesCount;
                });
              },
              onPageChanged: (page) {
                setState(() {
                  _actualPageNumber = page;
                });
              },
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0, left: 10, right: 10, top: 10),
                  child: Text(
                    '$_actualPageNumber/$_allPagesCount',
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0, left: 10, right: 10, top: 10),
                  child: Opacity(
                    opacity: _allPagesCount > 1 ? 1.0 : 0.0,
                    child: const Text(
                      'swipe from right to left or vice versa to move between pages.',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}