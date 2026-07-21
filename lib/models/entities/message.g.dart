// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
      id: (json['id'] as num).toInt(),
      conversationId: (json['conversationId'] as num).toInt(),
      sederId: (json['sederId'] as num).toInt(),
      message: json['message'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
      'id': instance.id,
      'conversationId': instance.conversationId,
      'sederId': instance.sederId,
      'message': instance.message,
      'createdAt': instance.createdAt,
    };
