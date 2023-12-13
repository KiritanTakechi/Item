// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imgpathMeta =
      const VerificationMeta('imgpath');
  @override
  late final GeneratedColumn<String> imgpath = GeneratedColumn<String>(
      'imgpath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _purchaseReasonMeta =
      const VerificationMeta('purchaseReason');
  @override
  late final GeneratedColumn<String> purchaseReason = GeneratedColumn<String>(
      'purchase_reason', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _purchaseLocationMeta =
      const VerificationMeta('purchaseLocation');
  @override
  late final GeneratedColumn<String> purchaseLocation = GeneratedColumn<String>(
      'purchase_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _purchaseCostMeta =
      const VerificationMeta('purchaseCost');
  @override
  late final GeneratedColumn<double> purchaseCost = GeneratedColumn<double>(
      'purchase_cost', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        startDate,
        category,
        description,
        imgpath,
        purchaseReason,
        purchaseLocation,
        purchaseCost
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items';
  @override
  VerificationContext validateIntegrity(Insertable<Item> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('imgpath')) {
      context.handle(_imgpathMeta,
          imgpath.isAcceptableOrUnknown(data['imgpath']!, _imgpathMeta));
    }
    if (data.containsKey('purchase_reason')) {
      context.handle(
          _purchaseReasonMeta,
          purchaseReason.isAcceptableOrUnknown(
              data['purchase_reason']!, _purchaseReasonMeta));
    }
    if (data.containsKey('purchase_location')) {
      context.handle(
          _purchaseLocationMeta,
          purchaseLocation.isAcceptableOrUnknown(
              data['purchase_location']!, _purchaseLocationMeta));
    }
    if (data.containsKey('purchase_cost')) {
      context.handle(
          _purchaseCostMeta,
          purchaseCost.isAcceptableOrUnknown(
              data['purchase_cost']!, _purchaseCostMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Item map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Item(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      imgpath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}imgpath']),
      purchaseReason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}purchase_reason']),
      purchaseLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}purchase_location']),
      purchaseCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}purchase_cost']),
    );
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(attachedDatabase, alias);
  }
}

class Item extends DataClass implements Insertable<Item> {
  final int id;
  final String name;
  final DateTime startDate;
  final String category;
  final String? description;
  final String? imgpath;
  final String? purchaseReason;
  final String? purchaseLocation;
  final double? purchaseCost;
  const Item(
      {required this.id,
      required this.name,
      required this.startDate,
      required this.category,
      this.description,
      this.imgpath,
      this.purchaseReason,
      this.purchaseLocation,
      this.purchaseCost});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['start_date'] = Variable<DateTime>(startDate);
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || imgpath != null) {
      map['imgpath'] = Variable<String>(imgpath);
    }
    if (!nullToAbsent || purchaseReason != null) {
      map['purchase_reason'] = Variable<String>(purchaseReason);
    }
    if (!nullToAbsent || purchaseLocation != null) {
      map['purchase_location'] = Variable<String>(purchaseLocation);
    }
    if (!nullToAbsent || purchaseCost != null) {
      map['purchase_cost'] = Variable<double>(purchaseCost);
    }
    return map;
  }

  ItemsCompanion toCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      id: Value(id),
      name: Value(name),
      startDate: Value(startDate),
      category: Value(category),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      imgpath: imgpath == null && nullToAbsent
          ? const Value.absent()
          : Value(imgpath),
      purchaseReason: purchaseReason == null && nullToAbsent
          ? const Value.absent()
          : Value(purchaseReason),
      purchaseLocation: purchaseLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(purchaseLocation),
      purchaseCost: purchaseCost == null && nullToAbsent
          ? const Value.absent()
          : Value(purchaseCost),
    );
  }

  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Item(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      category: serializer.fromJson<String>(json['category']),
      description: serializer.fromJson<String?>(json['description']),
      imgpath: serializer.fromJson<String?>(json['imgpath']),
      purchaseReason: serializer.fromJson<String?>(json['purchaseReason']),
      purchaseLocation: serializer.fromJson<String?>(json['purchaseLocation']),
      purchaseCost: serializer.fromJson<double?>(json['purchaseCost']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'startDate': serializer.toJson<DateTime>(startDate),
      'category': serializer.toJson<String>(category),
      'description': serializer.toJson<String?>(description),
      'imgpath': serializer.toJson<String?>(imgpath),
      'purchaseReason': serializer.toJson<String?>(purchaseReason),
      'purchaseLocation': serializer.toJson<String?>(purchaseLocation),
      'purchaseCost': serializer.toJson<double?>(purchaseCost),
    };
  }

  Item copyWith(
          {int? id,
          String? name,
          DateTime? startDate,
          String? category,
          Value<String?> description = const Value.absent(),
          Value<String?> imgpath = const Value.absent(),
          Value<String?> purchaseReason = const Value.absent(),
          Value<String?> purchaseLocation = const Value.absent(),
          Value<double?> purchaseCost = const Value.absent()}) =>
      Item(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        category: category ?? this.category,
        description: description.present ? description.value : this.description,
        imgpath: imgpath.present ? imgpath.value : this.imgpath,
        purchaseReason:
            purchaseReason.present ? purchaseReason.value : this.purchaseReason,
        purchaseLocation: purchaseLocation.present
            ? purchaseLocation.value
            : this.purchaseLocation,
        purchaseCost:
            purchaseCost.present ? purchaseCost.value : this.purchaseCost,
      );
  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('category: $category, ')
          ..write('description: $description, ')
          ..write('imgpath: $imgpath, ')
          ..write('purchaseReason: $purchaseReason, ')
          ..write('purchaseLocation: $purchaseLocation, ')
          ..write('purchaseCost: $purchaseCost')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, startDate, category, description,
      imgpath, purchaseReason, purchaseLocation, purchaseCost);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          other.id == this.id &&
          other.name == this.name &&
          other.startDate == this.startDate &&
          other.category == this.category &&
          other.description == this.description &&
          other.imgpath == this.imgpath &&
          other.purchaseReason == this.purchaseReason &&
          other.purchaseLocation == this.purchaseLocation &&
          other.purchaseCost == this.purchaseCost);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime> startDate;
  final Value<String> category;
  final Value<String?> description;
  final Value<String?> imgpath;
  final Value<String?> purchaseReason;
  final Value<String?> purchaseLocation;
  final Value<double?> purchaseCost;
  const ItemsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.startDate = const Value.absent(),
    this.category = const Value.absent(),
    this.description = const Value.absent(),
    this.imgpath = const Value.absent(),
    this.purchaseReason = const Value.absent(),
    this.purchaseLocation = const Value.absent(),
    this.purchaseCost = const Value.absent(),
  });
  ItemsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required DateTime startDate,
    required String category,
    this.description = const Value.absent(),
    this.imgpath = const Value.absent(),
    this.purchaseReason = const Value.absent(),
    this.purchaseLocation = const Value.absent(),
    this.purchaseCost = const Value.absent(),
  })  : name = Value(name),
        startDate = Value(startDate),
        category = Value(category);
  static Insertable<Item> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime>? startDate,
    Expression<String>? category,
    Expression<String>? description,
    Expression<String>? imgpath,
    Expression<String>? purchaseReason,
    Expression<String>? purchaseLocation,
    Expression<double>? purchaseCost,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (startDate != null) 'start_date': startDate,
      if (category != null) 'category': category,
      if (description != null) 'description': description,
      if (imgpath != null) 'imgpath': imgpath,
      if (purchaseReason != null) 'purchase_reason': purchaseReason,
      if (purchaseLocation != null) 'purchase_location': purchaseLocation,
      if (purchaseCost != null) 'purchase_cost': purchaseCost,
    });
  }

  ItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<DateTime>? startDate,
      Value<String>? category,
      Value<String?>? description,
      Value<String?>? imgpath,
      Value<String?>? purchaseReason,
      Value<String?>? purchaseLocation,
      Value<double?>? purchaseCost}) {
    return ItemsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      category: category ?? this.category,
      description: description ?? this.description,
      imgpath: imgpath ?? this.imgpath,
      purchaseReason: purchaseReason ?? this.purchaseReason,
      purchaseLocation: purchaseLocation ?? this.purchaseLocation,
      purchaseCost: purchaseCost ?? this.purchaseCost,
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
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (imgpath.present) {
      map['imgpath'] = Variable<String>(imgpath.value);
    }
    if (purchaseReason.present) {
      map['purchase_reason'] = Variable<String>(purchaseReason.value);
    }
    if (purchaseLocation.present) {
      map['purchase_location'] = Variable<String>(purchaseLocation.value);
    }
    if (purchaseCost.present) {
      map['purchase_cost'] = Variable<double>(purchaseCost.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('startDate: $startDate, ')
          ..write('category: $category, ')
          ..write('description: $description, ')
          ..write('imgpath: $imgpath, ')
          ..write('purchaseReason: $purchaseReason, ')
          ..write('purchaseLocation: $purchaseLocation, ')
          ..write('purchaseCost: $purchaseCost')
          ..write(')'))
        .toString();
  }
}

