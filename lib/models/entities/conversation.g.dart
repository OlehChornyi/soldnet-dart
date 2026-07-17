// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Conversation _$ConversationFromJson(Map<String, dynamic> json) =>
    _Conversation(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      isGroup: json['isGroup'] as bool,
      title: json['title'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ConversationToJson(_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'isGroup': instance.isGroup,
      'title': instance.title,
      'members': instance.members,
      'createdAt': instance.createdAt,
    };
