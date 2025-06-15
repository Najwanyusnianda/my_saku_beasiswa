import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_saku_beasiswa/features/scholarship/application/add_form_provider.dart';
import 'package:intl/intl.dart';

class StepInfoBasic extends ConsumerWidget {
  const StepInfoBasic({super.key, required this.onNext});
  final VoidCallback onNext;   // tombol Next di wizard

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(addScholarshipFormProvider);
    final notifier = ref.read(addScholarshipFormProvider.notifier);

    final nameCtrl = TextEditingController(text: form.name);
    final provCtrl = TextEditingController(text: form.provider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormField(
            controller: nameCtrl,
            decoration: const InputDecoration(labelText: 'Nama Beasiswa'),
            onChanged: notifier.setName,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: provCtrl,
            decoration: const InputDecoration(labelText: 'Provider'),
            onChanged: notifier.setProvider,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Text(form.deadline == null
                    ? 'Pilih deadline'
                    : DateFormat('d MMM yyyy').format(form.deadline!)),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.date_range),
                label: const Text('Date'),
                onPressed: () async {
                  final now = DateTime.now();
                  final picked = await showDatePicker(
                    context: context,
                    firstDate: now,
                    lastDate: now.add(const Duration(days: 730)),
                    initialDate: form.deadline ?? now,
                  );
                  if (picked != null){
                    notifier.setDeadline(picked);
                    print('Deadline set to: ${picked.toIso8601String()}');
                  } 
                },
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: form.isStep2Valid ? onNext : null,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
