import 'package:estatetial_flutter_challenge/screen/launch_detail.dart';
import 'package:estatetial_flutter_challenge/utils/colors.dart';
import 'package:estatetial_flutter_challenge/utils/mock_data.dart';
import 'package:estatetial_flutter_challenge/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rocket extends StatefulWidget {
  Rocket({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _RocketState createState() => _RocketState();
}

class _RocketState extends State<Rocket> {
  @override
  Widget build(BuildContext context) {
    print(DATA[0]['status']);
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
                      'ROCKET',
                      style: ThemeText.RED_TITLE_TEXT,
                    ),
                    Text(DATA[widget.index]['rocket'],
                        style: ThemeText.BLACK_NAME_TEXT),
                    SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: DATA[widget.index]['status'] == 'active'
                            ? GREEN_BUTTON
                            : Color(0xFFFF0000),
                      ),
                      child: Text(
                        DATA[widget.index]['status'].toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
