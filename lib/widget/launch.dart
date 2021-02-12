import 'package:estatetial_flutter_challenge/screen/launch_detail.dart';
import 'package:estatetial_flutter_challenge/utils/mock_data.dart';
import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:flutter/material.dart';

// TODO: Make content into variables

class Launch extends StatefulWidget {
  Launch({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  LaunchDetailScreen(index: widget.index))),
      child: Card(
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 12, right: 54),
                  child: Image.asset(
                    DATA[widget.index]['image'],
                    width: 100,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LAUNCH',
                      style: ThemeText.RED_TITLE_TEXT,
                    ),
                    Text(DATA[widget.index]['rocket'],
                        style: ThemeText.BLACK_NAME_TEXT),
                    Text(
                      DATA[widget.index]['launch_site'],
                      style: ThemeText.GREY_DATA_TEXT,
                    ),
                    Text(
                      DATA[widget.index]['launch_date'],
                      style: ThemeText.GREY_DATA_TEXT_SMALL,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

/* 
TODO improve Method that gets initials from launch site name

String initialsLaunchSite;
extension getInitials on String {
  String get getInitialsLaunchSite =>
      this.split(" ").map((str) => str.substring(0, 1)).join();
}

This goes inside TEXT()
initialsLaunchSite =
                'Cape Canaveral Air Force Station Space Launch Complex 40'
              
                    .getInitialsLaunchSite
                    */
