import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:notifier/components/carousel/carousel_slider.dart';
import 'package:notifier/components/style_sheet/global.dart';
import 'package:notifier/widgets/option_view.dart';
import 'package:notifier/widgets/view_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List imageList = [
    "assets/image/c4.jpg",
    "assets/image/c1.png",
    "assets/image/c2.png",
    "assets/image/c3.png"
  ];

  var getURL = "https://who-covid-19-data.p.rapidapi.com/api/data";
  var bdStats;

  static var params = {"country": "Bangladesh"};

  static Uri uri = Uri.parse(
      "https://covid-19-coronavirus-statistics.p.rapidapi.com/v1/stats");
  Uri newURI = uri.replace(queryParameters: params);

  Future<void> getCovidDataBD() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      http.Response response = await http.get(
        newURI,
        headers: {
          "x-rapidapi-host": "covid-19-coronavirus-statistics.p.rapidapi.com",
          "x-rapidapi-key": "143105e18fmshe3171b0aee5cf1ep124ebfjsn122f95469d39"
        },
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        print(responseData);
        var data = responseData['data'];
        var covid19Stats = data['covid19Stats'];
        bdStats = covid19Stats[0];

        print(data);
        print(bdStats);
        print(bdStats['country']);
        print(bdStats['deaths']);
        prefs.setString('country', bdStats['country']);
        prefs.setInt('confirmed', bdStats['confirmed']);
        prefs.setInt('deaths', bdStats['deaths']);
        prefs.setInt('recovered', bdStats['recovered']);
        
      } else {
        print("data didn't find");
        var responseData = jsonDecode(response.body);
        print(responseData);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCovidDataBD();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ViewTitle(
                  title: "Stay home, Stay safe",
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child: CustomCarousel(
                    carouselList: imageList,
                  ),
                ),
                OptionView(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
