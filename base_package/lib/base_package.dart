library base_package;

import 'package:json_annotation/json_annotation.dart';

export 'package:json_annotation/json_annotation.dart';

part 'base_package.g.dart';

@JsonSerializable()
class TestJson {
  const TestJson({required this.testField});

  factory TestJson.fromJson(Map<String, dynamic> json) =>
      _$TestJsonFromJson(json);

  @JsonKey(defaultValue: 'test')
  final String testField;

  Map<String, dynamic> toJson() => _$TestJsonToJson(this);
}
