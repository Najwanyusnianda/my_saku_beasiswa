// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CachedTemplatesTable extends CachedTemplates
    with TableInfo<$CachedTemplatesTable, CachedTemplate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedTemplatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _providerMeta = const VerificationMeta(
    'provider',
  );
  @override
  late final GeneratedColumn<String> provider = GeneratedColumn<String>(
    'provider',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jsonBlobMeta = const VerificationMeta(
    'jsonBlob',
  );
  @override
  late final GeneratedColumn<String> jsonBlob = GeneratedColumn<String>(
    'json_blob',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    version,
    provider,
    jsonBlob,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_templates';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedTemplate> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    }
    if (data.containsKey('provider')) {
      context.handle(
        _providerMeta,
        provider.isAcceptableOrUnknown(data['provider']!, _providerMeta),
      );
    } else if (isInserting) {
      context.missing(_providerMeta);
    }
    if (data.containsKey('json_blob')) {
      context.handle(
        _jsonBlobMeta,
        jsonBlob.isAcceptableOrUnknown(data['json_blob']!, _jsonBlobMeta),
      );
    } else if (isInserting) {
      context.missing(_jsonBlobMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedTemplate map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedTemplate(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}version'],
      )!,
      provider: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}provider'],
      )!,
      jsonBlob: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}json_blob'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CachedTemplatesTable createAlias(String alias) {
    return $CachedTemplatesTable(attachedDatabase, alias);
  }
}

