// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Chat chatFromJson(String str) => Chat.fromJson(json.decode(str));

String chatToJson(Chat data) => json.encode(data.toJson());

class Chat {
    String avathar;
    String name;
    bool isGroup;
    String updatedAt;
    String message;

    Chat({
        required this.avathar,
        required this.name,
        required this.isGroup,
        required this.updatedAt,
        required this.message,
    });

    factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        avathar: json["avathar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updatedAt: json["updatedAt"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "avathar": avathar,
        "name": name,
        "isGroup": isGroup,
        "updatedAt": updatedAt,
        "message": message,
    };
}
