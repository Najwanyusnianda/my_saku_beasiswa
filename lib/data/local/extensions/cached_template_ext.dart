// lib/data/local/extensions/cached_template_ext.dart
import 'dart:convert';
import '../../templates/models/template_model.dart';
import '../app_database.dart'; // berisi kelas CachedTemplate

extension CachedTemplateX on CachedTemplate {
  TemplateModel toModel() =>
      TemplateModel.fromJson(jsonDecode(jsonBlob) as Map<String, dynamic>);
}
