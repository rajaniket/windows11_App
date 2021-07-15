import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendApp extends StatefulWidget {
  RecommendApp({Key key}) : super(key: key);

  @override
  _RecommendAppState createState() => _RecommendAppState();
}

class _RecommendAppState extends State<RecommendApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _buildListItem('Asphalt 9', '980 Mb', 'assets/asphalt2.png'),
          _buildListItem('Call of Duty', '540 Mb ', 'assets/call_of_duty.png'),
          _buildListItem(
              'Counter Strike', '800 Mb', 'assets/counter_strike.png'),
          _buildListItem(
              'Adobe Photoshop', '70 Mb', 'assets/Adobe_Photoshop.png'),
          _buildListItem('Adobe Reader', '50 Mb', 'assets/adobe_reader.png'),
          _buildListItem('Git', '12 Mb', 'assets/Git.png'),
        ],
      ),
    );
  }

  _buildListItem(String appName, String size, String imgPath) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 17.0, sigmaY: 17.0),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30, width: 0.4),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.blueGrey[900].withOpacity(0.1),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey[900].withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(7), //effect area
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 270.0,
                      child: Row(
                        children: [
                          Container(
                            height: 75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.white24),
                            child: Center(
                                child: Image.asset(imgPath,
                                    height: 50.0, width: 50.0)),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                appName,
                                style: GoogleFonts.notoSans(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    size,
                                    style: GoogleFonts.lato(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        textStyle: TextStyle(
                                            color: Color(0xFFF68D7F))),
                                  ),
                                  SizedBox(width: 3.0),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    FloatingActionButton(
                      heroTag: appName,
                      mini: true,
                      onPressed: () {},
                      child: Center(
                        child: Icon(
                          Icons.download_sharp,
                          color: Color(0xFF0C0A31),
                        ),
                      ),
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
