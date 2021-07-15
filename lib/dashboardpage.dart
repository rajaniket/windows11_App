import 'dart:ui';

import 'package:windows/favourites.dart';
import 'package:windows/recent.dart';
import 'package:windows/recommend.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'all.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 4, vsync: this); // vsync --> SingleTicker ProviderStateMixin
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xff28313b),
      decoration: BoxDecoration(
          gradient: RadialGradient(radius: 1, colors: [
        Color(0xff2F6CFF),
        Color(0xff07152F),
        //0xff2E5D92
      ])),
      child: Stack(alignment: Alignment.centerLeft, children: [
        Image.asset('assets/flower1.png'),
        Container(
          // color: Colors.blue,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 0.5),
                          color: Colors.blueGrey[300],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/tuxedo.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 11.0),
                    child: Text(
                      'Aniket Raj',
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.0,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                  ),
                  child: Text(
                    'SEARCH APPS',
                    style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w800,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.5)),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: GoogleFonts.notoSans(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.grey.withOpacity(0.5),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'PINNED',
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildTime('11:25 am', 'Thu, 15 July', '21'),
                      _bulidListItem(
                        'Microsoft Store',
                        'assets/m_store2.png',
                      ),
                      _bulidListItem('Chrome', 'assets/chrome.png'),
                      _bulidListItem(
                        'Youtube',
                        'assets/youtube.png',
                      ),
                      _bulidListItem(
                        'Mail',
                        'assets/Mail.png',
                      ),
                      _bulidListItem(
                        'Camera',
                        'assets/camera.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                    color: Colors.black45,
                    child: TabBar(
                      enableFeedback: true,
                      controller: tabController,
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white.withOpacity(0.7),
                      labelStyle: GoogleFonts.notoSans(
                          fontSize: 16.0, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.notoSans(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(child: Text('RECENT')),
                        Tab(child: Text('ALL APPS')),
                        Tab(child: Text('FAVOURITES')),
                        Tab(child: Text('RECOMMENDED')),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height -
                      285.0, // increase the side of scroll
                  child: TabBarView(controller: tabController, children: [
                    RecentApps(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Expanded(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 17.0, sigmaY: 17.0),
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white30, width: 0.4),
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.blueGrey[900].withOpacity(0.1),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Colors.blueGrey[900].withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: AllApp()),
                        ),
                      )),
                    ),
                    FavouriteApp(),
                    RecommendApp()
                  ]),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  _bulidListItem(
    String appName,
    String imgPath,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 17.0, sigmaY: 17.0),
          child: Container(
            height: 175.0,
            width: 160.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30, width: 0.4),
              borderRadius: BorderRadius.circular(
                15.0,
              ),
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
                // inkwell effect will only work if it is wrapped with material widget and should be inside the container for which you want to be tapped or container content (container's child) is wrapped with inkwell
                borderRadius: BorderRadius.circular(15), //effect area
                onTap: () {
                  print('Tapped');
                },

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                        tag: appName,
                        child: Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Image.asset(imgPath,
                                  height: 50.0, width: 50.0)),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      appName,
                      style: GoogleFonts.notoSans(
                          fontSize: 17.0, color: Colors.white),
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

  _buildTime(
    String time,
    String date,
    String temp,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 17.0, sigmaY: 17.0),
          child: Container(
            height: 175.0,
            width: 160.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30, width: 0.4),
              borderRadius: BorderRadius.circular(
                15.0,
              ),
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
                // inkwell effect will only work if it is wrapped with material widget and should be inside the container for which you want to be tapped or container content (container's child) is wrapped with inkwell
                borderRadius: BorderRadius.circular(15), //effect area
                onTap: () {
                  print('Tapped');
                },

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      margin: EdgeInsets.all(5),
                      height: 35.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        date,
                        style: GoogleFonts.notoSans(
                            fontSize: 14.0, color: Colors.white),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        time,
                        style: GoogleFonts.notoSans(
                            fontSize: 25.0, color: Colors.white),
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      height: 40.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/weather.png',
                              height: 40.0, width: 40.0),
                          SizedBox(width: 5.0),
                          Text(
                            temp + " \u2103",
                            style: GoogleFonts.notoSans(
                                fontSize: 17.0, color: Colors.white),
                          ),
                        ],
                      )),
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
