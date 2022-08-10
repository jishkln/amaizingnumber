// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numbermodelclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberFactModel _$NumberFactModelFromJson(Map<String, dynamic> json) =>
    NumberFactModel(
      text: json['text'] as String?,
      number: json['number'] as int?,
      fount: json['fount'] as bool?,
      trivia: json['trivia'] as String?,
    );

Map<String, dynamic> _$NumberFactModelToJson(NumberFactModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'fount': instance.fount,
      'trivia': instance.trivia,
    };
