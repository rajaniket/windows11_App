import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllApp extends StatefulWidget {
  AllApp({Key key}) : super(key: key);

  @override
  _AllAppState createState() => _AllAppState();
}

class _AllAppState extends State<AllApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildListItem('Calender', 'assets/cal.png'),
                  SizedBox(height: 25),
                  _buildListItem('Calculator', 'assets/calci.png'),
                  SizedBox(height: 25),
                  _buildListItem('Camera', 'assets/camera.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildListItem('Chrome', 'assets/chrome.png'),
                  SizedBox(height: 25),
                  _buildListItem('Excel', 'assets/excel.png'),
                  SizedBox(height: 25),
                  _buildListItem('Microsoft Store', 'assets/m_store2.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildListItem('Mail', 'assets/Mail.png'),
                  SizedBox(height: 25),
                  _buildListItem('Microsoft Edge', 'assets/microsoft_edge.png'),
                  SizedBox(height: 25),
                  _buildListItem('OneDrive', 'assets/onedrive.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildListItem('OneNote', 'assets/onenote.png'),
                  SizedBox(height: 25),
                  _buildListItem('Paint', 'assets/paint.png'),
                  SizedBox(height: 25),
                  _buildListItem('PowerPoint', 'assets/powerpoint.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildListItem('Setting', 'assets/setting.png'),
                  SizedBox(height: 25),
                  _buildListItem('Skype', 'assets/skype.png'),
                  SizedBox(height: 25),
                  _buildListItem('Teams', 'assets/teams.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildListItem('Visual Studio', 'assets/Visual_Studio.png'),
                  SizedBox(height: 25),
                  _buildListItem('Word', 'assets/word.png'),
                  SizedBox(height: 25),
                  _buildListItem('Xbox', 'assets/xbox.png'),
                ],
              ),
              Row(
                children: [
                  _buildListItem('Youtube', 'assets/youtube.png'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  _buildListItem(String appName, String imgPath) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(7),
          //effect area
          onTap: () {},
          child: Container(
            height: 90,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: Text(
                    appName,
                    style: GoogleFonts.notoSans(
                        fontSize: 12.0,
                        color: Colors.white,
                        textBaseline: TextBaseline.ideographic),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
