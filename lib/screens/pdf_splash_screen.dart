import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'classifications/pdf_viewer.dart';

class PdfSplashScreen extends StatefulWidget {
  const PdfSplashScreen(
      {Key? key, required this.section, required this.pdfPass})
      : super(key: key);
  final String section;
  final String pdfPass;

  @override
  State<PdfSplashScreen> createState() => _PdfSplashScreenState();
}

class _PdfSplashScreenState extends State<PdfSplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    Timer(const Duration(seconds: 4), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => PdfViewer(
                  pdfPass: widget.pdfPass,
                  section: widget.section,
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/animation_500_kyff5lux.gif",
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const Text(
              'Swip to move between pages',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
