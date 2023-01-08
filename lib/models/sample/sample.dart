import 'package:equatable/equatable.dart';
import 'package:flutter_rest_app_template/models/sample/sample_enum.dart';
import "package:json_annotation/json_annotation.dart";

part "sample.g.dart";


@JsonSerializable()
class SampleModel extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String sampleString;
  final SampleEnum sampleEnum;

  const SampleModel({
    required this.id,
    required this.sampleString,
    required this.sampleEnum,
  });

  factory SampleModel.fromJson(Map<String, Object?> json) =>
      _$SampleModelFromJson(json);

  Map<String, Object?> toJson() => _$SampleModelToJson(this);

  @override
  String toString() {
    return sampleString;
  }

  @override
  List<Object?> get props => [id];
}
