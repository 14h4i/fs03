import 'package:fs03/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_model.g.dart';

@JsonSerializable()
class Chat {
  final String? id;
  final String? text;
  final User? user;
  final int? replyCount;
  final int? unreadCount;
  final DateTime? createdAt;

  Chat({
    this.id,
    this.text,
    this.user,
    this.replyCount,
    this.unreadCount,
    this.createdAt,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}

@JsonSerializable()
class Chats {
  final List<Chat> results;
  Chats(this.results);

  factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);

  Map<String, dynamic> toJson() => _$ChatsToJson(this);
}
