// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarsRecord> _$carsRecordSerializer = new _$CarsRecordSerializer();

class _$CarsRecordSerializer implements StructuredSerializer<CarsRecord> {
  @override
  final Iterable<Type> types = const [CarsRecord, _$CarsRecord];
  @override
  final String wireName = 'CarsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CarsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.apoliceNumber;
    if (value != null) {
      result
        ..add('apolice_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.availability;
    if (value != null) {
      result
        ..add('availability')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maintenance;
    if (value != null) {
      result
        ..add('maintenance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inspection;
    if (value != null) {
      result
        ..add('inspection')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CarsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'apolice_number':
          result.apoliceNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'availability':
          result.availability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maintenance':
          result.maintenance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inspection':
          result.inspection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CarsRecord extends CarsRecord {
  @override
  final String name;
  @override
  final int price;
  @override
  final String apoliceNumber;
  @override
  final String availability;
  @override
  final String maintenance;
  @override
  final String inspection;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$CarsRecord([void Function(CarsRecordBuilder) updates]) =>
      (new CarsRecordBuilder()..update(updates)).build();

  _$CarsRecord._(
      {this.name,
      this.price,
      this.apoliceNumber,
      this.availability,
      this.maintenance,
      this.inspection,
      this.image,
      this.reference})
      : super._();

  @override
  CarsRecord rebuild(void Function(CarsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarsRecordBuilder toBuilder() => new CarsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarsRecord &&
        name == other.name &&
        price == other.price &&
        apoliceNumber == other.apoliceNumber &&
        availability == other.availability &&
        maintenance == other.maintenance &&
        inspection == other.inspection &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), price.hashCode),
                            apoliceNumber.hashCode),
                        availability.hashCode),
                    maintenance.hashCode),
                inspection.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CarsRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('apoliceNumber', apoliceNumber)
          ..add('availability', availability)
          ..add('maintenance', maintenance)
          ..add('inspection', inspection)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class CarsRecordBuilder implements Builder<CarsRecord, CarsRecordBuilder> {
  _$CarsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  String _apoliceNumber;
  String get apoliceNumber => _$this._apoliceNumber;
  set apoliceNumber(String apoliceNumber) =>
      _$this._apoliceNumber = apoliceNumber;

  String _availability;
  String get availability => _$this._availability;
  set availability(String availability) => _$this._availability = availability;

  String _maintenance;
  String get maintenance => _$this._maintenance;
  set maintenance(String maintenance) => _$this._maintenance = maintenance;

  String _inspection;
  String get inspection => _$this._inspection;
  set inspection(String inspection) => _$this._inspection = inspection;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CarsRecordBuilder() {
    CarsRecord._initializeBuilder(this);
  }

  CarsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _apoliceNumber = $v.apoliceNumber;
      _availability = $v.availability;
      _maintenance = $v.maintenance;
      _inspection = $v.inspection;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarsRecord;
  }

  @override
  void update(void Function(CarsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CarsRecord build() {
    final _$result = _$v ??
        new _$CarsRecord._(
            name: name,
            price: price,
            apoliceNumber: apoliceNumber,
            availability: availability,
            maintenance: maintenance,
            inspection: inspection,
            image: image,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
