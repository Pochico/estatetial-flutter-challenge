import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class ThemeText {
  static const TextStyle RED_TITLE_TEXT =
      TextStyle(color: Color(0xFFFF003D), fontSize: 10, height: 2.5);

  static const TextStyle BLACK_NAME_TEXT = TextStyle(
      color: Color(0xFF000000),
      fontSize: 18,
      fontWeight: FontWeight.bold,
      height: 2);

  static const TextStyle WHITE_NAME_TEXT = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: 2,
  );

  static const TextStyle BLACK_NORMAL_TEXT = TextStyle(
    color: Color(0xFF000000),
    fontSize: 16,
    height: 2,
  );

  static const TextStyle WHITE_NORMAL_TEXT = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 16,
    height: 2,
  );

  static const TextStyle GREY_DATA_TEXT = TextStyle(
    color: Color(0xFF707070),
    fontSize: 14,
    height: 2,
  );

  static const TextStyle GREY_TAB_TEXT = TextStyle(
    color: Color(0xFF707070),
    fontSize: 18,
    height: 2,
  );

  static const TextStyle RED_TAB_TEXT = TextStyle(
    color: Color(0xFFFF003D),
    fontSize: 18,
    height: 2,
  );

  static const TextStyle GREY_DATA_TEXT_SMALL = TextStyle(
    color: Color(0xFF707070),
    fontSize: 12,
  );
}
