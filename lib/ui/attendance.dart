import '../styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;

    PreferredSize attendanceAppBar = PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        title: const Text('Form Absensi'),
      ),
    );

    final bodyHeight = sHeight -
        attendanceAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: attendanceAppBar,
        body: Column(
          children: <Widget>[
            Container(
              height: bodyHeight * 0.4,
              width: sWidth,
              color: backGColor,
            ),
            Container(
              width: sWidth,
              color: mainColor,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Outlet",
                    style: GoogleFonts.openSans(
                        color: backGColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
