import 'package:flutter/cupertino.dart';
import 'package:fs03/pages/all_widgets_page.dart';
import 'package:fs03/pages/home_page.dart';
import 'package:fs03/pages/session_01_page.dart';
import 'package:fs03/pages/session_02_page.dart';
import 'package:fs03/pages/session_03_page.dart';
import 'package:fs03/pages/ui_challenge_01_page.dart';
import 'package:fs03/pages/ui_challenge_02_page.dart';
import 'package:fs03/pages/ui_challenge_02a_page.dart';
import 'package:fs03/pages/ui_challenge_02b_page.dart';
import 'package:fs03/pages/ui_challenge_02c_page.dart';
import 'package:fs03/pages/ui_challenge_02d_page.dart';

class AppRoutes {
  final BuildContext context;
  AppRoutes(this.context);
  var routes = {
    homePage: (context) => const HomePage(),
    session01: (context) => const Session01Page(),
    session02: (context) => const Session02Page(),
    session03: (context) => const Session03Page(),
    allWidgets: (context) => const AllWidgetsPage(),
    ui1: (context) => const UIChallenge01Page(),
    ui2: (context) => const UIChallenge02Page(),
    ui2a: (context) => const UIChallenge02aPage(),
    ui2b: (context) => const UIChallenge02bPage(),
    ui2c: (context) => const UIChallenge02cPage(),
    ui2d: (context) => const UIChallenge02dPage(),
  };

  static const homePage = "/homePage";

  static const session01 = "/session01";
  static const ui1 = "/ui1";
  static const ui2 = "/ui2";
  static const ui2a = "/ui2a";
  static const ui2b = "/ui2b";
  static const ui2c = "/ui2c";
  static const ui2d = "/ui2d";

  static const session02 = "/session02";

  static const session03 = "/session03";

  static const allWidgets = "/allWidgets";
}
