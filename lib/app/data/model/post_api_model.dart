// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
    int id;
    int idUser;
    String postingGambar;
    String description;
    int isLike;
    int isSponsor;
    DateTime createdAt;
    DateTime updatedAt;
    String fotoUrl;
    User user;

    PostModel({
        required this.id,
        required this.idUser,
        required this.postingGambar,
        required this.description,
        required this.isLike,
        required this.isSponsor,
        required this.createdAt,
        required this.updatedAt,
        required this.fotoUrl,
        required this.user,
    });

    factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json["id"],
        idUser: json["id_user"],
        postingGambar: json["posting_gambar"],
        description: json["description"],
        isLike: json["is_like"],
        isSponsor: json["is_sponsor"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        fotoUrl: json["foto_url"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "posting_gambar": postingGambar,
        "description": description,
        "is_like": isLike,
        "is_sponsor": isSponsor,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "foto_url": fotoUrl,
        "user": user.toJson(),
    };
}

class User {
    int id;
    String name;
    String email;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
