import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cardapio {
  String title;
  String description;
  String image;
  String price;
  Cardapio({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  factory Cardapio.fromMap(Map<String, dynamic> map) {
    return Cardapio(
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cardapio.fromJson(String source) => Cardapio.fromMap(json.decode(source) as Map<String, dynamic>);
}
