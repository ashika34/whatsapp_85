// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Call callFromJson(String str) => Call.fromJson(json.decode(str));

String callToJson(Call data) => json.encode(data.toJson());

class Call {
    String avathar;
    String name;
    bool isGroup;
    String updatedAt;
    String iscall;

    Call({
        required this.avathar,
        required this.name,
        required this.isGroup,
        required this.updatedAt,
        required this.iscall,
    });

    factory Call.fromJson(Map<String, dynamic> json) => Call(
        avathar: json["avathar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updatedAt: json["updatedAt"],
        iscall: json["iscall"],
    );

    Map<String, dynamic> toJson() => {
        "avathar": avathar,
        "name": name,
        "isGroup": isGroup,
        "updatedAt": updatedAt,
        "iscall": iscall,
    };
}
