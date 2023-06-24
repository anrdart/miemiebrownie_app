import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'attendance.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    PreferredSize myAppBar = PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(
          'MieMie Brownie',
          style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
        ),
        actions: const [
          Icon(
            Icons.notifications_none_rounded,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.chat_bubble_outline_outlined,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        titleSpacing: 0,
      ),
    );
    final bodyHeight = sHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
          shape: StadiumBorder(side: BorderSide(color: mainColor, width: 1)),
          splashColor: mainColor,
          backgroundColor: backGColor,
          elevation: 0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AttendancePage(),
              ),
            );
          },
          child: Icon(
            Icons.fingerprint_outlined,
            size: 50,
            color: mainColor,
          )),
      backgroundColor: backgroundWhite,
      drawer: const Sidebar(),
      appBar: myAppBar,
      body: ListView(
        children: [
          Container(
            height: bodyHeight * 0.4,
            color: mainColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hai, Haikal Akhalul Azhar",
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: backGColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: sWidth,
                    height: bodyHeight * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: backGColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.perm_device_information_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Cuti",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Kalender",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Lokasi",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.work_history_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Histori",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Absensi",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.payment_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Payroll",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.book_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Laporan",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.stacked_line_chart_outlined,
                                  color: outlineColor,
                                  size: 40,
                                ),
                                Text(
                                  "Kinerja",
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: outlineColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Riwayat Absen Hari ini",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: outlineColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    gradient: LinearGradient(
                      colors: [
                        mainColor,
                        secondaryColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kamis , 23 Maret 2023",
                                style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    color: backGColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "07:45:00 PM",
                                style: GoogleFonts.openSans(
                                  fontSize: 30,
                                  color: backGColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: backGColor,
                                ),
                                child: Text(
                                  "On Time Check In",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: mainColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            minRadius: 20,
                            child:
                                Icon(Icons.check, color: backGColor, size: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "5 hari yang lalu",
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: outlineColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFC92C20),
                        Color(0xFFFF7272),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rabu , 22 Maret 2023",
                                style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    color: backGColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "08:15:10 PM",
                                style: GoogleFonts.openSans(
                                  fontSize: 30,
                                  color: backGColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: backGColor,
                                ),
                                child: Text(
                                  "Late Check In",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: dangerColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: dangerColor,
                            minRadius: 20,
                            child: Icon(Icons.history_outlined,
                                color: backGColor, size: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    gradient: LinearGradient(
                      colors: [
                        mainColor,
                        secondaryColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Selasa , 21 Maret 2023",
                                style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    color: backGColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "07:41:42 PM",
                                style: GoogleFonts.openSans(
                                  fontSize: 30,
                                  color: backGColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: backGColor,
                                ),
                                child: Text(
                                  "On Time Check In",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: mainColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            minRadius: 20,
                            child:
                                Icon(Icons.check, color: backGColor, size: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
