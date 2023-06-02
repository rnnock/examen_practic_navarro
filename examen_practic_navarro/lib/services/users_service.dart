import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/models.dart';
import 'package:http/http.dart' as http;

class UsersService extends ChangeNotifier {
  final String _baseUrl =
      'practica-examen-8d283-default-rtdb.europe-west1.firebasedatabase.app';
  final List<User> users = [];
  bool isLoading = true;

  UsersService() {
    this.loadUsers();
  }
  Future loadUsers() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'users.json');
    final resp = await http.get(url);

    final Map<String, dynamic> usersMap = json.decode(resp.body);
    usersMap.forEach((key, value) {
      final tempUser = User.fromMap(value);
      tempUser.id = key;
      users.add(tempUser);
    });
    isLoading = false;
    notifyListeners();
  }
}
