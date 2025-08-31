import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_palette.freezed.dart';
part 'generated_palette.g.dart';

@freezed
abstract class GeneratedPalette with _$GeneratedPalette {
  const factory GeneratedPalette({
    @JsonKey(name: 'result') List<List<int>>? result,
  }) = _GeneratedPalette;

  factory GeneratedPalette.fromJson(Map<String, Object?> json) =>
      _$GeneratedPaletteFromJson(json);
}
