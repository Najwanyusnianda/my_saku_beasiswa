import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:drift/drift.dart';
import '../local/app_database.dart';
import 'models/template_model.dart';

class TemplateLoader {
  static const _assetDir = 'assets/templates/';

  /// Parse semua file JSON di assets/templates
  static Future<List<TemplateModel>> loadAll() async {
    final manifest = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> map = jsonDecode(manifest);

    final paths = map.keys
        .where((p) => p.startsWith(_assetDir) && p.endsWith('.json'));

    final futures = paths.map((path) async {
      final str = await rootBundle.loadString(path);
      return TemplateModel.fromJson(jsonDecode(str));
    });

    return Future.wait(futures);
  }

  /// Konversi ke Companion agar bisa di-upsert ke Drift
  static List<CachedTemplatesCompanion> toCompanion(
      List<TemplateModel> list) {
    return list
        .map((t) => CachedTemplatesCompanion.insert(
              id: t.templateId,
              name: t.scholarshipName,
              provider: t.provider,
              version: Value(t.version),
              jsonBlob: jsonEncode(t.toJson()),
            ))
        .toList();
  }
}
