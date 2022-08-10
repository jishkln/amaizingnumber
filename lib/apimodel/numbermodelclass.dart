import 'package:json_annotation/json_annotation.dart';

part 'numbermodelclass.g.dart';

@JsonSerializable()
class NumberFactModel {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'fount')
  bool? fount;
  @JsonKey(name: 'trivia')
  String? trivia;

  NumberFactModel({this.text, this.number, this.fount, this.trivia});

  factory NumberFactModel.fromJson(Map<String, dynamic> json) {
    return _$NumberFactModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$NumberFactModelToJson(this);
}
