import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:notifier/components/style_sheet/global.dart';
import 'package:notifier/reminder/widgets/custom_card.dart';
import 'package:notifier/widgets/view_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Statistics19 extends StatefulWidget {
  @override
  _Statistics19State createState() => _Statistics19State();
}

class _Statistics19State extends State<Statistics19> {
  var getURL = "https://who-covid-19-data.p.rapidapi.com/api/data";
  var bdStats;
  String country;
  int confirmed;
  int deaths;
  int recovered;

  Future<bool> getBDstats()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    country = prefs.getString('country');
    deaths = prefs.getInt('deaths');
    confirmed = prefs.getInt('confirmed');
    recovered = prefs.getInt('recovered');
    print(country);
    print(deaths);
    return true;
  }

  @override
  void initState() {
    super.initState();
    getBDstats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          ViewTitle(
            title: "Statistics",
          ),
          FutureBuilder(
             future: getBDstats(),
            initialData: null,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Center(child: CircularProgressIndicator());
              } else {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      CustomCard(
                        title: "Country: $country",
                      ),
                      SizedBox(height: 15),
                      CustomCard(
                        title: "Total Inffected: $confirmed",
                      ),
                      SizedBox(height: 15),
                      CustomCard(
                        title: "Recovered: $recovered",
                      ),
                      SizedBox(height: 15),
                      CustomCard(
                        title: "Death: $deaths",
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
