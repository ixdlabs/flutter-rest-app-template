// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksModel _$BooksModelFromJson(Map<String, dynamic> json) => BooksModel(
      id: json['id'] as String,
      title: json['title'] as String,
      author:
          (json['author'] as List<dynamic>).map((e) => e as String).toList(),
      coverImage: json['coverImage'] as String,
    );

Map<String, dynamic> _$BooksModelToJson(BooksModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'coverImage': instance.coverImage,
    };
