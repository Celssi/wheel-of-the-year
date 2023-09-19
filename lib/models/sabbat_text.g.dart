// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sabbat_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SabbatText _$$_SabbatTextFromJson(Map<String, dynamic> json) =>
    _$_SabbatText(
      name: json['name'] as String,
      paragraphs: (json['paragraphs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SabbatTextToJson(_$_SabbatText instance) =>
    <String, dynamic>{
      'name': instance.name,
      'paragraphs': instance.paragraphs,
    };
