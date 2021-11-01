///
/// [Author] Alex (https://github.com/AlexV525)
/// [Date] 2021/11/1 09:59
///
import 'package:base_package/base_package.dart';

part 'model.g.dart';

@JsonSerializable()
class TestJsonA extends TestJson {
  TestJsonA({required this.testFieldA}) : super(testField: 'testA');

  factory TestJsonA.fromJson(Map<String, dynamic> json) =>
      _$TestJsonAFromJson(json);

  @JsonKey(defaultValue: 'testFieldA')
  final String testFieldA;

  @override
  Map<String, dynamic> toJson() => _$TestJsonAToJson(this);
}
