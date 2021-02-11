import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:flutter/material.dart';

// TODO: Make content into variables

class Launch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {}, //Navigator.push(context, route),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
            /* decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ]),
            padding:
                const EdgeInsets.only(top: 14, left: 0, bottom: 14, right: 56),
            height: 150,
            width: double.infinity,*/

            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              './assets/images/crs.png',
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LAUNCH',
                  style: ThemeText.RED_TITLE_TEXT,
                ), // Event type
                Text('Starlink 2',
                    style: ThemeText.BLACK_NAME_TEXT), //  Ship name
                Text(
                  'CCAFS SLC 40',
                  style: ThemeText.GREY_DATA_TEXT,
                ), // Launch Site
                Text(
                  '16-10-2016',
                  style: ThemeText.GREY_DATA_TEXT_SMALL,
                ) //  date
              ],
            )
          ],
        )),
      ),
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
