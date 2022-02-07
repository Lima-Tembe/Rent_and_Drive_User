// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_ref_count_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllRefCountRecord> _$allRefCountRecordSerializer =
    new _$AllRefCountRecordSerializer();

class _$AllRefCountRecordSerializer
    implements StructuredSerializer<AllRefCountRecord> {
  @override
  final Iterable<Type> types = const [AllRefCountRecord, _$AllRefCountRecord];
  @override
  final String wireName = 'AllRefCountRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AllRefCountRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.carRefCount;
    if (value != null) {
      result
        ..add('carRefCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reserveRefCount;
    if (value != null) {
      result
        ..add('reserveRefCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.usersRefCount;
    if (value != null) {
      result
        ..add('usersRefCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  AllRefCountRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllRefCountRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'carRefCount':
          result.carRefCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reserveRefCount':
          result.reserveRefCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'usersRefCount':
          result.usersRefCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$AllRefCountRecord extends AllRefCountRecord {
  @override
  final int carRefCount;
  @override
  final int reserveRefCount;
  @override
  final int usersRefCount;
  @override
  final DocumentReference<Object> reference;

  factory _$AllRefCountRecord(
          [void Function(AllRefCountRecordBuilder) updates]) =>
      (new AllRefCountRecordBuilder()..update(updates)).build();

  _$AllRefCountRecord._(
      {this.carRefCount,
      this.reserveRefCount,
      this.usersRefCount,
      this.reference})
      : super._();

  @override
  AllRefCountRecord rebuild(void Function(AllRefCountRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllRefCountRecordBuilder toBuilder() =>
      new AllRefCountRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllRefCountRecord &&
        carRefCount == other.carRefCount &&
        reserveRefCount == other.reserveRefCount &&
        usersRefCount == other.usersRefCount &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, carRefCount.hashCode), reserveRefCount.hashCode),
            usersRefCount.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllRefCountRecord')
          ..add('carRefCount', carRefCount)
          ..add('reserveRefCount', reserveRefCount)
          ..add('usersRefCount', usersRefCount)
          ..add('reference', reference))
        .toString();
  }
}

class AllRefCountRecordBuilder
    implements Builder<AllRefCountRecord, AllRefCountRecordBuilder> {
  _$AllRefCountRecord _$v;

  int _carRefCount;
  int get carRefCount => _$this._carRefCount;
  set carRefCount(int carRefCount) => _$this._carRefCount = carRefCount;

  int _reserveRefCount;
  int get reserveRefCount => _$this._reserveRefCount;
  set reserveRefCount(int reserveRefCount) =>
      _$this._reserveRefCount = reserveRefCount;

  int _usersRefCount;
  int get usersRefCount => _$this._usersRefCount;
  set usersRefCount(int usersRefCount) => _$this._usersRefCount = usersRefCount;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AllRefCountRecordBuilder() {
    AllRefCountRecord._initializeBuilder(this);
  }

  AllRefCountRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carRefCount = $v.carRefCount;
      _reserveRefCount = $v.reserveRefCount;
      _usersRefCount = $v.usersRefCount;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllRefCountRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllRefCountRecord;
  }

  @override
  void update(void Function(AllRefCountRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllRefCountRecord build() {
    final _$result = _$v ??
        new _$AllRefCountRecord._(
            carRefCount: carRefCount,
            reserveRefCount: reserveRefCount,
            usersRefCount: usersRefCount,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
