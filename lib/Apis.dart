import 'dart:convert';
import 'package:flutter_application_1/models/ClassDetails.dart';
import 'package:http/http.dart' as http;

var url1 = 'https://hamon-interviewapi.herokuapp.com/classrooms/?api_key=bfCf9';
var url2 = 'https://hamon-interviewapi.herokuapp.com/subjects/?api_key=bfCf9';
var url3 = 'https://hamon-interviewapi.herokuapp.com/students/?api_key=bfCf9';

Future<void> getClassroom({required String Classroom}) async {
  final _response = await http.get(Uri.parse(url1));
  var json = jsonDecode(_response.body);
  ClassDetails.fromJson(json);
}
