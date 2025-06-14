import 'dart:convert';
import 'package:flutter/services.dart';

class JsonTemplateLoader {
  Future<Map<String, dynamic>> loadTemplate(String fileName) async {
    final jsonString = await rootBundle.loadString('assets/templates/$fileName');
    return jsonDecode(jsonString);
  }
}