import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum CallStatus { ringing, active, rejected, missed, ended }
