import 'package:estatetial_flutter_challenge/utils/colors.dart';
import 'package:estatetial_flutter_challenge/utils/mock_data.dart';
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
        Launch(index: 0),
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
    padding: const EdgeInsets.symmetric(
      horizontal: 24,
    ),
    child: ListView.builder(
      itemCount: DATA.length,
      itemBuilder: (context, index) {
        return Launch(index: index);
      },
    ),
  ),
  Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 24,
    ),
    child: ListView.builder(
      itemCount: DATA.length,
      itemBuilder: (context, index) {
        return Launch(index: index);
      },
    ),
  ),
];

void openBottomMenu(context) {
  showModalBottomSheet(
    barrierColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    context: context,
    builder: (context) {
      return Tabs();
    },
    isScrollControlled: true,
  );
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
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
                bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: GREY_COLOR,
                    labelColor: RED_COLOR,
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            const BorderSide(width: 4, color: RED_COLOR)),
                    tabs: <Widget>[
                      Tab(
                          child: Text('Upcoming',
                              style: TextStyle(fontSize: 18, height: 2))),
                      Tab(
                          child: Text('Launches',
                              style: TextStyle(fontSize: 18, height: 2))),
                      Tab(
                          child: Text('Rockets',
                              style: TextStyle(fontSize: 18, height: 2))),
                    ]),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: TabBarView(
                children: containers,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
