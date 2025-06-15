// lib/features/scholarship/application/add_form_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/templates/models/template_model.dart';
import 'add_form_model.dart';

final addScholarshipFormProvider =
    StateNotifierProvider<AddScholarshipFormNotifier, AddScholarshipForm>(
  (ref) => AddScholarshipFormNotifier(),
);

class AddScholarshipFormNotifier extends StateNotifier<AddScholarshipForm> {
  AddScholarshipFormNotifier() : super(AddScholarshipForm());

  void reset() => state = AddScholarshipForm();

  /// Prefill dari TemplateModel (setelah decode)
  void applyTemplate(TemplateModel t) {
    state = state.copyWith(
      templateId: t.templateId,
      name: t.scholarshipName,
      provider: t.provider,
    );
  }

  void setName(String v) => state = state.copyWith(name: v);
  void setProvider(String v) => state = state.copyWith(provider: v);
  void setDeadline(DateTime d) => state = state.copyWith(deadline: d);

 //requirements
  void updateRequirements(List<String> newRequirements) {
    state = state.copyWith(requirements: newRequirements);
  }

  void addRequirement(String req) {
    final newList = [...state.requirements, req];
    updateRequirements(newList);
  }

  void removeRequirementAt(int index) {
    final newList = [...state.requirements]..removeAt(index);
    updateRequirements(newList);
  }

  // stages
    /* ── STAGES & TASKS ───────────────── */
  void addStage(String name) {
    final newStages = [...state.stages, StageDraft(name: name)];
    state = state.copyWith(stages: newStages);
  }

  void removeStageAt(int idx) {
    final newStages = [...state.stages]..removeAt(idx);
    state = state.copyWith(stages: newStages);
  }

  void addTask(int stageIdx, TaskDraft task) {
    final stages = [...state.stages];
    final stage = stages[stageIdx];
    stages[stageIdx] =
        StageDraft(name: stage.name, tasks: [...stage.tasks, task]);
    state = state.copyWith(stages: stages);
  }

  void removeTask(int stageIdx, int taskIdx) {
    final stages = [...state.stages];
    final stage = stages[stageIdx];
    final newTasks = [...stage.tasks]..removeAt(taskIdx);
    stages[stageIdx] = StageDraft(name: stage.name, tasks: newTasks);
    state = state.copyWith(stages: stages);
  }
}

extension AddFormX on AddScholarshipForm {
  bool get isStep2Valid =>
      name.trim().isNotEmpty &&
      provider.trim().isNotEmpty &&
      deadline != null;
}


