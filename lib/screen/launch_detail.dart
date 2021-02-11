import 'package:estatetial_flutter_challenge/utils/mock_data.dart';
import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:flutter/material.dart';

class LaunchDetailScreen extends StatefulWidget {
  @override
  _LaunchDetailScreenState createState() => _LaunchDetailScreenState();
}

class _LaunchDetailScreenState extends State<LaunchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    print(DATA['rocket']);

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.share,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('./assets/images/crs.png')),
                Text('ROCKET', style: ThemeText.RED_TITLE_TEXT),
                Text(DATA['rocket'], style: ThemeText.WHITE_NAME_TEXT),
                /*
                Text('Falcon 1', style: ThemeText.WHITE_NAME_TEXT),
                Text('LAUNCH DATE', style: ThemeText.RED_TITLE_TEXT),
                Text('01-03-2019', style: ThemeText.WHITE_NORMAL_TEXT),
                Text('LAUNCH SITE', style: ThemeText.RED_TITLE_TEXT),
                Text('CCAFS SLC 40', style: ThemeText.WHITE_NORMAL_TEXT),
                Text('LAUNCH STATUS', style: ThemeText.RED_TITLE_TEXT),
                Text('Success', style: ThemeText.WHITE_NORMAL_TEXT),
                Text('DETAILS', style: ThemeText.RED_TITLE_TEXT),
                Text('Last launch of the original Falcon 9 v1.0 launch vehicle',
                    style: ThemeText.WHITE_NORMAL_TEXT),
                Text('ROCKET SUMMARY', style: ThemeText.RED_TITLE_TEXT),
                Text('Falcon 9', style: ThemeText.WHITE_NORMAL_TEXT),
                Text('TYPE', style: ThemeText.RED_TITLE_TEXT),
                Text('v1.0', style: ThemeText.WHITE_NORMAL_TEXT),*/
              ],
            ),
          ),
        ));
  }
}
