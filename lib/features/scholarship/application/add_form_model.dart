class TaskDraft {
  TaskDraft({required this.title, required this.relativeDays});
  final String title;
  final int relativeDays; // negatif = sebelum deadline
}

class StageDraft {
  StageDraft({required this.name, List<TaskDraft>? tasks})
      : tasks = tasks ?? [];
  final String name;
  final List<TaskDraft> tasks;
}


class AddScholarshipForm {
  final List<String> requirements;
  final String name;
  final String provider;
  final DateTime? deadline;
  final String templateId;
  final List<StageDraft> stages;// default empty list

  AddScholarshipForm({
    this.requirements = const [],
    this.name = '',
    this.provider = '',
    this.deadline,
    this.templateId = '',
    this.stages = const [],
    
  });

  AddScholarshipForm copyWith({
    List<String>? requirements,
    String? name,
    String? provider,
    DateTime? deadline,
    String? templateId,
    List<StageDraft>? stages,
  }) {
    return AddScholarshipForm(
      requirements: requirements ?? this.requirements,
      name: name ?? this.name,
      provider: provider ?? this.provider,
      deadline: deadline ?? this.deadline,
      templateId: templateId ?? this.templateId,
      stages: stages ?? this.stages,
    );
  }
}