class $MaintenanceRecordsTable extends MaintenanceRecords
    with TableInfo<$MaintenanceRecordsTable, MaintenanceRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaintenanceRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _costMeta = const VerificationMeta('cost');
  @override
  late final GeneratedColumn<double> cost = GeneratedColumn<double>(
      'cost', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _resultMeta = const VerificationMeta('result');
  @override
  late final GeneratedColumn<String> result = GeneratedColumn<String>(
      'result', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imgpathMeta =
      const VerificationMeta('imgpath');
  @override
  late final GeneratedColumn<String> imgpath = GeneratedColumn<String>(
      'imgpath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES items(id) NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, date, location, cost, result, imgpath, itemId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'maintenance_records';
  @override
  VerificationContext validateIntegrity(Insertable<MaintenanceRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    }
    if (data.containsKey('cost')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['cost']!, _costMeta));
    }
    if (data.containsKey('result')) {
      context.handle(_resultMeta,
          result.isAcceptableOrUnknown(data['result']!, _resultMeta));
    }
    if (data.containsKey('imgpath')) {
      context.handle(_imgpathMeta,
          imgpath.isAcceptableOrUnknown(data['imgpath']!, _imgpathMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MaintenanceRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaintenanceRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      cost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cost']),
      result: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}result']),
      imgpath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}imgpath']),
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
    );
  }

  @override
  $MaintenanceRecordsTable createAlias(String alias) {
    return $MaintenanceRecordsTable(attachedDatabase, alias);
  }
}

