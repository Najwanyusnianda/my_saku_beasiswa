import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/features/scholarship/application/add_form_provider.dart';

class StepRequirements extends ConsumerWidget {
  const StepRequirements({super.key, required this.onNext});
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(addScholarshipFormProvider);
    final notifier = ref.read(addScholarshipFormProvider.notifier);
    final inputCtrl = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: inputCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Tambah persyaratan',
                  ),
                  onSubmitted: (v) {
                    print('Submitted requirement: $v');
                    notifier.addRequirement(v);
                    inputCtrl.clear();
                  },
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print('Adding requirement: ${inputCtrl.text}');
                  notifier.addRequirement(inputCtrl.text);
                  inputCtrl.clear();
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ReorderableListView.builder(
              itemCount: form.requirements.length,
              onReorder: (oldIdx, newIdx) {
                final list = [...form.requirements];
                if (list.isEmpty) return; // Pastikan list tidak kosong
                if (oldIdx < 0 || oldIdx >= list.length) return; // validasi indeks lama
                if (newIdx < 0 || newIdx > list.length) return; // validasi indeks baru

                if (newIdx > oldIdx) newIdx--;
                final item = list.removeAt(oldIdx);
                list.insert(newIdx, item);
                notifier.updateRequirements(list);
              },
              itemBuilder: (c, i) => ListTile(
                key: ValueKey('req_$i'),
                title: Text(form.requirements[i]),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => notifier.removeRequirementAt(i),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: form.requirements.isNotEmpty ? onNext : null,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
