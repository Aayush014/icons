import 'package:flutter/material.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ICONS"),
          centerTitle: true,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(scrollDirection:Axis.horizontal ,
              child:
              Row(
                children: [
                 customBox(Icon(Icons.add)),
                 customBox(Icon(Icons.circle_notifications_rounded)),
                 customBox(Icon(Icons.arrow_back_ios_new)),
                 customBox(Icon(Icons.arrow_forward_ios)),
                 customBox(Icon(Icons.alarm)),

                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(Icon(Icons.verified_user_rounded)),
                  customBox(Icon(Icons.account_circle)),
                  customBox(Icon(Icons.flag_circle_outlined)),
                  customBox(Icon(Icons.compare_arrows)),
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(Icon(Icons.backspace)),
                  customBox(Icon(Icons.more_vert)),
                  customBox(Icon(Icons.compare_arrows)),
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child:
              Row(
                children: [
                  customBox(Icon(Icons.call)),
                  customBox(Icon(Icons.search)),
                  customBox(Icon(Icons.ac_unit)),
                  customBox(Icon(Icons.square)),
                  customBox(Icon(Icons.play_arrow)),

                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(Icon(Icons.apps)),
                  customBox(Icon(Icons.workspaces_outline)),
                  customBox(Icon(Icons.wifi_lock_outlined)),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget customBox(Icon i1) {
  return Container(
    margin: EdgeInsets.all(5),
    width: 130,
    height: 130,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
        ]),
    child: i1,
  );
}