class MaintenanceRecord extends DataClass
    implements Insertable<MaintenanceRecord> {
  final int id;
  final DateTime date;
  final String? location;
  final double? cost;
  final String? result;
  final String? imgpath;
  final int itemId;
  const MaintenanceRecord(
      {required this.id,
      required this.date,
      this.location,
      this.cost,
      this.result,
      this.imgpath,
      required this.itemId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    if (!nullToAbsent || cost != null) {
      map['cost'] = Variable<double>(cost);
    }
    if (!nullToAbsent || result != null) {
      map['result'] = Variable<String>(result);
    }
    if (!nullToAbsent || imgpath != null) {
      map['imgpath'] = Variable<String>(imgpath);
    }
    map['item_id'] = Variable<int>(itemId);
    return map;
  }

  MaintenanceRecordsCompanion toCompanion(bool nullToAbsent) {
    return MaintenanceRecordsCompanion(
      id: Value(id),
      date: Value(date),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      cost: cost == null && nullToAbsent ? const Value.absent() : Value(cost),
      result:
          result == null && nullToAbsent ? const Value.absent() : Value(result),
      imgpath: imgpath == null && nullToAbsent
          ? const Value.absent()
          : Value(imgpath),
      itemId: Value(itemId),
    );
  }

  factory MaintenanceRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaintenanceRecord(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      location: serializer.fromJson<String?>(json['location']),
      cost: serializer.fromJson<double?>(json['cost']),
      result: serializer.fromJson<String?>(json['result']),
      imgpath: serializer.fromJson<String?>(json['imgpath']),
      itemId: serializer.fromJson<int>(json['itemId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'location': serializer.toJson<String?>(location),
      'cost': serializer.toJson<double?>(cost),
      'result': serializer.toJson<String?>(result),
      'imgpath': serializer.toJson<String?>(imgpath),
      'itemId': serializer.toJson<int>(itemId),
    };
  }

  MaintenanceRecord copyWith(
          {int? id,
          DateTime? date,
          Value<String?> location = const Value.absent(),
          Value<double?> cost = const Value.absent(),
          Value<String?> result = const Value.absent(),
          Value<String?> imgpath = const Value.absent(),
          int? itemId}) =>
      MaintenanceRecord(
        id: id ?? this.id,
        date: date ?? this.date,
        location: location.present ? location.value : this.location,
        cost: cost.present ? cost.value : this.cost,
        result: result.present ? result.value : this.result,
        imgpath: imgpath.present ? imgpath.value : this.imgpath,
        itemId: itemId ?? this.itemId,
      );
  @override
  String toString() {
    return (StringBuffer('MaintenanceRecord(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('location: $location, ')
          ..write('cost: $cost, ')
          ..write('result: $result, ')
          ..write('imgpath: $imgpath, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, date, location, cost, result, imgpath, itemId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaintenanceRecord &&
          other.id == this.id &&
          other.date == this.date &&
          other.location == this.location &&
          other.cost == this.cost &&
          other.result == this.result &&
          other.imgpath == this.imgpath &&
          other.itemId == this.itemId);
}

class MaintenanceRecordsCompanion extends UpdateCompanion<MaintenanceRecord> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<String?> location;
  final Value<double?> cost;
  final Value<String?> result;
  final Value<String?> imgpath;
  final Value<int> itemId;
  const MaintenanceRecordsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.location = const Value.absent(),
    this.cost = const Value.absent(),
    this.result = const Value.absent(),
    this.imgpath = const Value.absent(),
    this.itemId = const Value.absent(),
  });
  MaintenanceRecordsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
    this.location = const Value.absent(),
    this.cost = const Value.absent(),
    this.result = const Value.absent(),
    this.imgpath = const Value.absent(),
    required int itemId,
  })  : date = Value(date),
        itemId = Value(itemId);
  static Insertable<MaintenanceRecord> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<String>? location,
    Expression<double>? cost,
    Expression<String>? result,
    Expression<String>? imgpath,
    Expression<int>? itemId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (location != null) 'location': location,
      if (cost != null) 'cost': cost,
      if (result != null) 'result': result,
      if (imgpath != null) 'imgpath': imgpath,
      if (itemId != null) 'item_id': itemId,
    });
  }

  MaintenanceRecordsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? date,
      Value<String?>? location,
      Value<double?>? cost,
      Value<String?>? result,
      Value<String?>? imgpath,
      Value<int>? itemId}) {
    return MaintenanceRecordsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      location: location ?? this.location,
      cost: cost ?? this.cost,
      result: result ?? this.result,
      imgpath: imgpath ?? this.imgpath,
      itemId: itemId ?? this.itemId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (cost.present) {
      map['cost'] = Variable<double>(cost.value);
    }
    if (result.present) {
      map['result'] = Variable<String>(result.value);
    }
    if (imgpath.present) {
      map['imgpath'] = Variable<String>(imgpath.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaintenanceRecordsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('location: $location, ')
          ..write('cost: $cost, ')
          ..write('result: $result, ')
          ..write('imgpath: $imgpath, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }
}

class $UseRecordsTable extends UseRecords
    with TableInfo<$UseRecordsTable, UseRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UseRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _thoughtsMeta =
      const VerificationMeta('thoughts');
  @override
  late final GeneratedColumn<String> thoughts = GeneratedColumn<String>(
      'thoughts', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prosConsMeta =
      const VerificationMeta('prosCons');
  @override
  late final GeneratedColumn<String> prosCons = GeneratedColumn<String>(
      'pros_cons', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imgpathMeta =
      const VerificationMeta('imgpath');
  @override
  late final GeneratedColumn<String> imgpath = GeneratedColumn<String>(
      'imgpath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES items(id) NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, date, thoughts, prosCons, imgpath, itemId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'use_records';
  @override
  VerificationContext validateIntegrity(Insertable<UseRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('thoughts')) {
      context.handle(_thoughtsMeta,
          thoughts.isAcceptableOrUnknown(data['thoughts']!, _thoughtsMeta));
    }
    if (data.containsKey('pros_cons')) {
      context.handle(_prosConsMeta,
          prosCons.isAcceptableOrUnknown(data['pros_cons']!, _prosConsMeta));
    }
    if (data.containsKey('imgpath')) {
      context.handle(_imgpathMeta,
          imgpath.isAcceptableOrUnknown(data['imgpath']!, _imgpathMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UseRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UseRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      thoughts: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thoughts']),
      prosCons: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pros_cons']),
      imgpath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}imgpath']),
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
    );
  }

  @override
  $UseRecordsTable createAlias(String alias) {
    return $UseRecordsTable(attachedDatabase, alias);
  }
}

class UseRecord extends DataClass implements Insertable<UseRecord> {
  final int id;
  final DateTime date;
  final String? thoughts;
  final String? prosCons;
  final String? imgpath;
  final int itemId;
  const UseRecord(
      {required this.id,
      required this.date,
      this.thoughts,
      this.prosCons,
      this.imgpath,
      required this.itemId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || thoughts != null) {
      map['thoughts'] = Variable<String>(thoughts);
    }
    if (!nullToAbsent || prosCons != null) {
      map['pros_cons'] = Variable<String>(prosCons);
    }
    if (!nullToAbsent || imgpath != null) {
      map['imgpath'] = Variable<String>(imgpath);
    }
    map['item_id'] = Variable<int>(itemId);
    return map;
  }

  UseRecordsCompanion toCompanion(bool nullToAbsent) {
    return UseRecordsCompanion(
      id: Value(id),
      date: Value(date),
      thoughts: thoughts == null && nullToAbsent
          ? const Value.absent()
          : Value(thoughts),
      prosCons: prosCons == null && nullToAbsent
          ? const Value.absent()
          : Value(prosCons),
      imgpath: imgpath == null && nullToAbsent
          ? const Value.absent()
          : Value(imgpath),
      itemId: Value(itemId),
    );
  }

  factory UseRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UseRecord(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      thoughts: serializer.fromJson<String?>(json['thoughts']),
      prosCons: serializer.fromJson<String?>(json['prosCons']),
      imgpath: serializer.fromJson<String?>(json['imgpath']),
      itemId: serializer.fromJson<int>(json['itemId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'thoughts': serializer.toJson<String?>(thoughts),
      'prosCons': serializer.toJson<String?>(prosCons),
      'imgpath': serializer.toJson<String?>(imgpath),
      'itemId': serializer.toJson<int>(itemId),
    };
  }

  UseRecord copyWith(
          {int? id,
          DateTime? date,
          Value<String?> thoughts = const Value.absent(),
          Value<String?> prosCons = const Value.absent(),
          Value<String?> imgpath = const Value.absent(),
          int? itemId}) =>
      UseRecord(
        id: id ?? this.id,
        date: date ?? this.date,
        thoughts: thoughts.present ? thoughts.value : this.thoughts,
        prosCons: prosCons.present ? prosCons.value : this.prosCons,
        imgpath: imgpath.present ? imgpath.value : this.imgpath,
        itemId: itemId ?? this.itemId,
      );
  @override
  String toString() {
    return (StringBuffer('UseRecord(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('thoughts: $thoughts, ')
          ..write('prosCons: $prosCons, ')
          ..write('imgpath: $imgpath, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, date, thoughts, prosCons, imgpath, itemId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UseRecord &&
          other.id == this.id &&
          other.date == this.date &&
          other.thoughts == this.thoughts &&
          other.prosCons == this.prosCons &&
          other.imgpath == this.imgpath &&
          other.itemId == this.itemId);
}

class UseRecordsCompanion extends UpdateCompanion<UseRecord> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<String?> thoughts;
  final Value<String?> prosCons;
  final Value<String?> imgpath;
  final Value<int> itemId;
  const UseRecordsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.thoughts = const Value.absent(),
    this.prosCons = const Value.absent(),
    this.imgpath = const Value.absent(),
    this.itemId = const Value.absent(),
  });
  UseRecordsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
    this.thoughts = const Value.absent(),
    this.prosCons = const Value.absent(),
    this.imgpath = const Value.absent(),
    required int itemId,
  })  : date = Value(date),
        itemId = Value(itemId);
  static Insertable<UseRecord> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<String>? thoughts,
    Expression<String>? prosCons,
    Expression<String>? imgpath,
    Expression<int>? itemId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (thoughts != null) 'thoughts': thoughts,
      if (prosCons != null) 'pros_cons': prosCons,
      if (imgpath != null) 'imgpath': imgpath,
      if (itemId != null) 'item_id': itemId,
    });
  }

  UseRecordsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? date,
      Value<String?>? thoughts,
      Value<String?>? prosCons,
      Value<String?>? imgpath,
      Value<int>? itemId}) {
    return UseRecordsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      thoughts: thoughts ?? this.thoughts,
      prosCons: prosCons ?? this.prosCons,
      imgpath: imgpath ?? this.imgpath,
      itemId: itemId ?? this.itemId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (thoughts.present) {
      map['thoughts'] = Variable<String>(thoughts.value);
    }
    if (prosCons.present) {
      map['pros_cons'] = Variable<String>(prosCons.value);
    }
    if (imgpath.present) {
      map['imgpath'] = Variable<String>(imgpath.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UseRecordsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('thoughts: $thoughts, ')
          ..write('prosCons: $prosCons, ')
          ..write('imgpath: $imgpath, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }
}

class $EndInfosTable extends EndInfos with TableInfo<$EndInfosTable, EndInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EndInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
      'reason', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _summaryMeta =
      const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'summary', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _finalTagsMeta =
      const VerificationMeta('finalTags');
  @override
  late final GeneratedColumn<String> finalTags = GeneratedColumn<String>(
      'final_tags', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imgpathMeta =
      const VerificationMeta('imgpath');
  @override
  late final GeneratedColumn<String> imgpath = GeneratedColumn<String>(
      'imgpath', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES items(id) NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, reason, summary, finalTags, imgpath, itemId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'end_infos';
  @override
  VerificationContext validateIntegrity(Insertable<EndInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('reason')) {
      context.handle(_reasonMeta,
          reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta));
    }
    if (data.containsKey('summary')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta));
    }
    if (data.containsKey('final_tags')) {
      context.handle(_finalTagsMeta,
          finalTags.isAcceptableOrUnknown(data['final_tags']!, _finalTagsMeta));
    }
    if (data.containsKey('imgpath')) {
      context.handle(_imgpathMeta,
          imgpath.isAcceptableOrUnknown(data['imgpath']!, _imgpathMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EndInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EndInfo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      reason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reason']),
      summary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}summary']),
      finalTags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}final_tags']),
      imgpath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}imgpath']),
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
    );
  }

  @override
  $EndInfosTable createAlias(String alias) {
    return $EndInfosTable(attachedDatabase, alias);
  }
}

