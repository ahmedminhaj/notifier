
import 'package:flutter/material.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/carousel/carousel_swipe_fixed_details.dart';
import 'package:notifier/components/carousel/carousel_swiping_details.dart';

import 'tab_content/body_content.dart';
import 'tab_content/slider_content.dart';
import 'tab_indicator/custom_tab_indicator.dart';
import 'tab_indicator/dot_tab_indicator.dart';

class TabPointer extends StatefulWidget {
  @override
  _TabPointerState createState() => _TabPointerState();
}

class _TabPointerState extends State<TabPointer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: TitleText(
            title: "Custom Tab",
          ),
          backgroundColor: Colors.black,
          bottom: TabBar(
            isScrollable: true,
            indicator: CustomTabIndicator(),
            //indicator: DotTabIndicator(color: ThemeColors.grey1, radius: 3),
            tabs: <Widget>[
              Tab(
                child: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.videocam,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.cake,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.notifications,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.library_music,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.movie,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.network_wifi,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            DetailsContent(),
            SliderContent(),
            CarouselSwiping(),
            CarouselSwipeFixedContainer(),
            Center( 
              child: Text("Tab 5"),
            ),
            Center(
              child: Text("Tab 6"),
            ),
            Center(
              child: Text("Tab 6"),
            ),
          ],
        ),
      ),
    );
  }
}
