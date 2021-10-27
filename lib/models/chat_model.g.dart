// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      id: json['id'] as String?,
      text: json['text'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      replyCount: json['replyCount'] as int?,
      unreadCount: json['unreadCount'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'user': instance.user,
      'replyCount': instance.replyCount,
      'unreadCount': instance.unreadCount,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

Chats _$ChatsFromJson(Map<String, dynamic> json) => Chats(
      (json['results'] as List<dynamic>)
          .map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatsToJson(Chats instance) => <String, dynamic>{
      'results': instance.results,
    };
