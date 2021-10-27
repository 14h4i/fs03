import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:fs03/models/chat_model.dart';
import 'package:fs03/models/user_model.dart';

class GenerateModel {
  static Future jsonToMap(String pathJson) async =>
      jsonDecode(await rootBundle.loadString(pathJson));

  static Future<Users> jsonToUsers(String pathJson) async =>
      Users.fromJson(await jsonToMap(pathJson));

  static Future<Chats> jsonToChats(String pathJson) async =>
      Chats.fromJson(await jsonToMap(pathJson));
}
