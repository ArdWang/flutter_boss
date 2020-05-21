import 'dart:convert';
import 'package:meta/meta.dart';

class Job{
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String username;
  final String title;

  //构造函数
  Job({
    @required this.name,
    @required this.cname,
    @required this.size,
    @required this.salary,
    @required this.username,
    @required this.title
  });

  static List<Job> fromJson(String json){
    List<Job> _jobs = [];
    JsonDecoder decoder = new JsonDecoder();
    var mapdata = decoder.convert(json)['list'];
    mapdata.forEach((obj){
      Job jb = new Job(
          name: obj['name'],
          cname: obj['cname'],
          size: obj['size'],
          salary: obj['salary'],
          username: obj['username'],
          title: obj['title']);
      _jobs.add(jb);
    });

    return _jobs;
  }

}