class EndInfo extends DataClass implements Insertable<EndInfo> {
  final int id;
  final String? reason;
  final String? summary;
  final String? finalTags;
  final String? imgpath;
  final int itemId;
  const EndInfo(
      {required this.id,
      this.reason,
      this.summary,
      this.finalTags,
      this.imgpath,
      required this.itemId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || reason != null) {
      map['reason'] = Variable<String>(reason);
    }
    if (!nullToAbsent || summary != null) {
      map['summary'] = Variable<String>(summary);
    }
    if (!nullToAbsent || finalTags != null) {
      map['final_tags'] = Variable<String>(finalTags);
    }
    if (!nullToAbsent || imgpath != null) {
      map['imgpath'] = Variable<String>(imgpath);
    }
    map['item_id'] = Variable<int>(itemId);
    return map;
  }

  EndInfosCompanion toCompanion(bool nullToAbsent) {
    return EndInfosCompanion(
      id: Value(id),
      reason:
          reason == null && nullToAbsent ? const Value.absent() : Value(reason),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      finalTags: finalTags == null && nullToAbsent
          ? const Value.absent()
          : Value(finalTags),
      imgpath: imgpath == null && nullToAbsent
          ? const Value.absent()
          : Value(imgpath),
      itemId: Value(itemId),
    );
  }

