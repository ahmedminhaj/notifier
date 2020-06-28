import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notifier/widgets/view_title.dart';

import 'alarm_view.dart';
import 'local_notification_helper.dart';
import 'widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeOfDay currentTime = TimeOfDay.now();
  TimeOfDay reminderTime;
  bool reminderOn = false;
  bool reminderTrigger = false;
  AudioPlayer audioPlayer;
  Duration nextReminder = Duration(minutes: 1);

  final notification = FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();

    final settingsAndroid = AndroidInitializationSettings("app_icon");
    final settingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) =>
            onSelectNotification(payload));

    notification.initialize(
        InitializationSettings(settingsAndroid, settingsIOS),
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async {
    await Navigator.of(context).pushNamed('/alarm');
  }

  startReminder(Duration nextReminder) {
    Future.delayed(nextReminder, () {
      print("wash ur hand for 20Seconds");
      
      setState(() {
        reminderTrigger = true;
      });
      showSoundNotification(
        notification,
        title: "Reminder",
        body: "Wash hand",
      );
      loadMusic();
    });
  }

   reminderAfter30min() {
    setState(() {
      nextReminder = Duration(minutes: 3);
      reminderTrigger = false;
      reminderTime = TimeOfDay.fromDateTime(
                                    DateTime.now().add(nextReminder));
    });
    print("next reminder set after $nextReminder");
    startReminder(nextReminder);
  }

  reminderAfterSleep() {
    setState(() {
      nextReminder = Duration(minutes: 5);
      reminderTrigger = false;
      reminderTime = TimeOfDay.fromDateTime(
                                    DateTime.now().add(nextReminder));
    });
    print("next reminder set after $nextReminder");
    startReminder(nextReminder);
  }

  @override
  void dispose() {
    audioPlayer = null;
    super.dispose();
  }

  Future loadMusic() async {
    audioPlayer = await AudioCache().play("alarm/alarm.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return (reminderTrigger == true)
         ? AlarmView(
           button1Title: "Remind me after 30mins",
           button1Onpressed: reminderAfter30min,
           button2Title: "Remind me after sleep",
           button2Onpressed: reminderAfterSleep,
         )
        : Scaffold(
            
            body: Column(
              children: <Widget>[
                ViewTitle(title: "Set Reminder",),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.grey[600], blurRadius: 2.0),
                      ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomCard(title: "Wash Your Hand Frequently",),
                        SizedBox(height: 5),
                        CustomCard(title: "Cover Your face Properly",),
                        SizedBox(height: 5),
                        CustomCard(title: "Don't Touch Your Face",),
                        SizedBox(height: 20),
                        (reminderOn == false)
                            ? RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    reminderOn = true;
                                    reminderTime = TimeOfDay.fromDateTime(
                                        DateTime.now().add(nextReminder));
                                    print(reminderTime.format(context));
                                    startReminder(nextReminder);
                                  });
                                },
                                color: Colors.black,
                                child: Text(
                                  "Set reminder",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[600], blurRadius: 2.0),
                                    ]),
                                child: Text(
                                  "Reminder set for ${reminderTime.format(context)}",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
