import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immuno_plant/constant.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';


class NavigatorDrawerWidget extends StatefulWidget {
  const NavigatorDrawerWidget({Key? key}) : super(key: key);

@override
_NavigatorDrawerWidgetState createState() => _NavigatorDrawerWidgetState();
}

class _NavigatorDrawerWidgetState extends State<NavigatorDrawerWidget> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiLevelDrawer(
      backgroundColor: kBackgroundColor,
      rippleColor: kPrimaryColor,

      subMenuBackgroundColor: Colors.grey.shade100,
      divisionColor: kPrimaryColor,
      header: Container(
        height: size.height * 0.25,
        width: size.width,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/pp (1).jpeg",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Abdullah El m3aras",)
              ],
            )),
      ),
      children: [
        MLMenuItem(
          leading: Icon(Icons.contacts_outlined,),
          trailing: Icon(Icons.arrow_right,),
          content: Text("  جهة الاتصال",),
          onClick: () {},
          subMenuItems: [
            MLSubmenu(onClick: () {}, submenuContent: Text("   قائمة الاتصال",)),
            MLSubmenu(onClick: () {}, submenuContent: Text("فئة جهات الاتصال  ",)),
          ],
        ),
        MLMenuItem(
          leading: Icon(Icons.supervisor_account_sharp,),
          trailing: Icon(Icons.arrow_right,),
          content: const Text("  العميل",),
          onClick: () {},
          subMenuItems: [
            MLSubmenu(onClick: () {}, submenuContent: Text("  قائمة العميل",)),
            MLSubmenu(onClick: () {}, submenuContent: Text("  فئةالعميل ",))
          ],
        ),

      ],
    );
  }
}
