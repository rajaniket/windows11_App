import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentApps extends StatefulWidget {
  RecentApps({Key key}) : super(key: key);

  @override
  _RecentAppsState createState() => _RecentAppsState();
}

class _RecentAppsState extends State<RecentApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          _buildListItem('Power Point', '11s ago', 'assets/powerpoint.png'),
          _buildListItem(
              'Microsoft Edge', '1m ago', 'assets/microsoft_edge.png'),
          _buildListItem('Word', '5m ago', 'assets/word.png'),
          _buildListItem('Camera', '10m ago', 'assets/camera.png'),
          _buildListItem('Setting', '21m ago', 'assets/setting.png'),
          _buildListItem('Mail', '30m ago', 'assets/Mail.png'),
          _buildListItem('Teams', '45m ago', 'assets/teams.png'),
          _buildListItem('Calculator', '1h ago', 'assets/calci.png'),
        ],
      ),
    );
  }

  _buildListItem(String appName, String time, String imgPath) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
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
            width: 270.0,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(7), //effect area
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                          Text(
                            appName,
                            style: GoogleFonts.notoSans(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    //SizedBox(width: 20.0),
                    Text(
                      time,
                      style: GoogleFonts.lato(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          textStyle: TextStyle(color: Color(0xFFF68D7F))),
                    ),
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
