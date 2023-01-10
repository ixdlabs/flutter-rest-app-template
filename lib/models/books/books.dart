import 'package:equatable/equatable.dart';
import "package:json_annotation/json_annotation.dart";

part "books.g.dart";


@JsonSerializable()
class BooksModel extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String title;
  final String author;
  final String coverImage;

  const BooksModel({
    required this.id,
    required this.title,
    required this.author,
    required this.coverImage,
  });

  factory BooksModel.fromJson(Map<String, Object?> json) =>
      _$BooksModelFromJson(json);

  Map<String, Object?> toJson() => _$BooksModelToJson(this);

  @override
  String toString() {
    return title;
  }

  @override
  List<Object?> get props => [id];
}
