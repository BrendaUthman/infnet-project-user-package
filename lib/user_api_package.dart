library user_api_package;

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:user_api_package/user_model.dart';

class ApiService {
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/users'));

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
