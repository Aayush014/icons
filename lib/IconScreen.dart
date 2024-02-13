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
          elevation: 10,
          title: const Text("ICONS",style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(const Icon(Icons.add)),
                  customBox(const Icon(Icons.circle_notifications_rounded)),
                  customBox(const Icon(Icons.arrow_back_ios_new)),
                  customBox(const Icon(Icons.arrow_forward_ios)),
                  customBox(const Icon(Icons.alarm)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(const Icon(Icons.verified_user_rounded)),
                  customBox(const Icon(Icons.account_circle)),
                  customBox(const Icon(Icons.flag_circle_outlined)),
                  customBox(const Icon(Icons.compare_arrows)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(const Icon(Icons.backspace)),
                  customBox(const Icon(Icons.more_vert)),
                  customBox(const Icon(Icons.compare_arrows)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(const Icon(Icons.call)),
                  customBox(const Icon(Icons.search)),
                  customBox(const Icon(Icons.ac_unit)),
                  customBox(const Icon(Icons.square)),
                  customBox(const Icon(Icons.play_arrow)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customBox(const Icon(Icons.apps)),
                  customBox(const Icon(Icons.workspaces_outline)),
                  customBox(const Icon(Icons.wifi_lock_outlined)),
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
    margin: const EdgeInsets.all(5),
    width: 130,
    height: 130,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          const BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
        ]),
    child: i1,
  );
}
