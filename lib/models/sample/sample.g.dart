// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleModel _$SampleModelFromJson(Map<String, dynamic> json) => SampleModel(
      id: json['_id'] as String,
      sampleString: json['sampleString'] as String,
      sampleEnum: $enumDecode(_$SampleEnumEnumMap, json['sampleEnum']),
    );

Map<String, dynamic> _$SampleModelToJson(SampleModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sampleString': instance.sampleString,
      'sampleEnum': _$SampleEnumEnumMap[instance.sampleEnum]!,
    };

const _$SampleEnumEnumMap = {
  SampleEnum.value1: 'VALUE_1',
  SampleEnum.value2: 'VALUE_2',
};
