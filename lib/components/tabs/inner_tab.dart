
import 'package:flutter/material.dart';
import 'package:notifier/components/cards/basic_plain_card.dart';
import 'package:notifier/components/style_sheet/color_file.dart';

import 'tab_indicator/custom_tab_indicator.dart';

class InnerTab extends StatefulWidget {
  @override
  _InnerTabState createState() => _InnerTabState();
}

class _InnerTabState extends State<InnerTab>
    with SingleTickerProviderStateMixin {
  TabController _innerTabController;
  @override
  void initState() {
    super.initState();
    _innerTabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _innerTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _innerTabController,
          isScrollable: true,
          indicator: CustomTabIndicator(),
          tabs: [
            Tab(
              child: Image.asset("assets/a.png"),
            ),
            Tab(
              child: Image.asset("assets/ir.png"),
            ),
            Tab(
              child: Image.asset("assets/b.png"),
            ),
            Tab(
              child: Image.asset("assets/f.png"),
            ),
            Tab(
              child: Image.asset("assets/s.png"),
            ),
          ],
        ),
        Container(
          color: ThemeColors.teal2,
          height: MediaQuery.of(context).size.height/3.5,
          child: TabBarView(
            controller: _innerTabController,
            children: <Widget>[
              BasicPlainCard(
                title: "Avenger",
                subtitle: "2019",
              ),
              BasicPlainCard(
                title: "Ironman",
                subtitle: "2017",
              ),
              BasicPlainCard(
                title: "Batman",
                subtitle: "2015",
              ),
              BasicPlainCard(
                title: "Flash",
                subtitle: "2013",
              ),
              BasicPlainCard(
                title: "Superman",
                subtitle: "2018",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