class CachedTemplate extends DataClass implements Insertable<CachedTemplate> {
  final String id;
  final String name;
  final int version;
  final String provider;
  final String jsonBlob;
  final DateTime updatedAt;
  const CachedTemplate({
    required this.id,
    required this.name,
    required this.version,
    required this.provider,
    required this.jsonBlob,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['version'] = Variable<int>(version);
    map['provider'] = Variable<String>(provider);
    map['json_blob'] = Variable<String>(jsonBlob);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CachedTemplatesCompanion toCompanion(bool nullToAbsent) {
    return CachedTemplatesCompanion(
      id: Value(id),
      name: Value(name),
      version: Value(version),
      provider: Value(provider),
      jsonBlob: Value(jsonBlob),
      updatedAt: Value(updatedAt),
    );
  }

  factory CachedTemplate.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedTemplate(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      version: serializer.fromJson<int>(json['version']),
      provider: serializer.fromJson<String>(json['provider']),
      jsonBlob: serializer.fromJson<String>(json['jsonBlob']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'version': serializer.toJson<int>(version),
      'provider': serializer.toJson<String>(provider),
      'jsonBlob': serializer.toJson<String>(jsonBlob),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CachedTemplate copyWith({
    String? id,
    String? name,
    int? version,
    String? provider,
    String? jsonBlob,
    DateTime? updatedAt,
  }) => CachedTemplate(
    id: id ?? this.id,
    name: name ?? this.name,
    version: version ?? this.version,
    provider: provider ?? this.provider,
    jsonBlob: jsonBlob ?? this.jsonBlob,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CachedTemplate copyWithCompanion(CachedTemplatesCompanion data) {
    return CachedTemplate(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      version: data.version.present ? data.version.value : this.version,
      provider: data.provider.present ? data.provider.value : this.provider,
      jsonBlob: data.jsonBlob.present ? data.jsonBlob.value : this.jsonBlob,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedTemplate(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('version: $version, ')
          ..write('provider: $provider, ')
          ..write('jsonBlob: $jsonBlob, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, version, provider, jsonBlob, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedTemplate &&
          other.id == this.id &&
          other.name == this.name &&
          other.version == this.version &&
          other.provider == this.provider &&
          other.jsonBlob == this.jsonBlob &&
          other.updatedAt == this.updatedAt);
}

class CachedTemplatesCompanion extends UpdateCompanion<CachedTemplate> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> version;
  final Value<String> provider;
  final Value<String> jsonBlob;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const CachedTemplatesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.version = const Value.absent(),
    this.provider = const Value.absent(),
    this.jsonBlob = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedTemplatesCompanion.insert({
    required String id,
    required String name,
    this.version = const Value.absent(),
    required String provider,
    required String jsonBlob,
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       provider = Value(provider),
       jsonBlob = Value(jsonBlob);
  static Insertable<CachedTemplate> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? version,
    Expression<String>? provider,
    Expression<String>? jsonBlob,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (version != null) 'version': version,
      if (provider != null) 'provider': provider,
      if (jsonBlob != null) 'json_blob': jsonBlob,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedTemplatesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? version,
    Value<String>? provider,
    Value<String>? jsonBlob,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return CachedTemplatesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      version: version ?? this.version,
      provider: provider ?? this.provider,
      jsonBlob: jsonBlob ?? this.jsonBlob,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (provider.present) {
      map['provider'] = Variable<String>(provider.value);
    }
    if (jsonBlob.present) {
      map['json_blob'] = Variable<String>(jsonBlob.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedTemplatesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('version: $version, ')
          ..write('provider: $provider, ')
          ..write('jsonBlob: $jsonBlob, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ScholarshipsTable extends Scholarships
    with TableInfo<$ScholarshipsTable, Scholarship> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScholarshipsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _providerMeta = const VerificationMeta(
    'provider',
  );
  @override
  late final GeneratedColumn<String> provider = GeneratedColumn<String>(
    'provider',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deadlineMeta = const VerificationMeta(
    'deadline',
  );
  @override
  late final GeneratedColumn<DateTime> deadline = GeneratedColumn<DateTime>(
    'deadline',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('in_progress'),
  );
  static const VerificationMeta _templateIdMeta = const VerificationMeta(
    'templateId',
  );
  @override
  late final GeneratedColumn<String> templateId = GeneratedColumn<String>(
    'template_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    provider,
    deadline,
    status,
    templateId,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scholarships';
  @override
  VerificationContext validateIntegrity(
    Insertable<Scholarship> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('provider')) {
      context.handle(
        _providerMeta,
        provider.isAcceptableOrUnknown(data['provider']!, _providerMeta),
      );
    } else if (isInserting) {
      context.missing(_providerMeta);
    }
    if (data.containsKey('deadline')) {
      context.handle(
        _deadlineMeta,
        deadline.isAcceptableOrUnknown(data['deadline']!, _deadlineMeta),
      );
    } else if (isInserting) {
      context.missing(_deadlineMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('template_id')) {
      context.handle(
        _templateIdMeta,
        templateId.isAcceptableOrUnknown(data['template_id']!, _templateIdMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Scholarship map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Scholarship(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      provider: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}provider'],
      )!,
      deadline: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deadline'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      templateId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template_id'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $ScholarshipsTable createAlias(String alias) {
    return $ScholarshipsTable(attachedDatabase, alias);
  }
}

class Scholarship extends DataClass implements Insertable<Scholarship> {
  final int id;
  final String name;
  final String provider;
  final DateTime deadline;
  final String status;
  final String? templateId;
  final DateTime createdAt;
  const Scholarship({
    required this.id,
    required this.name,
    required this.provider,
    required this.deadline,
    required this.status,
    this.templateId,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['provider'] = Variable<String>(provider);
    map['deadline'] = Variable<DateTime>(deadline);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || templateId != null) {
      map['template_id'] = Variable<String>(templateId);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ScholarshipsCompanion toCompanion(bool nullToAbsent) {
    return ScholarshipsCompanion(
      id: Value(id),
      name: Value(name),
      provider: Value(provider),
      deadline: Value(deadline),
      status: Value(status),
      templateId: templateId == null && nullToAbsent
          ? const Value.absent()
          : Value(templateId),
      createdAt: Value(createdAt),
    );
  }

  factory Scholarship.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Scholarship(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      provider: serializer.fromJson<String>(json['provider']),
      deadline: serializer.fromJson<DateTime>(json['deadline']),
      status: serializer.fromJson<String>(json['status']),
      templateId: serializer.fromJson<String?>(json['templateId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'provider': serializer.toJson<String>(provider),
      'deadline': serializer.toJson<DateTime>(deadline),
      'status': serializer.toJson<String>(status),
      'templateId': serializer.toJson<String?>(templateId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Scholarship copyWith({
    int? id,
    String? name,
    String? provider,
    DateTime? deadline,
    String? status,
    Value<String?> templateId = const Value.absent(),
    DateTime? createdAt,
  }) => Scholarship(
    id: id ?? this.id,
    name: name ?? this.name,
    provider: provider ?? this.provider,
    deadline: deadline ?? this.deadline,
    status: status ?? this.status,
    templateId: templateId.present ? templateId.value : this.templateId,
    createdAt: createdAt ?? this.createdAt,
  );
  Scholarship copyWithCompanion(ScholarshipsCompanion data) {
    return Scholarship(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      provider: data.provider.present ? data.provider.value : this.provider,
      deadline: data.deadline.present ? data.deadline.value : this.deadline,
      status: data.status.present ? data.status.value : this.status,
      templateId: data.templateId.present
          ? data.templateId.value
          : this.templateId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Scholarship(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('provider: $provider, ')
          ..write('deadline: $deadline, ')
          ..write('status: $status, ')
          ..write('templateId: $templateId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, provider, deadline, status, templateId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Scholarship &&
          other.id == this.id &&
          other.name == this.name &&
          other.provider == this.provider &&
          other.deadline == this.deadline &&
          other.status == this.status &&
          other.templateId == this.templateId &&
          other.createdAt == this.createdAt);
}

class ScholarshipsCompanion extends UpdateCompanion<Scholarship> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> provider;
  final Value<DateTime> deadline;
  final Value<String> status;
  final Value<String?> templateId;
  final Value<DateTime> createdAt;
  const ScholarshipsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.provider = const Value.absent(),
    this.deadline = const Value.absent(),
    this.status = const Value.absent(),
    this.templateId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ScholarshipsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String provider,
    required DateTime deadline,
    this.status = const Value.absent(),
    this.templateId = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : name = Value(name),
       provider = Value(provider),
       deadline = Value(deadline);
  static Insertable<Scholarship> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? provider,
    Expression<DateTime>? deadline,
    Expression<String>? status,
    Expression<String>? templateId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (provider != null) 'provider': provider,
      if (deadline != null) 'deadline': deadline,
      if (status != null) 'status': status,
      if (templateId != null) 'template_id': templateId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ScholarshipsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? provider,
    Value<DateTime>? deadline,
    Value<String>? status,
    Value<String?>? templateId,
    Value<DateTime>? createdAt,
  }) {
    return ScholarshipsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      provider: provider ?? this.provider,
      deadline: deadline ?? this.deadline,
      status: status ?? this.status,
      templateId: templateId ?? this.templateId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (provider.present) {
      map['provider'] = Variable<String>(provider.value);
    }
    if (deadline.present) {
      map['deadline'] = Variable<DateTime>(deadline.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (templateId.present) {
      map['template_id'] = Variable<String>(templateId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScholarshipsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('provider: $provider, ')
          ..write('deadline: $deadline, ')
          ..write('status: $status, ')
          ..write('templateId: $templateId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $StagesTable extends Stages with TableInfo<$StagesTable, Stage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _scholarshipIdMeta = const VerificationMeta(
    'scholarshipId',
  );
  @override
  late final GeneratedColumn<int> scholarshipId = GeneratedColumn<int>(
    'scholarship_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES scholarships (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
    'order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, scholarshipId, name, order];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stages';
  @override
  VerificationContext validateIntegrity(
    Insertable<Stage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('scholarship_id')) {
      context.handle(
        _scholarshipIdMeta,
        scholarshipId.isAcceptableOrUnknown(
          data['scholarship_id']!,
          _scholarshipIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_scholarshipIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
        _orderMeta,
        order.isAcceptableOrUnknown(data['order']!, _orderMeta),
      );
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Stage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Stage(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      scholarshipId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}scholarship_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      order: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}order'],
      )!,
    );
  }

  @override
  $StagesTable createAlias(String alias) {
    return $StagesTable(attachedDatabase, alias);
  }
}

class Stage extends DataClass implements Insertable<Stage> {
  final int id;
  final int scholarshipId;
  final String name;
  final int order;
  const Stage({
    required this.id,
    required this.scholarshipId,
    required this.name,
    required this.order,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['scholarship_id'] = Variable<int>(scholarshipId);
    map['name'] = Variable<String>(name);
    map['order'] = Variable<int>(order);
    return map;
  }

  StagesCompanion toCompanion(bool nullToAbsent) {
    return StagesCompanion(
      id: Value(id),
      scholarshipId: Value(scholarshipId),
      name: Value(name),
      order: Value(order),
    );
  }

  factory Stage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Stage(
      id: serializer.fromJson<int>(json['id']),
      scholarshipId: serializer.fromJson<int>(json['scholarshipId']),
      name: serializer.fromJson<String>(json['name']),
      order: serializer.fromJson<int>(json['order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'scholarshipId': serializer.toJson<int>(scholarshipId),
      'name': serializer.toJson<String>(name),
      'order': serializer.toJson<int>(order),
    };
  }

  Stage copyWith({int? id, int? scholarshipId, String? name, int? order}) =>
      Stage(
        id: id ?? this.id,
        scholarshipId: scholarshipId ?? this.scholarshipId,
        name: name ?? this.name,
        order: order ?? this.order,
      );
  Stage copyWithCompanion(StagesCompanion data) {
    return Stage(
      id: data.id.present ? data.id.value : this.id,
      scholarshipId: data.scholarshipId.present
          ? data.scholarshipId.value
          : this.scholarshipId,
      name: data.name.present ? data.name.value : this.name,
      order: data.order.present ? data.order.value : this.order,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Stage(')
          ..write('id: $id, ')
          ..write('scholarshipId: $scholarshipId, ')
          ..write('name: $name, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, scholarshipId, name, order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stage &&
          other.id == this.id &&
          other.scholarshipId == this.scholarshipId &&
          other.name == this.name &&
          other.order == this.order);
}

class StagesCompanion extends UpdateCompanion<Stage> {
  final Value<int> id;
  final Value<int> scholarshipId;
  final Value<String> name;
  final Value<int> order;
  const StagesCompanion({
    this.id = const Value.absent(),
    this.scholarshipId = const Value.absent(),
    this.name = const Value.absent(),
    this.order = const Value.absent(),
  });
  StagesCompanion.insert({
    this.id = const Value.absent(),
    required int scholarshipId,
    required String name,
    required int order,
  }) : scholarshipId = Value(scholarshipId),
       name = Value(name),
       order = Value(order);
  static Insertable<Stage> custom({
    Expression<int>? id,
    Expression<int>? scholarshipId,
    Expression<String>? name,
    Expression<int>? order,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (scholarshipId != null) 'scholarship_id': scholarshipId,
      if (name != null) 'name': name,
      if (order != null) 'order': order,
    });
  }

  StagesCompanion copyWith({
    Value<int>? id,
    Value<int>? scholarshipId,
    Value<String>? name,
    Value<int>? order,
  }) {
    return StagesCompanion(
      id: id ?? this.id,
      scholarshipId: scholarshipId ?? this.scholarshipId,
      name: name ?? this.name,
      order: order ?? this.order,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (scholarshipId.present) {
      map['scholarship_id'] = Variable<int>(scholarshipId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StagesCompanion(')
          ..write('id: $id, ')
          ..write('scholarshipId: $scholarshipId, ')
          ..write('name: $name, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stageIdMeta = const VerificationMeta(
    'stageId',
  );
  @override
  late final GeneratedColumn<int> stageId = GeneratedColumn<int>(
    'stage_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES stages (id)',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _relativeDaysMeta = const VerificationMeta(
    'relativeDays',
  );
  @override
  late final GeneratedColumn<int> relativeDays = GeneratedColumn<int>(
    'relative_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueDateMeta = const VerificationMeta(
    'dueDate',
  );
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
    'due_date',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDoneMeta = const VerificationMeta('isDone');
  @override
  late final GeneratedColumn<bool> isDone = GeneratedColumn<bool>(
    'is_done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_done" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stageId,
    title,
    relativeDays,
    dueDate,
    isDone,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Task> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stage_id')) {
      context.handle(
        _stageIdMeta,
        stageId.isAcceptableOrUnknown(data['stage_id']!, _stageIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stageIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('relative_days')) {
      context.handle(
        _relativeDaysMeta,
        relativeDays.isAcceptableOrUnknown(
          data['relative_days']!,
          _relativeDaysMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_relativeDaysMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(
        _dueDateMeta,
        dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta),
      );
    }
    if (data.containsKey('is_done')) {
      context.handle(
        _isDoneMeta,
        isDone.isAcceptableOrUnknown(data['is_done']!, _isDoneMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Task(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stageId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stage_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      relativeDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}relative_days'],
      )!,
      dueDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_date'],
      ),
      isDone: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_done'],
      )!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final int stageId;
  final String title;
  final int relativeDays;
  final DateTime? dueDate;
  final bool isDone;
  const Task({
    required this.id,
    required this.stageId,
    required this.title,
    required this.relativeDays,
    this.dueDate,
    required this.isDone,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stage_id'] = Variable<int>(stageId);
    map['title'] = Variable<String>(title);
    map['relative_days'] = Variable<int>(relativeDays);
    if (!nullToAbsent || dueDate != null) {
      map['due_date'] = Variable<DateTime>(dueDate);
    }
    map['is_done'] = Variable<bool>(isDone);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      stageId: Value(stageId),
      title: Value(title),
      relativeDays: Value(relativeDays),
      dueDate: dueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dueDate),
      isDone: Value(isDone),
    );
  }

  factory Task.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      stageId: serializer.fromJson<int>(json['stageId']),
      title: serializer.fromJson<String>(json['title']),
      relativeDays: serializer.fromJson<int>(json['relativeDays']),
      dueDate: serializer.fromJson<DateTime?>(json['dueDate']),
      isDone: serializer.fromJson<bool>(json['isDone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stageId': serializer.toJson<int>(stageId),
      'title': serializer.toJson<String>(title),
      'relativeDays': serializer.toJson<int>(relativeDays),
      'dueDate': serializer.toJson<DateTime?>(dueDate),
      'isDone': serializer.toJson<bool>(isDone),
    };
  }

  Task copyWith({
    int? id,
    int? stageId,
    String? title,
    int? relativeDays,
    Value<DateTime?> dueDate = const Value.absent(),
    bool? isDone,
  }) => Task(
    id: id ?? this.id,
    stageId: stageId ?? this.stageId,
    title: title ?? this.title,
    relativeDays: relativeDays ?? this.relativeDays,
    dueDate: dueDate.present ? dueDate.value : this.dueDate,
    isDone: isDone ?? this.isDone,
  );
  Task copyWithCompanion(TasksCompanion data) {
    return Task(
      id: data.id.present ? data.id.value : this.id,
      stageId: data.stageId.present ? data.stageId.value : this.stageId,
      title: data.title.present ? data.title.value : this.title,
      relativeDays: data.relativeDays.present
          ? data.relativeDays.value
          : this.relativeDays,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      isDone: data.isDone.present ? data.isDone.value : this.isDone,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('title: $title, ')
          ..write('relativeDays: $relativeDays, ')
          ..write('dueDate: $dueDate, ')
          ..write('isDone: $isDone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, stageId, title, relativeDays, dueDate, isDone);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.title == this.title &&
          other.relativeDays == this.relativeDays &&
          other.dueDate == this.dueDate &&
          other.isDone == this.isDone);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<int> stageId;
  final Value<String> title;
  final Value<int> relativeDays;
  final Value<DateTime?> dueDate;
  final Value<bool> isDone;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.stageId = const Value.absent(),
    this.title = const Value.absent(),
    this.relativeDays = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.isDone = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required int stageId,
    required String title,
    required int relativeDays,
    this.dueDate = const Value.absent(),
    this.isDone = const Value.absent(),
  }) : stageId = Value(stageId),
       title = Value(title),
       relativeDays = Value(relativeDays);
  static Insertable<Task> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<String>? title,
    Expression<int>? relativeDays,
    Expression<DateTime>? dueDate,
    Expression<bool>? isDone,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stageId != null) 'stage_id': stageId,
      if (title != null) 'title': title,
      if (relativeDays != null) 'relative_days': relativeDays,
      if (dueDate != null) 'due_date': dueDate,
      if (isDone != null) 'is_done': isDone,
    });
  }

  TasksCompanion copyWith({
    Value<int>? id,
    Value<int>? stageId,
    Value<String>? title,
    Value<int>? relativeDays,
    Value<DateTime?>? dueDate,
    Value<bool>? isDone,
  }) {
    return TasksCompanion(
      id: id ?? this.id,
      stageId: stageId ?? this.stageId,
      title: title ?? this.title,
      relativeDays: relativeDays ?? this.relativeDays,
      dueDate: dueDate ?? this.dueDate,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stageId.present) {
      map['stage_id'] = Variable<int>(stageId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (relativeDays.present) {
      map['relative_days'] = Variable<int>(relativeDays.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (isDone.present) {
      map['is_done'] = Variable<bool>(isDone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('title: $title, ')
          ..write('relativeDays: $relativeDays, ')
          ..write('dueDate: $dueDate, ')
          ..write('isDone: $isDone')
          ..write(')'))
        .toString();
  }
}

class $RequirementsTable extends Requirements
    with TableInfo<$RequirementsTable, Requirement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RequirementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stageIdMeta = const VerificationMeta(
    'stageId',
  );
  @override
  late final GeneratedColumn<int> stageId = GeneratedColumn<int>(
    'stage_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES stages (id)',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCheckedMeta = const VerificationMeta(
    'isChecked',
  );
  @override
  late final GeneratedColumn<bool> isChecked = GeneratedColumn<bool>(
    'is_checked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_checked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [id, stageId, title, isChecked];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'requirements';
  @override
  VerificationContext validateIntegrity(
    Insertable<Requirement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stage_id')) {
      context.handle(
        _stageIdMeta,
        stageId.isAcceptableOrUnknown(data['stage_id']!, _stageIdMeta),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('is_checked')) {
      context.handle(
        _isCheckedMeta,
        isChecked.isAcceptableOrUnknown(data['is_checked']!, _isCheckedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Requirement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Requirement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stageId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stage_id'],
      ),
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      isChecked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_checked'],
      )!,
    );
  }

  @override
  $RequirementsTable createAlias(String alias) {
    return $RequirementsTable(attachedDatabase, alias);
  }
}

class Requirement extends DataClass implements Insertable<Requirement> {
  final int id;
  final int? stageId;
  final String title;
  final bool isChecked;
  const Requirement({
    required this.id,
    this.stageId,
    required this.title,
    required this.isChecked,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || stageId != null) {
      map['stage_id'] = Variable<int>(stageId);
    }
    map['title'] = Variable<String>(title);
    map['is_checked'] = Variable<bool>(isChecked);
    return map;
  }

  RequirementsCompanion toCompanion(bool nullToAbsent) {
    return RequirementsCompanion(
      id: Value(id),
      stageId: stageId == null && nullToAbsent
          ? const Value.absent()
          : Value(stageId),
      title: Value(title),
      isChecked: Value(isChecked),
    );
  }

  factory Requirement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Requirement(
      id: serializer.fromJson<int>(json['id']),
      stageId: serializer.fromJson<int?>(json['stageId']),
      title: serializer.fromJson<String>(json['title']),
      isChecked: serializer.fromJson<bool>(json['isChecked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stageId': serializer.toJson<int?>(stageId),
      'title': serializer.toJson<String>(title),
      'isChecked': serializer.toJson<bool>(isChecked),
    };
  }

  Requirement copyWith({
    int? id,
    Value<int?> stageId = const Value.absent(),
    String? title,
    bool? isChecked,
  }) => Requirement(
    id: id ?? this.id,
    stageId: stageId.present ? stageId.value : this.stageId,
    title: title ?? this.title,
    isChecked: isChecked ?? this.isChecked,
  );
  Requirement copyWithCompanion(RequirementsCompanion data) {
    return Requirement(
      id: data.id.present ? data.id.value : this.id,
      stageId: data.stageId.present ? data.stageId.value : this.stageId,
      title: data.title.present ? data.title.value : this.title,
      isChecked: data.isChecked.present ? data.isChecked.value : this.isChecked,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Requirement(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('title: $title, ')
          ..write('isChecked: $isChecked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, stageId, title, isChecked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Requirement &&
          other.id == this.id &&
          other.stageId == this.stageId &&
          other.title == this.title &&
          other.isChecked == this.isChecked);
}

class RequirementsCompanion extends UpdateCompanion<Requirement> {
  final Value<int> id;
  final Value<int?> stageId;
  final Value<String> title;
  final Value<bool> isChecked;
  const RequirementsCompanion({
    this.id = const Value.absent(),
    this.stageId = const Value.absent(),
    this.title = const Value.absent(),
    this.isChecked = const Value.absent(),
  });
  RequirementsCompanion.insert({
    this.id = const Value.absent(),
    this.stageId = const Value.absent(),
    required String title,
    this.isChecked = const Value.absent(),
  }) : title = Value(title);
  static Insertable<Requirement> custom({
    Expression<int>? id,
    Expression<int>? stageId,
    Expression<String>? title,
    Expression<bool>? isChecked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stageId != null) 'stage_id': stageId,
      if (title != null) 'title': title,
      if (isChecked != null) 'is_checked': isChecked,
    });
  }

  RequirementsCompanion copyWith({
    Value<int>? id,
    Value<int?>? stageId,
    Value<String>? title,
    Value<bool>? isChecked,
  }) {
    return RequirementsCompanion(
      id: id ?? this.id,
      stageId: stageId ?? this.stageId,
      title: title ?? this.title,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stageId.present) {
      map['stage_id'] = Variable<int>(stageId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (isChecked.present) {
      map['is_checked'] = Variable<bool>(isChecked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RequirementsCompanion(')
          ..write('id: $id, ')
          ..write('stageId: $stageId, ')
          ..write('title: $title, ')
          ..write('isChecked: $isChecked')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CachedTemplatesTable cachedTemplates = $CachedTemplatesTable(
    this,
  );
  late final $ScholarshipsTable scholarships = $ScholarshipsTable(this);
  late final $StagesTable stages = $StagesTable(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final $RequirementsTable requirements = $RequirementsTable(this);
  late final ScholarshipDao scholarshipDao = ScholarshipDao(
    this as AppDatabase,
  );
  late final TemplateDao templateDao = TemplateDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cachedTemplates,
    scholarships,
    stages,
    tasks,
    requirements,
  ];
}

typedef $$CachedTemplatesTableCreateCompanionBuilder =
    CachedTemplatesCompanion Function({
      required String id,
      required String name,
      Value<int> version,
      required String provider,
      required String jsonBlob,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$CachedTemplatesTableUpdateCompanionBuilder =
    CachedTemplatesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> version,
      Value<String> provider,
      Value<String> jsonBlob,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$CachedTemplatesTableFilterComposer
    extends Composer<_$AppDatabase, $CachedTemplatesTable> {
  $$CachedTemplatesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jsonBlob => $composableBuilder(
    column: $table.jsonBlob,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedTemplatesTableOrderingComposer
    extends Composer<_$AppDatabase, $CachedTemplatesTable> {
  $$CachedTemplatesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jsonBlob => $composableBuilder(
    column: $table.jsonBlob,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedTemplatesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CachedTemplatesTable> {
  $$CachedTemplatesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get provider =>
      $composableBuilder(column: $table.provider, builder: (column) => column);

  GeneratedColumn<String> get jsonBlob =>
      $composableBuilder(column: $table.jsonBlob, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CachedTemplatesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CachedTemplatesTable,
          CachedTemplate,
          $$CachedTemplatesTableFilterComposer,
          $$CachedTemplatesTableOrderingComposer,
          $$CachedTemplatesTableAnnotationComposer,
          $$CachedTemplatesTableCreateCompanionBuilder,
          $$CachedTemplatesTableUpdateCompanionBuilder,
          (
            CachedTemplate,
            BaseReferences<
              _$AppDatabase,
              $CachedTemplatesTable,
              CachedTemplate
            >,
          ),
          CachedTemplate,
          PrefetchHooks Function()
        > {
  $$CachedTemplatesTableTableManager(
    _$AppDatabase db,
    $CachedTemplatesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedTemplatesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedTemplatesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedTemplatesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> version = const Value.absent(),
                Value<String> provider = const Value.absent(),
                Value<String> jsonBlob = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedTemplatesCompanion(
                id: id,
                name: name,
                version: version,
                provider: provider,
                jsonBlob: jsonBlob,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<int> version = const Value.absent(),
                required String provider,
                required String jsonBlob,
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedTemplatesCompanion.insert(
                id: id,
                name: name,
                version: version,
                provider: provider,
                jsonBlob: jsonBlob,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedTemplatesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CachedTemplatesTable,
      CachedTemplate,
      $$CachedTemplatesTableFilterComposer,
      $$CachedTemplatesTableOrderingComposer,
      $$CachedTemplatesTableAnnotationComposer,
      $$CachedTemplatesTableCreateCompanionBuilder,
      $$CachedTemplatesTableUpdateCompanionBuilder,
      (
        CachedTemplate,
        BaseReferences<_$AppDatabase, $CachedTemplatesTable, CachedTemplate>,
      ),
      CachedTemplate,
      PrefetchHooks Function()
    >;
typedef $$ScholarshipsTableCreateCompanionBuilder =
    ScholarshipsCompanion Function({
      Value<int> id,
      required String name,
      required String provider,
      required DateTime deadline,
      Value<String> status,
      Value<String?> templateId,
      Value<DateTime> createdAt,
    });
typedef $$ScholarshipsTableUpdateCompanionBuilder =
    ScholarshipsCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> provider,
      Value<DateTime> deadline,
      Value<String> status,
      Value<String?> templateId,
      Value<DateTime> createdAt,
    });

final class $$ScholarshipsTableReferences
    extends BaseReferences<_$AppDatabase, $ScholarshipsTable, Scholarship> {
  $$ScholarshipsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$StagesTable, List<Stage>> _stagesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.stages,
    aliasName: $_aliasNameGenerator(
      db.scholarships.id,
      db.stages.scholarshipId,
    ),
  );

  $$StagesTableProcessedTableManager get stagesRefs {
    final manager = $$StagesTableTableManager(
      $_db,
      $_db.stages,
    ).filter((f) => f.scholarshipId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_stagesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ScholarshipsTableFilterComposer
    extends Composer<_$AppDatabase, $ScholarshipsTable> {
  $$ScholarshipsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deadline => $composableBuilder(
    column: $table.deadline,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> stagesRefs(
    Expression<bool> Function($$StagesTableFilterComposer f) f,
  ) {
    final $$StagesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.scholarshipId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableFilterComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ScholarshipsTableOrderingComposer
    extends Composer<_$AppDatabase, $ScholarshipsTable> {
  $$ScholarshipsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deadline => $composableBuilder(
    column: $table.deadline,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ScholarshipsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ScholarshipsTable> {
  $$ScholarshipsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get provider =>
      $composableBuilder(column: $table.provider, builder: (column) => column);

  GeneratedColumn<DateTime> get deadline =>
      $composableBuilder(column: $table.deadline, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get templateId => $composableBuilder(
    column: $table.templateId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> stagesRefs<T extends Object>(
    Expression<T> Function($$StagesTableAnnotationComposer a) f,
  ) {
    final $$StagesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.scholarshipId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableAnnotationComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ScholarshipsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ScholarshipsTable,
          Scholarship,
          $$ScholarshipsTableFilterComposer,
          $$ScholarshipsTableOrderingComposer,
          $$ScholarshipsTableAnnotationComposer,
          $$ScholarshipsTableCreateCompanionBuilder,
          $$ScholarshipsTableUpdateCompanionBuilder,
          (Scholarship, $$ScholarshipsTableReferences),
          Scholarship,
          PrefetchHooks Function({bool stagesRefs})
        > {
  $$ScholarshipsTableTableManager(_$AppDatabase db, $ScholarshipsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScholarshipsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScholarshipsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScholarshipsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> provider = const Value.absent(),
                Value<DateTime> deadline = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> templateId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => ScholarshipsCompanion(
                id: id,
                name: name,
                provider: provider,
                deadline: deadline,
                status: status,
                templateId: templateId,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String provider,
                required DateTime deadline,
                Value<String> status = const Value.absent(),
                Value<String?> templateId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => ScholarshipsCompanion.insert(
                id: id,
                name: name,
                provider: provider,
                deadline: deadline,
                status: status,
                templateId: templateId,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ScholarshipsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({stagesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (stagesRefs) db.stages],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (stagesRefs)
                    await $_getPrefetchedData<
                      Scholarship,
                      $ScholarshipsTable,
                      Stage
                    >(
                      currentTable: table,
                      referencedTable: $$ScholarshipsTableReferences
                          ._stagesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ScholarshipsTableReferences(
                            db,
                            table,
                            p0,
                          ).stagesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.scholarshipId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ScholarshipsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ScholarshipsTable,
      Scholarship,
      $$ScholarshipsTableFilterComposer,
      $$ScholarshipsTableOrderingComposer,
      $$ScholarshipsTableAnnotationComposer,
      $$ScholarshipsTableCreateCompanionBuilder,
      $$ScholarshipsTableUpdateCompanionBuilder,
      (Scholarship, $$ScholarshipsTableReferences),
      Scholarship,
      PrefetchHooks Function({bool stagesRefs})
    >;
typedef $$StagesTableCreateCompanionBuilder =
    StagesCompanion Function({
      Value<int> id,
      required int scholarshipId,
      required String name,
      required int order,
    });
typedef $$StagesTableUpdateCompanionBuilder =
    StagesCompanion Function({
      Value<int> id,
      Value<int> scholarshipId,
      Value<String> name,
      Value<int> order,
    });

final class $$StagesTableReferences
    extends BaseReferences<_$AppDatabase, $StagesTable, Stage> {
  $$StagesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ScholarshipsTable _scholarshipIdTable(_$AppDatabase db) =>
      db.scholarships.createAlias(
        $_aliasNameGenerator(db.stages.scholarshipId, db.scholarships.id),
      );

  $$ScholarshipsTableProcessedTableManager get scholarshipId {
    final $_column = $_itemColumn<int>('scholarship_id')!;

    final manager = $$ScholarshipsTableTableManager(
      $_db,
      $_db.scholarships,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_scholarshipIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$TasksTable, List<Task>> _tasksRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.tasks,
    aliasName: $_aliasNameGenerator(db.stages.id, db.tasks.stageId),
  );

  $$TasksTableProcessedTableManager get tasksRefs {
    final manager = $$TasksTableTableManager(
      $_db,
      $_db.tasks,
    ).filter((f) => f.stageId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tasksRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RequirementsTable, List<Requirement>>
  _requirementsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.requirements,
    aliasName: $_aliasNameGenerator(db.stages.id, db.requirements.stageId),
  );

  $$RequirementsTableProcessedTableManager get requirementsRefs {
    final manager = $$RequirementsTableTableManager(
      $_db,
      $_db.requirements,
    ).filter((f) => f.stageId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_requirementsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$StagesTableFilterComposer
    extends Composer<_$AppDatabase, $StagesTable> {
  $$StagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnFilters(column),
  );

  $$ScholarshipsTableFilterComposer get scholarshipId {
    final $$ScholarshipsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.scholarshipId,
      referencedTable: $db.scholarships,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScholarshipsTableFilterComposer(
            $db: $db,
            $table: $db.scholarships,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> tasksRefs(
    Expression<bool> Function($$TasksTableFilterComposer f) f,
  ) {
    final $$TasksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.stageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableFilterComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> requirementsRefs(
    Expression<bool> Function($$RequirementsTableFilterComposer f) f,
  ) {
    final $$RequirementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.requirements,
      getReferencedColumn: (t) => t.stageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RequirementsTableFilterComposer(
            $db: $db,
            $table: $db.requirements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StagesTableOrderingComposer
    extends Composer<_$AppDatabase, $StagesTable> {
  $$StagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnOrderings(column),
  );

  $$ScholarshipsTableOrderingComposer get scholarshipId {
    final $$ScholarshipsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.scholarshipId,
      referencedTable: $db.scholarships,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScholarshipsTableOrderingComposer(
            $db: $db,
            $table: $db.scholarships,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $StagesTable> {
  $$StagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

  $$ScholarshipsTableAnnotationComposer get scholarshipId {
    final $$ScholarshipsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.scholarshipId,
      referencedTable: $db.scholarships,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScholarshipsTableAnnotationComposer(
            $db: $db,
            $table: $db.scholarships,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> tasksRefs<T extends Object>(
    Expression<T> Function($$TasksTableAnnotationComposer a) f,
  ) {
    final $$TasksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tasks,
      getReferencedColumn: (t) => t.stageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TasksTableAnnotationComposer(
            $db: $db,
            $table: $db.tasks,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> requirementsRefs<T extends Object>(
    Expression<T> Function($$RequirementsTableAnnotationComposer a) f,
  ) {
    final $$RequirementsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.requirements,
      getReferencedColumn: (t) => t.stageId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RequirementsTableAnnotationComposer(
            $db: $db,
            $table: $db.requirements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StagesTable,
          Stage,
          $$StagesTableFilterComposer,
          $$StagesTableOrderingComposer,
          $$StagesTableAnnotationComposer,
          $$StagesTableCreateCompanionBuilder,
          $$StagesTableUpdateCompanionBuilder,
          (Stage, $$StagesTableReferences),
          Stage,
          PrefetchHooks Function({
            bool scholarshipId,
            bool tasksRefs,
            bool requirementsRefs,
          })
        > {
  $$StagesTableTableManager(_$AppDatabase db, $StagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> scholarshipId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> order = const Value.absent(),
              }) => StagesCompanion(
                id: id,
                scholarshipId: scholarshipId,
                name: name,
                order: order,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int scholarshipId,
                required String name,
                required int order,
              }) => StagesCompanion.insert(
                id: id,
                scholarshipId: scholarshipId,
                name: name,
                order: order,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$StagesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                scholarshipId = false,
                tasksRefs = false,
                requirementsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (tasksRefs) db.tasks,
                    if (requirementsRefs) db.requirements,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (scholarshipId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.scholarshipId,
                                    referencedTable: $$StagesTableReferences
                                        ._scholarshipIdTable(db),
                                    referencedColumn: $$StagesTableReferences
                                        ._scholarshipIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (tasksRefs)
                        await $_getPrefetchedData<Stage, $StagesTable, Task>(
                          currentTable: table,
                          referencedTable: $$StagesTableReferences
                              ._tasksRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$StagesTableReferences(db, table, p0).tasksRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.stageId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (requirementsRefs)
                        await $_getPrefetchedData<
                          Stage,
                          $StagesTable,
                          Requirement
                        >(
                          currentTable: table,
                          referencedTable: $$StagesTableReferences
                              ._requirementsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$StagesTableReferences(
                                db,
                                table,
                                p0,
                              ).requirementsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.stageId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$StagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StagesTable,
      Stage,
      $$StagesTableFilterComposer,
      $$StagesTableOrderingComposer,
      $$StagesTableAnnotationComposer,
      $$StagesTableCreateCompanionBuilder,
      $$StagesTableUpdateCompanionBuilder,
      (Stage, $$StagesTableReferences),
      Stage,
      PrefetchHooks Function({
        bool scholarshipId,
        bool tasksRefs,
        bool requirementsRefs,
      })
    >;
typedef $$TasksTableCreateCompanionBuilder =
    TasksCompanion Function({
      Value<int> id,
      required int stageId,
      required String title,
      required int relativeDays,
      Value<DateTime?> dueDate,
      Value<bool> isDone,
    });
typedef $$TasksTableUpdateCompanionBuilder =
    TasksCompanion Function({
      Value<int> id,
      Value<int> stageId,
      Value<String> title,
      Value<int> relativeDays,
      Value<DateTime?> dueDate,
      Value<bool> isDone,
    });

final class $$TasksTableReferences
    extends BaseReferences<_$AppDatabase, $TasksTable, Task> {
  $$TasksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StagesTable _stageIdTable(_$AppDatabase db) => db.stages.createAlias(
    $_aliasNameGenerator(db.tasks.stageId, db.stages.id),
  );

  $$StagesTableProcessedTableManager get stageId {
    final $_column = $_itemColumn<int>('stage_id')!;

    final manager = $$StagesTableTableManager(
      $_db,
      $_db.stages,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_stageIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TasksTableFilterComposer extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get relativeDays => $composableBuilder(
    column: $table.relativeDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
    column: $table.dueDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDone => $composableBuilder(
    column: $table.isDone,
    builder: (column) => ColumnFilters(column),
  );

  $$StagesTableFilterComposer get stageId {
    final $$StagesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stageId,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableFilterComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TasksTableOrderingComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get relativeDays => $composableBuilder(
    column: $table.relativeDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
    column: $table.dueDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDone => $composableBuilder(
    column: $table.isDone,
    builder: (column) => ColumnOrderings(column),
  );

  $$StagesTableOrderingComposer get stageId {
    final $$StagesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stageId,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableOrderingComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TasksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TasksTable> {
  $$TasksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get relativeDays => $composableBuilder(
    column: $table.relativeDays,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<bool> get isDone =>
      $composableBuilder(column: $table.isDone, builder: (column) => column);

  $$StagesTableAnnotationComposer get stageId {
    final $$StagesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stageId,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableAnnotationComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TasksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TasksTable,
          Task,
          $$TasksTableFilterComposer,
          $$TasksTableOrderingComposer,
          $$TasksTableAnnotationComposer,
          $$TasksTableCreateCompanionBuilder,
          $$TasksTableUpdateCompanionBuilder,
          (Task, $$TasksTableReferences),
          Task,
          PrefetchHooks Function({bool stageId})
        > {
  $$TasksTableTableManager(_$AppDatabase db, $TasksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TasksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TasksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TasksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> stageId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> relativeDays = const Value.absent(),
                Value<DateTime?> dueDate = const Value.absent(),
                Value<bool> isDone = const Value.absent(),
              }) => TasksCompanion(
                id: id,
                stageId: stageId,
                title: title,
                relativeDays: relativeDays,
                dueDate: dueDate,
                isDone: isDone,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int stageId,
                required String title,
                required int relativeDays,
                Value<DateTime?> dueDate = const Value.absent(),
                Value<bool> isDone = const Value.absent(),
              }) => TasksCompanion.insert(
                id: id,
                stageId: stageId,
                title: title,
                relativeDays: relativeDays,
                dueDate: dueDate,
                isDone: isDone,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$TasksTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({stageId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (stageId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.stageId,
                                referencedTable: $$TasksTableReferences
                                    ._stageIdTable(db),
                                referencedColumn: $$TasksTableReferences
                                    ._stageIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TasksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TasksTable,
      Task,
      $$TasksTableFilterComposer,
      $$TasksTableOrderingComposer,
      $$TasksTableAnnotationComposer,
      $$TasksTableCreateCompanionBuilder,
      $$TasksTableUpdateCompanionBuilder,
      (Task, $$TasksTableReferences),
      Task,
      PrefetchHooks Function({bool stageId})
    >;
typedef $$RequirementsTableCreateCompanionBuilder =
    RequirementsCompanion Function({
      Value<int> id,
      Value<int?> stageId,
      required String title,
      Value<bool> isChecked,
    });
typedef $$RequirementsTableUpdateCompanionBuilder =
    RequirementsCompanion Function({
      Value<int> id,
      Value<int?> stageId,
      Value<String> title,
      Value<bool> isChecked,
    });

final class $$RequirementsTableReferences
    extends BaseReferences<_$AppDatabase, $RequirementsTable, Requirement> {
  $$RequirementsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StagesTable _stageIdTable(_$AppDatabase db) => db.stages.createAlias(
    $_aliasNameGenerator(db.requirements.stageId, db.stages.id),
  );

  $$StagesTableProcessedTableManager? get stageId {
    final $_column = $_itemColumn<int>('stage_id');
    if ($_column == null) return null;
    final manager = $$StagesTableTableManager(
      $_db,
      $_db.stages,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_stageIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RequirementsTableFilterComposer
    extends Composer<_$AppDatabase, $RequirementsTable> {
  $$RequirementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isChecked => $composableBuilder(
    column: $table.isChecked,
    builder: (column) => ColumnFilters(column),
  );

  $$StagesTableFilterComposer get stageId {
    final $$StagesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stageId,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableFilterComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RequirementsTableOrderingComposer
    extends Composer<_$AppDatabase, $RequirementsTable> {
  $$RequirementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isChecked => $composableBuilder(
    column: $table.isChecked,
    builder: (column) => ColumnOrderings(column),
  );

  $$StagesTableOrderingComposer get stageId {
    final $$StagesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stageId,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableOrderingComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RequirementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RequirementsTable> {
  $$RequirementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<bool> get isChecked =>
      $composableBuilder(column: $table.isChecked, builder: (column) => column);

  $$StagesTableAnnotationComposer get stageId {
    final $$StagesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stageId,
      referencedTable: $db.stages,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StagesTableAnnotationComposer(
            $db: $db,
            $table: $db.stages,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RequirementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RequirementsTable,
          Requirement,
          $$RequirementsTableFilterComposer,
          $$RequirementsTableOrderingComposer,
          $$RequirementsTableAnnotationComposer,
          $$RequirementsTableCreateCompanionBuilder,
          $$RequirementsTableUpdateCompanionBuilder,
          (Requirement, $$RequirementsTableReferences),
          Requirement,
          PrefetchHooks Function({bool stageId})
        > {
  $$RequirementsTableTableManager(_$AppDatabase db, $RequirementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RequirementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RequirementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RequirementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> stageId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<bool> isChecked = const Value.absent(),
              }) => RequirementsCompanion(
                id: id,
                stageId: stageId,
                title: title,
                isChecked: isChecked,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> stageId = const Value.absent(),
                required String title,
                Value<bool> isChecked = const Value.absent(),
              }) => RequirementsCompanion.insert(
                id: id,
                stageId: stageId,
                title: title,
                isChecked: isChecked,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RequirementsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({stageId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (stageId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.stageId,
                                referencedTable: $$RequirementsTableReferences
                                    ._stageIdTable(db),
                                referencedColumn: $$RequirementsTableReferences
                                    ._stageIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RequirementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RequirementsTable,
      Requirement,
      $$RequirementsTableFilterComposer,
      $$RequirementsTableOrderingComposer,
      $$RequirementsTableAnnotationComposer,
      $$RequirementsTableCreateCompanionBuilder,
      $$RequirementsTableUpdateCompanionBuilder,
      (Requirement, $$RequirementsTableReferences),
      Requirement,
      PrefetchHooks Function({bool stageId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CachedTemplatesTableTableManager get cachedTemplates =>
      $$CachedTemplatesTableTableManager(_db, _db.cachedTemplates);
  $$ScholarshipsTableTableManager get scholarships =>
      $$ScholarshipsTableTableManager(_db, _db.scholarships);
  $$StagesTableTableManager get stages =>
      $$StagesTableTableManager(_db, _db.stages);
  $$TasksTableTableManager get tasks =>
      $$TasksTableTableManager(_db, _db.tasks);
  $$RequirementsTableTableManager get requirements =>
      $$RequirementsTableTableManager(_db, _db.requirements);
}
