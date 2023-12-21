import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {

  
  Future<void> postLogin(String email, String password) async {
    const apiUrl = 'http://restapi.adequateshop.com/api/authaccount/login';

    try {
      final Uri uri = Uri.parse(apiUrl);
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
        
            'email': email,
            'password': password,
          
        }),
      );
      if (response.statusCode == 200) {
        print('sended successfully');
      } else {
        print("failed to send data");
      }
    } catch (e) {
      print('Error $e');
    }
  }
}
