// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => BooksModel(
      title: json['_id'] as String,
      author:
          (json['author'] as List<dynamic>).map((e) => e as String).toList(),
      coverImage: json['coverImage'] as String,
    );

Map<String, dynamic> _$BooksModelToJson(BooksModel instance) =>
    <String, dynamic>{
      '_id': instance.title,
      'author': instance.author,
      'coverImage': instance.coverImage,
    };
