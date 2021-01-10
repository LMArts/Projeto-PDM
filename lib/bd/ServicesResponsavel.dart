import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Responsavel.dart';

class ServicesResponsavel {
  static const ROOT = '';
  static const _GET_ALL = 'GET_ALL';

   static Future<List<Responsavel>> getResponsavel() async {
    try {

      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL;
      final response = await http.post(ROOT, body: map);
      print('getResponsavel table response :: ${response.body}');
      
      if (response.statusCode == 200) {
        List<Responsavel> list = responseHttp(response.body);
        return list;
      } else {
        return List<Responsavel>();
      }

    } catch (e) {
      return List<Responsavel>();
    }

  }

  static List<Responsavel> responseHttp(String response) {
    final parsed = json.decode(response).cast<Map<String, dynamic>>();
    return parsed
        .map<Responsavel>((json) => Responsavel.fromJson(json))
        .toList();
  }


}