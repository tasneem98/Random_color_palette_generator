// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_palette.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneratedPalette _$GeneratedPaletteFromJson(Map<String, dynamic> json) =>
    _GeneratedPalette(
      result: (json['result'] as List<dynamic>?)
          ?.map(
            (e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
          )
          .toList(),
    );

Map<String, dynamic> _$GeneratedPaletteToJson(_GeneratedPalette instance) =>
    <String, dynamic>{'result': instance.result};
