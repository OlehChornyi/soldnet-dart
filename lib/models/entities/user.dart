import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String? name,
    required String? militaryRank,
    required String? civilProfession,
    required List<String>? interests,
    required String? createdAt,
    required String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
