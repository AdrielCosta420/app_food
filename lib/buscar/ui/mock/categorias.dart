import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Categorias {
  String title;
  String image;
  Categorias({
    required this.title,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
    };
  }

  factory Categorias.fromMap(Map<String, dynamic> map) {
    return Categorias(
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categorias.fromJson(String source) => Categorias.fromMap(json.decode(source) as Map<String, dynamic>);
}
