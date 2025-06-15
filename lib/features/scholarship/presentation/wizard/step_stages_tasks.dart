import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/features/scholarship/application/add_form_provider.dart';
import 'package:my_saku_beasiswa/core/providers.dart';
import 'package:my_saku_beasiswa/features/scholarship/application/add_form_model.dart';

class StepStagesTasks extends ConsumerWidget {
  const StepStagesTasks({super.key, required this.onSave});
  final VoidCallback onSave; // panggil _save()

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(addScholarshipFormProvider);
    final notifier = ref.read(addScholarshipFormProvider.notifier);
    final stageNameCtrl = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: stageNameCtrl,
                  decoration: const InputDecoration(labelText: 'Nama Tahap'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  if (stageNameCtrl.text.trim().isEmpty) return;
                  notifier.addStage(stageNameCtrl.text.trim());
                  stageNameCtrl.clear();
                },
              )
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: form.stages.length,
              itemBuilder: (c, i) {
                final stage = form.stages[i];
                return ExpansionTile(
                  title: Text(stage.name),
                  children: [
                    ...stage.tasks.map(
                      (t) => ListTile(
                        title: Text('${t.title}  ( ${t.relativeDays} hari )'),
                      ),
                    ),
                    ListTile(
                      title: const Text('Tambah Tugas'),
                      leading: const Icon(Icons.add),
                      onTap: () async {
                        final result = await _showTaskDialog(context);
                        if (result != null) notifier.addTask(i, result);
                      },
                    )
                  ],
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: form.stages.isNotEmpty ? onSave : null,
            child: const Text('Simpan'),
          )
        ],
      ),
    );
  }

  Future<TaskDraft?> _showTaskDialog(BuildContext context) async {
    final titleCtrl = TextEditingController();
    final daysCtrl = TextEditingController(text: '-30');
    return showDialog<TaskDraft>(
      context: context,
      builder: (c) => AlertDialog(
        title: const Text('Tambah Tugas'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: titleCtrl, decoration: const InputDecoration(labelText: 'Nama tugas')),
            TextField(controller: daysCtrl, decoration: const InputDecoration(labelText: 'Relatif hari')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(c), child: const Text('Batal')),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                c,
                TaskDraft(
                  title: titleCtrl.text.trim(),
                  relativeDays: int.tryParse(daysCtrl.text) ?? -30,
                ),
              );
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
