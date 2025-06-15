import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/core/providers.dart';
import '../../data/templates/template_loader.dart';


final templateSyncProvider = FutureProvider<void>((ref) async {
  final dao = ref.read(templateDaoProvider);

  final templates = await TemplateLoader.loadAll();
  final toUpsert = TemplateLoader.toCompanion(templates);

  await dao.upsert(toUpsert);
});
