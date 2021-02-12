import 'package:estatetial_flutter_challenge/utils/mock_data.dart';
import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:flutter/material.dart';

class LaunchDetailScreen extends StatefulWidget {
  LaunchDetailScreen({Key key, this.index});
  final int index;

  @override
  _LaunchDetailScreenState createState() => _LaunchDetailScreenState();
}

class _LaunchDetailScreenState extends State<LaunchDetailScreen> {
  @override
  Widget build(
    BuildContext context,
  ) {
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
              padding: const EdgeInsets.symmetric(horizontal: 32),
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
            child: ListView(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    DATA[widget.index]['image'],
                    width: 120,
                  )),
                  Text('ROCKET', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['rocket'],
                      style: ThemeText.WHITE_NAME_TEXT),
                  Text('LAUNCH DATE', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['launch_date'],
                      style: ThemeText.WHITE_NORMAL_TEXT),
                  Text('LAUNCH SITE', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['launch_site'],
                      style: ThemeText.WHITE_NORMAL_TEXT),
                  Text('LAUNCH STATUS', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['launch_status'],
                      style: ThemeText.WHITE_NORMAL_TEXT),
                  Text('DETAILS', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['details'],
                      style: ThemeText.WHITE_NORMAL_TEXT),
                  Text('ROCKET SUMMARY', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['rocket_summary'],
                      style: ThemeText.WHITE_NORMAL_TEXT),
                  Text('TYPE', style: ThemeText.RED_TITLE_TEXT),
                  Text(DATA[widget.index]['type'],
                      style: ThemeText.WHITE_NORMAL_TEXT),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('FIRST STAGE', style: ThemeText.RED_TITLE_TEXT),
                          Text(DATA[widget.index]['first_stage'],
                              style: ThemeText.WHITE_NORMAL_TEXT)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SECOND STAGE', style: ThemeText.RED_TITLE_TEXT),
                          Text(DATA[widget.index]['second_stage'],
                              style: ThemeText.WHITE_NORMAL_TEXT)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('YOUTUBE', style: ThemeText.RED_TITLE_TEXT),
                          SizedBox(height: 12),
                          Container(
                            height: 35,
                            width: 112,
                            decoration: BoxDecoration(
                                color: Color(0xFFD21F06),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child:
                                  Icon(Icons.play_arrow, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('REDDIT', style: ThemeText.RED_TITLE_TEXT),
                          SizedBox(height: 12),
                          Container(
                            height: 35,
                            width: 112,
                            decoration: BoxDecoration(
                                color: Color(0xFFFF5B14),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                                child: Image.asset(
                              './assets/images/reddit.png',
                              width: 24,
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                  Text('SNEAK PEAK', style: ThemeText.RED_TITLE_TEXT),
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset('./assets/images/pic' +
                                (index + 1).toString() +
                                '.png'),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ]),
          ),
        ));
  }
}