  factory EndInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EndInfo(
      id: serializer.fromJson<int>(json['id']),
      reason: serializer.fromJson<String?>(json['reason']),
      summary: serializer.fromJson<String?>(json['summary']),
      finalTags: serializer.fromJson<String?>(json['finalTags']),
      imgpath: serializer.fromJson<String?>(json['imgpath']),
      itemId: serializer.fromJson<int>(json['itemId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'reason': serializer.toJson<String?>(reason),
      'summary': serializer.toJson<String?>(summary),
      'finalTags': serializer.toJson<String?>(finalTags),
      'imgpath': serializer.toJson<String?>(imgpath),
      'itemId': serializer.toJson<int>(itemId),
    };
  }

  EndInfo copyWith(
          {int? id,
          Value<String?> reason = const Value.absent(),
          Value<String?> summary = const Value.absent(),
          Value<String?> finalTags = const Value.absent(),
          Value<String?> imgpath = const Value.absent(),
          int? itemId}) =>
      EndInfo(
        id: id ?? this.id,
        reason: reason.present ? reason.value : this.reason,
        summary: summary.present ? summary.value : this.summary,
        finalTags: finalTags.present ? finalTags.value : this.finalTags,
        imgpath: imgpath.present ? imgpath.value : this.imgpath,
        itemId: itemId ?? this.itemId,
      );
  @override
  String toString() {
    return (StringBuffer('EndInfo(')
          ..write('id: $id, ')
          ..write('reason: $reason, ')
          ..write('summary: $summary, ')
          ..write('finalTags: $finalTags, ')
          ..write('imgpath: $imgpath, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, reason, summary, finalTags, imgpath, itemId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EndInfo &&
          other.id == this.id &&
          other.reason == this.reason &&
          other.summary == this.summary &&
          other.finalTags == this.finalTags &&
          other.imgpath == this.imgpath &&
          other.itemId == this.itemId);
}

class EndInfosCompanion extends UpdateCompanion<EndInfo> {
  final Value<int> id;
  final Value<String?> reason;
  final Value<String?> summary;
  final Value<String?> finalTags;
  final Value<String?> imgpath;
  final Value<int> itemId;
  const EndInfosCompanion({
    this.id = const Value.absent(),
    this.reason = const Value.absent(),
    this.summary = const Value.absent(),
    this.finalTags = const Value.absent(),
    this.imgpath = const Value.absent(),
    this.itemId = const Value.absent(),
  });
  EndInfosCompanion.insert({
    this.id = const Value.absent(),
    this.reason = const Value.absent(),
    this.summary = const Value.absent(),
    this.finalTags = const Value.absent(),
    this.imgpath = const Value.absent(),
    required int itemId,
  }) : itemId = Value(itemId);
  static Insertable<EndInfo> custom({
    Expression<int>? id,
    Expression<String>? reason,
    Expression<String>? summary,
    Expression<String>? finalTags,
    Expression<String>? imgpath,
    Expression<int>? itemId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reason != null) 'reason': reason,
      if (summary != null) 'summary': summary,
      if (finalTags != null) 'final_tags': finalTags,
      if (imgpath != null) 'imgpath': imgpath,
      if (itemId != null) 'item_id': itemId,
    });
  }

  EndInfosCompanion copyWith(
      {Value<int>? id,
      Value<String?>? reason,
      Value<String?>? summary,
      Value<String?>? finalTags,
      Value<String?>? imgpath,
      Value<int>? itemId}) {
    return EndInfosCompanion(
      id: id ?? this.id,
      reason: reason ?? this.reason,
      summary: summary ?? this.summary,
      finalTags: finalTags ?? this.finalTags,
      imgpath: imgpath ?? this.imgpath,
      itemId: itemId ?? this.itemId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (finalTags.present) {
      map['final_tags'] = Variable<String>(finalTags.value);
    }
    if (imgpath.present) {
      map['imgpath'] = Variable<String>(imgpath.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EndInfosCompanion(')
          ..write('id: $id, ')
          ..write('reason: $reason, ')
          ..write('summary: $summary, ')
          ..write('finalTags: $finalTags, ')
          ..write('imgpath: $imgpath, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }
}

class $CategoryStatsTable extends CategoryStats
    with TableInfo<$CategoryStatsTable, CategoryStat> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryStatsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _itemCountMeta =
      const VerificationMeta('itemCount');
  @override
  late final GeneratedColumn<int> itemCount = GeneratedColumn<int>(
      'item_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalCostMeta =
      const VerificationMeta('totalCost');
  @override
  late final GeneratedColumn<double> totalCost = GeneratedColumn<double>(
      'total_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _averageLifespanMeta =
      const VerificationMeta('averageLifespan');
  @override
  late final GeneratedColumn<double> averageLifespan = GeneratedColumn<double>(
      'average_lifespan', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [category, itemCount, totalCost, averageLifespan];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_stats';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryStat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('item_count')) {
      context.handle(_itemCountMeta,
          itemCount.isAcceptableOrUnknown(data['item_count']!, _itemCountMeta));
    } else if (isInserting) {
      context.missing(_itemCountMeta);
    }
    if (data.containsKey('total_cost')) {
      context.handle(_totalCostMeta,
          totalCost.isAcceptableOrUnknown(data['total_cost']!, _totalCostMeta));
    } else if (isInserting) {
      context.missing(_totalCostMeta);
    }
    if (data.containsKey('average_lifespan')) {
      context.handle(
          _averageLifespanMeta,
          averageLifespan.isAcceptableOrUnknown(
              data['average_lifespan']!, _averageLifespanMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CategoryStat map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryStat(
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      itemCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_count'])!,
      totalCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_cost'])!,
      averageLifespan: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}average_lifespan']),
    );
  }

  @override
  $CategoryStatsTable createAlias(String alias) {
    return $CategoryStatsTable(attachedDatabase, alias);
  }
}

class CategoryStat extends DataClass implements Insertable<CategoryStat> {
  final String category;
  final int itemCount;
  final double totalCost;
  final double? averageLifespan;
  const CategoryStat(
      {required this.category,
      required this.itemCount,
      required this.totalCost,
      this.averageLifespan});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category'] = Variable<String>(category);
    map['item_count'] = Variable<int>(itemCount);
    map['total_cost'] = Variable<double>(totalCost);
    if (!nullToAbsent || averageLifespan != null) {
      map['average_lifespan'] = Variable<double>(averageLifespan);
    }
    return map;
  }

  CategoryStatsCompanion toCompanion(bool nullToAbsent) {
    return CategoryStatsCompanion(
      category: Value(category),
      itemCount: Value(itemCount),
      totalCost: Value(totalCost),
      averageLifespan: averageLifespan == null && nullToAbsent
          ? const Value.absent()
          : Value(averageLifespan),
    );
  }

  factory CategoryStat.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryStat(
      category: serializer.fromJson<String>(json['category']),
      itemCount: serializer.fromJson<int>(json['itemCount']),
      totalCost: serializer.fromJson<double>(json['totalCost']),
      averageLifespan: serializer.fromJson<double?>(json['averageLifespan']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'category': serializer.toJson<String>(category),
      'itemCount': serializer.toJson<int>(itemCount),
      'totalCost': serializer.toJson<double>(totalCost),
      'averageLifespan': serializer.toJson<double?>(averageLifespan),
    };
  }

  CategoryStat copyWith(
          {String? category,
          int? itemCount,
          double? totalCost,
          Value<double?> averageLifespan = const Value.absent()}) =>
      CategoryStat(
        category: category ?? this.category,
        itemCount: itemCount ?? this.itemCount,
        totalCost: totalCost ?? this.totalCost,
        averageLifespan: averageLifespan.present
            ? averageLifespan.value
            : this.averageLifespan,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryStat(')
          ..write('category: $category, ')
          ..write('itemCount: $itemCount, ')
          ..write('totalCost: $totalCost, ')
          ..write('averageLifespan: $averageLifespan')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(category, itemCount, totalCost, averageLifespan);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryStat &&
          other.category == this.category &&
          other.itemCount == this.itemCount &&
          other.totalCost == this.totalCost &&
          other.averageLifespan == this.averageLifespan);
}

class CategoryStatsCompanion extends UpdateCompanion<CategoryStat> {
  final Value<String> category;
  final Value<int> itemCount;
  final Value<double> totalCost;
  final Value<double?> averageLifespan;
  final Value<int> rowid;
  const CategoryStatsCompanion({
    this.category = const Value.absent(),
    this.itemCount = const Value.absent(),
    this.totalCost = const Value.absent(),
    this.averageLifespan = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoryStatsCompanion.insert({
    required String category,
    required int itemCount,
    required double totalCost,
    this.averageLifespan = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : category = Value(category),
        itemCount = Value(itemCount),
        totalCost = Value(totalCost);
  static Insertable<CategoryStat> custom({
    Expression<String>? category,
    Expression<int>? itemCount,
    Expression<double>? totalCost,
    Expression<double>? averageLifespan,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (category != null) 'category': category,
      if (itemCount != null) 'item_count': itemCount,
      if (totalCost != null) 'total_cost': totalCost,
      if (averageLifespan != null) 'average_lifespan': averageLifespan,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoryStatsCompanion copyWith(
      {Value<String>? category,
      Value<int>? itemCount,
      Value<double>? totalCost,
      Value<double?>? averageLifespan,
      Value<int>? rowid}) {
    return CategoryStatsCompanion(
      category: category ?? this.category,
      itemCount: itemCount ?? this.itemCount,
      totalCost: totalCost ?? this.totalCost,
      averageLifespan: averageLifespan ?? this.averageLifespan,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (itemCount.present) {
      map['item_count'] = Variable<int>(itemCount.value);
    }
    if (totalCost.present) {
      map['total_cost'] = Variable<double>(totalCost.value);
    }
    if (averageLifespan.present) {
      map['average_lifespan'] = Variable<double>(averageLifespan.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryStatsCompanion(')
          ..write('category: $category, ')
          ..write('itemCount: $itemCount, ')
          ..write('totalCost: $totalCost, ')
          ..write('averageLifespan: $averageLifespan, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OverallStatsTable extends OverallStats
    with TableInfo<$OverallStatsTable, OverallStat> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OverallStatsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _totalItemsMeta =
      const VerificationMeta('totalItems');
  @override
  late final GeneratedColumn<int> totalItems = GeneratedColumn<int>(
      'total_items', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalCostMeta =
      const VerificationMeta('totalCost');
  @override
  late final GeneratedColumn<double> totalCost = GeneratedColumn<double>(
      'total_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _averageLifespanMeta =
      const VerificationMeta('averageLifespan');
  @override
  late final GeneratedColumn<double> averageLifespan = GeneratedColumn<double>(
      'average_lifespan', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _evaluationStatsMeta =
      const VerificationMeta('evaluationStats');
  @override
  late final GeneratedColumn<String> evaluationStats = GeneratedColumn<String>(
      'evaluation_stats', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, totalItems, totalCost, averageLifespan, evaluationStats];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'overall_stats';
  @override
  VerificationContext validateIntegrity(Insertable<OverallStat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('total_items')) {
      context.handle(
          _totalItemsMeta,
          totalItems.isAcceptableOrUnknown(
              data['total_items']!, _totalItemsMeta));
    } else if (isInserting) {
      context.missing(_totalItemsMeta);
    }
    if (data.containsKey('total_cost')) {
      context.handle(_totalCostMeta,
          totalCost.isAcceptableOrUnknown(data['total_cost']!, _totalCostMeta));
    } else if (isInserting) {
      context.missing(_totalCostMeta);
    }
    if (data.containsKey('average_lifespan')) {
      context.handle(
          _averageLifespanMeta,
          averageLifespan.isAcceptableOrUnknown(
              data['average_lifespan']!, _averageLifespanMeta));
    }
    if (data.containsKey('evaluation_stats')) {
      context.handle(
          _evaluationStatsMeta,
          evaluationStats.isAcceptableOrUnknown(
              data['evaluation_stats']!, _evaluationStatsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OverallStat map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OverallStat(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      totalItems: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_items'])!,
      totalCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_cost'])!,
      averageLifespan: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}average_lifespan']),
      evaluationStats: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}evaluation_stats']),
    );
  }

  @override
  $OverallStatsTable createAlias(String alias) {
    return $OverallStatsTable(attachedDatabase, alias);
  }
}

class OverallStat extends DataClass implements Insertable<OverallStat> {
  final int id;
  final int totalItems;
  final double totalCost;
  final double? averageLifespan;
  final String? evaluationStats;
  const OverallStat(
      {required this.id,
      required this.totalItems,
      required this.totalCost,
      this.averageLifespan,
      this.evaluationStats});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['total_items'] = Variable<int>(totalItems);
    map['total_cost'] = Variable<double>(totalCost);
    if (!nullToAbsent || averageLifespan != null) {
      map['average_lifespan'] = Variable<double>(averageLifespan);
    }
    if (!nullToAbsent || evaluationStats != null) {
      map['evaluation_stats'] = Variable<String>(evaluationStats);
    }
    return map;
  }

  OverallStatsCompanion toCompanion(bool nullToAbsent) {
    return OverallStatsCompanion(
      id: Value(id),
      totalItems: Value(totalItems),
      totalCost: Value(totalCost),
      averageLifespan: averageLifespan == null && nullToAbsent
          ? const Value.absent()
          : Value(averageLifespan),
      evaluationStats: evaluationStats == null && nullToAbsent
          ? const Value.absent()
          : Value(evaluationStats),
    );
  }

  factory OverallStat.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OverallStat(
      id: serializer.fromJson<int>(json['id']),
      totalItems: serializer.fromJson<int>(json['totalItems']),
      totalCost: serializer.fromJson<double>(json['totalCost']),
      averageLifespan: serializer.fromJson<double?>(json['averageLifespan']),
      evaluationStats: serializer.fromJson<String?>(json['evaluationStats']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'totalItems': serializer.toJson<int>(totalItems),
      'totalCost': serializer.toJson<double>(totalCost),
      'averageLifespan': serializer.toJson<double?>(averageLifespan),
      'evaluationStats': serializer.toJson<String?>(evaluationStats),
    };
  }

  OverallStat copyWith(
          {int? id,
          int? totalItems,
          double? totalCost,
          Value<double?> averageLifespan = const Value.absent(),
          Value<String?> evaluationStats = const Value.absent()}) =>
      OverallStat(
        id: id ?? this.id,
        totalItems: totalItems ?? this.totalItems,
        totalCost: totalCost ?? this.totalCost,
        averageLifespan: averageLifespan.present
            ? averageLifespan.value
            : this.averageLifespan,
        evaluationStats: evaluationStats.present
            ? evaluationStats.value
            : this.evaluationStats,
      );
  @override
  String toString() {
    return (StringBuffer('OverallStat(')
          ..write('id: $id, ')
          ..write('totalItems: $totalItems, ')
          ..write('totalCost: $totalCost, ')
          ..write('averageLifespan: $averageLifespan, ')
          ..write('evaluationStats: $evaluationStats')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, totalItems, totalCost, averageLifespan, evaluationStats);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OverallStat &&
          other.id == this.id &&
          other.totalItems == this.totalItems &&
          other.totalCost == this.totalCost &&
          other.averageLifespan == this.averageLifespan &&
          other.evaluationStats == this.evaluationStats);
}

class OverallStatsCompanion extends UpdateCompanion<OverallStat> {
  final Value<int> id;
  final Value<int> totalItems;
  final Value<double> totalCost;
  final Value<double?> averageLifespan;
  final Value<String?> evaluationStats;
  const OverallStatsCompanion({
    this.id = const Value.absent(),
    this.totalItems = const Value.absent(),
    this.totalCost = const Value.absent(),
    this.averageLifespan = const Value.absent(),
    this.evaluationStats = const Value.absent(),
  });
  OverallStatsCompanion.insert({
    this.id = const Value.absent(),
    required int totalItems,
    required double totalCost,
    this.averageLifespan = const Value.absent(),
    this.evaluationStats = const Value.absent(),
  })  : totalItems = Value(totalItems),
        totalCost = Value(totalCost);
  static Insertable<OverallStat> custom({
    Expression<int>? id,
    Expression<int>? totalItems,
    Expression<double>? totalCost,
    Expression<double>? averageLifespan,
    Expression<String>? evaluationStats,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (totalItems != null) 'total_items': totalItems,
      if (totalCost != null) 'total_cost': totalCost,
      if (averageLifespan != null) 'average_lifespan': averageLifespan,
      if (evaluationStats != null) 'evaluation_stats': evaluationStats,
    });
  }

  OverallStatsCompanion copyWith(
      {Value<int>? id,
      Value<int>? totalItems,
      Value<double>? totalCost,
      Value<double?>? averageLifespan,
      Value<String?>? evaluationStats}) {
    return OverallStatsCompanion(
      id: id ?? this.id,
      totalItems: totalItems ?? this.totalItems,
      totalCost: totalCost ?? this.totalCost,
      averageLifespan: averageLifespan ?? this.averageLifespan,
      evaluationStats: evaluationStats ?? this.evaluationStats,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (totalItems.present) {
      map['total_items'] = Variable<int>(totalItems.value);
    }
    if (totalCost.present) {
      map['total_cost'] = Variable<double>(totalCost.value);
    }
    if (averageLifespan.present) {
      map['average_lifespan'] = Variable<double>(averageLifespan.value);
    }
    if (evaluationStats.present) {
      map['evaluation_stats'] = Variable<String>(evaluationStats.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OverallStatsCompanion(')
          ..write('id: $id, ')
          ..write('totalItems: $totalItems, ')
          ..write('totalCost: $totalCost, ')
          ..write('averageLifespan: $averageLifespan, ')
          ..write('evaluationStats: $evaluationStats')
          ..write(')'))
        .toString();
  }
}

class $ItemCollectionsTable extends ItemCollections
    with TableInfo<$ItemCollectionsTable, ItemCollection> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemCollectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemsMeta = const VerificationMeta('items');
  @override
  late final GeneratedColumn<String> items = GeneratedColumn<String>(
      'items', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, items];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_collections';
  @override
  VerificationContext validateIntegrity(Insertable<ItemCollection> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('items')) {
      context.handle(
          _itemsMeta, items.isAcceptableOrUnknown(data['items']!, _itemsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemCollection map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemCollection(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      items: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}items']),
    );
  }

  @override
  $ItemCollectionsTable createAlias(String alias) {
    return $ItemCollectionsTable(attachedDatabase, alias);
  }
}

class ItemCollection extends DataClass implements Insertable<ItemCollection> {
  final int id;
  final String? items;
  const ItemCollection({required this.id, this.items});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || items != null) {
      map['items'] = Variable<String>(items);
    }
    return map;
  }

  ItemCollectionsCompanion toCompanion(bool nullToAbsent) {
    return ItemCollectionsCompanion(
      id: Value(id),
      items:
          items == null && nullToAbsent ? const Value.absent() : Value(items),
    );
  }

  factory ItemCollection.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemCollection(
      id: serializer.fromJson<int>(json['id']),
      items: serializer.fromJson<String?>(json['items']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'items': serializer.toJson<String?>(items),
    };
  }

  ItemCollection copyWith(
          {int? id, Value<String?> items = const Value.absent()}) =>
      ItemCollection(
        id: id ?? this.id,
        items: items.present ? items.value : this.items,
      );
  @override
  String toString() {
    return (StringBuffer('ItemCollection(')
          ..write('id: $id, ')
          ..write('items: $items')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, items);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemCollection &&
          other.id == this.id &&
          other.items == this.items);
}

class ItemCollectionsCompanion extends UpdateCompanion<ItemCollection> {
  final Value<int> id;
  final Value<String?> items;
  const ItemCollectionsCompanion({
    this.id = const Value.absent(),
    this.items = const Value.absent(),
  });
  ItemCollectionsCompanion.insert({
    this.id = const Value.absent(),
    this.items = const Value.absent(),
  });
  static Insertable<ItemCollection> custom({
    Expression<int>? id,
    Expression<String>? items,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (items != null) 'items': items,
    });
  }

  ItemCollectionsCompanion copyWith({Value<int>? id, Value<String?>? items}) {
    return ItemCollectionsCompanion(
      id: id ?? this.id,
      items: items ?? this.items,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (items.present) {
      map['items'] = Variable<String>(items.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemCollectionsCompanion(')
          ..write('id: $id, ')
          ..write('items: $items')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $ItemsTable items = $ItemsTable(this);
  late final $MaintenanceRecordsTable maintenanceRecords =
      $MaintenanceRecordsTable(this);
  late final $UseRecordsTable useRecords = $UseRecordsTable(this);
  late final $EndInfosTable endInfos = $EndInfosTable(this);
  late final $CategoryStatsTable categoryStats = $CategoryStatsTable(this);
  late final $OverallStatsTable overallStats = $OverallStatsTable(this);
  late final $ItemCollectionsTable itemCollections =
      $ItemCollectionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        items,
        maintenanceRecords,
        useRecords,
        endInfos,
        categoryStats,
        overallStats,
        itemCollections
      ];
}
