
import 'dart:convert';

StoryModel storyModelFromJson(String str) => StoryModel.fromJson(json.decode(str));

String storyModelToJson(StoryModel data) => json.encode(data.toJson());

class StoryModel {
    int id;
    String name;
    String email;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;
    List<Story> story;

    StoryModel({
        required this.id,
        required this.name,
        required this.email,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.story,
    });

    factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        story: List<Story>.from(json["story"].map((x) => Story.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "story": List<dynamic>.from(story.map((x) => x.toJson())),
    };
}

class Story {
    int id;
    int idUser;
    String fotoStory;
    dynamic text;
    String caption;
    DateTime createdAt;
    DateTime updatedAt;
    String fotoUrl;

    Story({
        required this.id,
        required this.idUser,
        required this.fotoStory,
        required this.text,
        required this.caption,
        required this.createdAt,
        required this.updatedAt,
        required this.fotoUrl,
    });

    factory Story.fromJson(Map<String, dynamic> json) => Story(
        id: json["id"],
        idUser: json["id_user"],
        fotoStory: json["foto_story"],
        text: json["text"],
        caption: json["caption"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        fotoUrl: json["foto_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_user": idUser,
        "foto_story": fotoStory,
        "text": text,
        "caption": caption,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "foto_url": fotoUrl,
    };
}
