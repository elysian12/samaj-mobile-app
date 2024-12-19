// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Occupation {
  String id;
  final String occupation;
  final bool favourite;

  Occupation({
    required this.id,
    required this.occupation,
    this.favourite = false,
  });

  Occupation copyWith({
    String? id,
    String? occupation,
    bool? favourite,
  }) {
    return Occupation(
      id: id ?? this.id,
      occupation: occupation ?? this.occupation,
      favourite: favourite ?? this.favourite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'occupation': occupation,
      'favourite': favourite,
    };
  }

  factory Occupation.fromMap(Map<String, dynamic> map) {
    return Occupation(
      id: map['id'] as String,
      occupation: map['occupation'] as String,
      favourite: map['favourite'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Occupation.fromJson(String source) => Occupation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Occupation(id: $id, occupation: $occupation, favourite: $favourite)';

  @override
  bool operator ==(covariant Occupation other) {
    if (identical(this, other)) return true;

    return other.id == id && other.occupation == occupation && other.favourite == favourite;
  }

  @override
  int get hashCode => id.hashCode ^ occupation.hashCode ^ favourite.hashCode;
}
