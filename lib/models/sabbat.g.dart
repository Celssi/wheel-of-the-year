// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sabbat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sabbat _$$_SabbatFromJson(Map<String, dynamic> json) => _$_Sabbat(
      date: DateTime.parse(json['date'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SabbatToJson(_$_Sabbat instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'name': instance.name,
    };
