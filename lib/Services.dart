import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Responsavel.dart';

class Services {
  static const ROOT = 'http://localhost/pdm/pdm.php';
  static const _CREATE_TABLE_ACTION = 'CREATE_TABLE_RESP';
  static const _GET_ALL_ACTION = 'GET_ALL_RESP';
  static const _ADD_RESP_ACTION = 'ADD_RESP';
  static const _UPDATE_RESP_ACTION = 'UPDATE_RESP';
  static const _DELETE_RESP_ACTION = 'DELETE_RESP';

  // Criar tabela

  static Future<String> createTable() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _CREATE_TABLE_ACTION;
      final response = await http.post(ROOT, body: map);
      print('Create table response: ${response.body}');
      if (200 == response.statusCode){
        return response.body;
      } else {
        return "erro";
      }
    } catch (e) {
      return "erro";
    }
  }

  // Listar registros

  static Future<List<Responsavel>> getResponsavel() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _GET_ALL_ACTION;
      final response = await http.post(ROOT, body: map);
      print('getResponsavel table response: ${response.body}');
      if (200 == response.statusCode) {
        List<Responsavel> list = parseResponse(response.body);
        return list;
      } else {
        return List<Responsavel>();
      }
    } catch (e) {
      return List<Responsavel>();
    }
  }

  static List<Responsavel> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<Responsavel>((json) => Responsavel.fromJson(json))
        .toList();
  }

  // Add registros

  static Future<String> addResponsavel(
      String nome,
      String email,
      String senha,
      String telefone,
      String estado,
      String cidade,
      String bairro,
      String rua,
      String numero) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _ADD_RESP_ACTION;
      map['nome'] = nome;
      map['email'] = email;
      map['senha'] = senha;
      map['telefone'] = telefone;
      map['estado'] = estado;
      map['cidade'] = cidade;
      map['bairro'] = bairro;
      map['rua'] = rua;
      map['numero'] = numero;
      final response = await http.post(ROOT, body: map);
      print('addResponsavel table response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "erro";
      }
    } catch (e) {
      return "erro";
    }
  }

  // Update

  static Future<String> updateResponsavel(
      int respId,
      String nome,
      String email,
      String senha,
      String telefone,
      String estado,
      String cidade,
      String bairro,
      String rua,
      String numero) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _UPDATE_RESP_ACTION;
      map['resp_id'] = respId;
      map['nome'] = nome;
      map['email'] = email;
      map['senha'] = senha;
      map['telefone'] = telefone;
      map['estado'] = estado;
      map['cidade'] = cidade;
      map['bairro'] = bairro;
      map['rua'] = rua;
      map['numero'] = numero;
      final response = await http.post(ROOT, body: map);
      print('updateResponsavel table response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "erro";
      }
    } catch (e) {
      return "erro";
    }
  }

  // Delete

  static Future<String> deleteResponsavel(int respId) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = _DELETE_RESP_ACTION;
      map['resp_id'] = respId;
      final response = await http.post(ROOT, body: map);
      print('deleteResponsavel table response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "erro";
      }
    } catch (e) {
      return "erro";
    }
  }

}
