import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/constant.dart';
import 'package:immuno_plant/screens/classifications/immunosuppressants/immunosuppressants.dart';
import 'package:immuno_plant/screens/classifications/transplantation/transplantation.dart';
import 'package:immuno_plant/widgets/custom_link_text.dart';
import 'package:immuno_plant/widgets/out_line_button.dart';
import 'package:url_launcher/link.dart';

import 'abbreviation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.pageState}) : super(key: key);
  int pageState;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _backgroundColor = Colors.white;
  var _headingColor = const Color(0xFFD04DB4);

  double _headingTop = 100;

  double _loginWidth = 0;
  double _loginHeight = 0;
  double _loginOpacity = 1;

  double _loginYOffset = 0;
  double _loginXOffset = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  final bool _keyboardVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    _loginHeight = windowHeight - 270;

    switch (widget.pageState) {
      case 0:
        _backgroundColor = kBackgroundColor;
        _headingColor = kPrimaryColor;

        _headingTop = 100;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = windowHeight;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        break;
      case 1:
        _backgroundColor = kPrimaryColor;
        _headingColor = kBackgroundColor;

        _headingTop = 90;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = _keyboardVisible ? 40 : 270;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        break;
    }

    return Stack(
      children: <Widget>[
        AnimatedContainer(
          height: MediaQuery.of(context).size.height,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 1000),
            color: _backgroundColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.pageState = 0;
                      });
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          AnimatedContainer(
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(milliseconds: 1000),
                            margin: EdgeInsets.only(
                              top: _headingTop,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: widget.pageState != 0
                                      ? Image.asset(
                                          'assets/images/Immuno-plant (2).png',
                                          height: 90,
                                          width: 120,
                                        )
                                      : Image.asset(
                                          'assets/images/Immuno-plant (1).png',
                                          height: 90,
                                          width: 120,
                                        ),
                                ),
                                Material(
                                  type: MaterialType.transparency,
                                  child: Text(
                                    appName,
                                    style: TextStyle(
                                        color: _headingColor, fontSize: 28),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                "Dose modification of immunosuppressant drugs in different kidney disease modalities and management of adverse effects of transplantation drugs.",
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(color: _headingColor, fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Center(
                      child: Image.asset("assets/images/splash_bg.png"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.pageState != 0) {
                          widget.pageState = 0;
                        } else {
                          widget.pageState = 1;
                        }
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(32),
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Material(
                          type: MaterialType.transparency,
                          child: Text(
                            "Get Started",
                            style:
                                TextStyle(color: kBackgroundColor, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
        AnimatedContainer(

          padding: const EdgeInsets.all(32),
          width: _loginWidth,
          height: _loginHeight,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(milliseconds: 1000),
          transform: Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
          decoration: BoxDecoration(
              color: kBackgroundColor.withOpacity(_loginOpacity),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: const [
                        Material(
                          type: MaterialType.transparency,
                          child: Text(
                            "Choose where you want ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Material(
                          type: MaterialType.transparency,
                          child: Text(
                            "us to help you",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Immunosuppressants(
                                    section: 'Immunosuppressants',
                                  )),
                        );
                      });
                    },
                    child: const Material(
                      type: MaterialType.transparency,
                      child: OutlineBtn(
                        btnText: "Immunosuppressants",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Transplantation(
                                    section: 'Transplantation',
                                  )),
                        );
                      });
                    },
                    child: const Material(
                      type: MaterialType.transparency,
                      child: OutlineBtn(
                        btnText: "Transplantation",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomLinkText(
                      text: 'Abbreviation',
                      onTap: () {
                        {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Abbreviation(section: 'Abbreviation',)),
                            );
                          });
                        }
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomLinkText(
                    text: 'About Us',
                    onTap: aboutImmunoPlant,
                  ),

                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void aboutImmunoPlant() {
    showAboutDialog(
        context: context,
        applicationIcon: Image.asset(
          'assets/images/Immuno-plant (1).png',
          height: 80,
          width: 40,
        ),
        applicationName: 'Immuno Plant',
        applicationVersion: '1.0.0',
        applicationLegalese: 'Developed by Mohamed Shalaby',
        children: [
          const Text(
              'We are a group of fifteen senior clinical pharmacy students from Alexandria University  and we made IMMUNO-PLANT as our graduation project after a period of training in the nephrology department of Alexandria Main University Hospital. This application aims to provide accessible information to be used by physicians , where it is concerned with immunosuppressants dosing in kidney diseases and different dialysis modalities , in addition to grouping the management of the most common adverse effects that occur with the use of these drugs after transplantation.\n'),
          const Text(
            'Group members: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
              '- Maiar Tarek Nomeir.\n- Manar Adel Ibrahim.\n- Mariam Hassan Mokhtar.\n- Mariam Mohamed Hassan.\n- Marwa Mohamed Elsayed.\n- Marwan Ibrahim Mohamed.\n- Mohamed Sherif Fathy.\n- Mohamed Taher Mohamed.\n- Myriam Elsayed Mahfouz.\n- Nancy Hassan Mohamed.\n- Nouran Abdalla Elsayed.\n- Nouran Mahmoud Tarek.\n- Nouran Nouh Mohamed.\n-Sara Khairy Fouad.\n- Yomna Ashraf Ashmawy.\n'),
          const Text(
            'Project supervisors: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text('- Dr. Enas Abd Elaziz Mohamed.'),
          Link(
            uri: Uri.parse('Gs-enas.elkady@alexu.edu.eg'),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return TextButton(
                onPressed: () => openLink,
                child: const Text('Gs-enas.elkady@alexu.edu.eg'),
              );
            },
          ),
          const Text('- Dr. Dina Mostafa Elgameel.'),
          Link(
            uri: Uri.parse('s-dina.elgameel@alexu.edu.eg'),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return TextButton(
                onPressed: () => openLink,
                child: const Text('s-dina.elgameel@alexu.edu.eg\n'),
              );
            },
          ),
          const Text(
            'Application developer:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text('Eng.Mohamed Shalaby.'),
          Row(
            children: [
              const Text('Github: '),
              Expanded(
                child: Link(
                  uri: Uri.parse('https://github.com/shalabym970'),
                  target: LinkTarget.blank,
                  builder: (BuildContext ctx, FollowLink? openLink) {
                    return TextButton(
                      onPressed: () => openLink,
                      child: const Text('https://github.com/shalabym970'),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('LinkedIn: '),
              Expanded(
                child: Link(
                  uri: Uri.parse(
                      'https://linkedin.com/in/mohamed-shalaby-56444b158'),
                  target: LinkTarget.blank,
                  builder: (BuildContext ctx, FollowLink? openLink) {
                    return TextButton(
                      onPressed: () => openLink,
                      child: const Text(
                          'linkedin.com/in/mohamed-shalaby-56444b158'),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Gmail: '),
              Expanded(
                child: Link(
                  uri: Uri.parse('shalabym970@gmail.com'),
                  target: LinkTarget.blank,
                  builder: (BuildContext ctx, FollowLink? openLink) {
                    return TextButton(
                      onPressed: () => openLink,
                      child: const Text('shalabym970@gmail.com'),
                    );
                  },
                ),
              ),
            ],
          ),
        ]);
  }
}
