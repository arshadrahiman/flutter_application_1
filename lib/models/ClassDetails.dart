// To parse this JSON data, do
//
//     final classDetails = classDetailsFromJson(jsonString);

import 'dart:convert';

ClassDetails classDetailsFromJson(String str) => ClassDetails.fromJson(json.decode(str));


class ClassDetails {
    ClassDetails({
        this.classrooms,
    });

    List<Classroom>? classrooms;

    factory ClassDetails.fromJson(Map<String, dynamic> json) => ClassDetails(
        classrooms: List<Classroom>.from(json["classrooms"].map((x) => Classroom.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "classrooms": List<dynamic>.from(classrooms!.map((x) => x.toJson())),
    };
}

class Classroom {
    Classroom({
        this.id,
        this.layout,
        this.name,
        this.size,
    });

    int? id;
    String? layout;
    String? name;
    int? size;

    factory Classroom.fromJson(Map<String, dynamic> json) => Classroom(
        id: json["id"],
        layout: json["layout"],
        name: json["name"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "layout": layout,
        "name": name,
        "size": size,
    };
}
