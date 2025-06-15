// lib/features/scholarship/presentation/wizard/step_template_select.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers.dart';
import '../../../../data/local/app_database.dart';
import '../../../../data/local/extensions/cached_template_ext.dart';
import 'package:my_saku_beasiswa/features/scholarship/application/add_form_provider.dart';

class StepTemplateSelect extends ConsumerWidget {
  const StepTemplateSelect({super.key, required this.onNext});
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(cachedTemplatesProvider);

    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Error: $e')),
      data: (rows) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Autocomplete<CachedTemplate>(
                optionsBuilder: (text) {
                  if (text.text.isEmpty) return const Iterable<CachedTemplate>.empty();
                  final q = text.text.toLowerCase();
                  return rows.where((e) =>
                      e.name.toLowerCase().contains(q) ||
                      e.id.toLowerCase().contains(q));
                },
                displayStringForOption: (e) => e.name,
                fieldViewBuilder: (c, ctrl, focus, _) => TextField(
                  controller: ctrl,
                  focusNode: focus,
                  decoration: const InputDecoration(
                    labelText: 'Cari template',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                onSelected: (row) {
                  // decode JSON → TemplateModel, prefill form, lanjut Step 2
                  ref
                      .read(addScholarshipFormProvider.notifier)
                      .applyTemplate(row.toModel());
                  onNext();
                },
              ),
              const SizedBox(height: 24),
              const Text('Atau tekan Lanjut untuk isi manual',
                  style: TextStyle(fontSize: 13)),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  ref.read(addScholarshipFormProvider.notifier).reset();
                  onNext();
                },
                child: const Text('Lanjut (Manual)'),
              ),
            ],
          ),
        );
      },
    );
  }
}

/* Provider stream/future CachedTemplate list */
final cachedTemplatesProvider = StreamProvider<List<CachedTemplate>>((ref) {
  final dao = ref.watch(templateDaoProvider);
  return dao.watchCachedTemplates();   // DAO method yang Anda buat
});
