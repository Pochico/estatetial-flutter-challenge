import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:flutter/material.dart';

import 'launch.dart';

List<Widget> containers = [
  Container(
    padding: const EdgeInsets.all(24),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Launch(),
        SizedBox(
          height: 40,
        ),
        Text(
          'LAUNCH DATE',
          style: ThemeText.RED_TITLE_TEXT,
        ),
        Text('Thu Oct 17 5:30:00 2019', style: ThemeText.BLACK_NORMAL_TEXT),
        Text('LAUNCH SITE', style: ThemeText.RED_TITLE_TEXT),
        Text('Cape Canaveral Air Force Station Space Launch Complex 40',
            style: ThemeText.BLACK_NORMAL_TEXT),
        Text('COUNTDOWN', style: ThemeText.RED_TITLE_TEXT),
        Text('5 Hrs 30 mins more...', style: ThemeText.BLACK_NORMAL_TEXT)
      ],
    ),
  ),
  Container(
      child: ListView(children: [
    Launch(),
  ])),
  Container(
      child: Column(
    children: [Launch(), Launch(), Launch()],
  )),
];

void openBottomMenu(context) {
  showModalBottomSheet(
    barrierColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    context: context,
    builder: (context) {
      return DefaultTabController(
        length: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  bottom: TabBar(tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Upcoming',
                        style: ThemeText.GREY_TAB_TEXT,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Launches',
                        style: ThemeText.GREY_TAB_TEXT,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Rockets',
                        style: ThemeText.GREY_TAB_TEXT,
                      ),
                    ),
                  ]),
                ),
              ),
              body: TabBarView(children: containers),
            ),
          ),
        ),
      );
    },
    isScrollControlled: true,
  );
}
