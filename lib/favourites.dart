import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteApp extends StatefulWidget {
  FavouriteApp({Key key}) : super(key: key);

  @override
  _FavouriteAppState createState() => _FavouriteAppState();
}

class _FavouriteAppState extends State<FavouriteApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          _buildListItem('Skype', 'assets/skype.png'),
          _buildListItem('Microsoft Edge', 'assets/microsoft_edge.png'),
          _buildListItem('Word', 'assets/word.png'),
          _buildListItem('Camera', 'assets/camera.png'),
          _buildListItem('Chrome', 'assets/chrome.png'),
          _buildListItem('Setting', 'assets/setting.png'),
          _buildListItem('Mail', 'assets/Mail.png'),
          _buildListItem('Power Point', 'assets/powerpoint.png'),
        ],
      ),
    );
  }

  _buildListItem(String appName, String imgPath) {
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
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
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
                          Icons.remove,
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
