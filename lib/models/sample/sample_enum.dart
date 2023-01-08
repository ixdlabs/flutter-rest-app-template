import "package:json_annotation/json_annotation.dart";

@JsonEnum(valueField: 'type')
enum SampleEnum {
  value1("VALUE_1"),
  value2("VALUE_2");

  const SampleEnum(this.type);

  final String type;

  @override
  String toString() {
    return type;
  }
}
