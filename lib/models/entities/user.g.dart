// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String?,
      militaryRank: json['militaryRank'] as String?,
      civilProfession: json['civilProfession'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'militaryRank': instance.militaryRank,
      'civilProfession': instance.civilProfession,
      'interests': instance.interests,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
