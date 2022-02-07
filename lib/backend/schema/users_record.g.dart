// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bi;
    if (value != null) {
      result
        ..add('bi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.morada;
    if (value != null) {
      result
        ..add('morada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tpcliente;
    if (value != null) {
      result
        ..add('tpcliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankName;
    if (value != null) {
      result
        ..add('bank_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beneficiaryName;
    if (value != null) {
      result
        ..add('beneficiary_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankValidate;
    if (value != null) {
      result
        ..add('bank_validate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cvc;
    if (value != null) {
      result
        ..add('CVC')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cardNumber;
    if (value != null) {
      result
        ..add('card_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalSpent;
    if (value != null) {
      result
        ..add('total_spent')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.myrent;
    if (value != null) {
      result
        ..add('myrent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.allRefRefs;
    if (value != null) {
      result
        ..add('allRefRefs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bi':
          result.bi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'morada':
          result.morada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tpcliente':
          result.tpcliente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bank_name':
          result.bankName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'beneficiary_name':
          result.beneficiaryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bank_validate':
          result.bankValidate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CVC':
          result.cvc = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'card_number':
          result.cardNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_spent':
          result.totalSpent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'myrent':
          result.myrent = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'allRefRefs':
          result.allRefRefs = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String uid;
  @override
  final String photoUrl;
  @override
  final String displayName;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String bi;
  @override
  final String morada;
  @override
  final String tpcliente;
  @override
  final String bankName;
  @override
  final String beneficiaryName;
  @override
  final String bankValidate;
  @override
  final int cvc;
  @override
  final int cardNumber;
  @override
  final int totalSpent;
  @override
  final DocumentReference<Object> myrent;
  @override
  final DocumentReference<Object> allRefRefs;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.uid,
      this.photoUrl,
      this.displayName,
      this.createdTime,
      this.phoneNumber,
      this.bi,
      this.morada,
      this.tpcliente,
      this.bankName,
      this.beneficiaryName,
      this.bankValidate,
      this.cvc,
      this.cardNumber,
      this.totalSpent,
      this.myrent,
      this.allRefRefs,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        displayName == other.displayName &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        bi == other.bi &&
        morada == other.morada &&
        tpcliente == other.tpcliente &&
        bankName == other.bankName &&
        beneficiaryName == other.beneficiaryName &&
        bankValidate == other.bankValidate &&
        cvc == other.cvc &&
        cardNumber == other.cardNumber &&
        totalSpent == other.totalSpent &&
        myrent == other.myrent &&
        allRefRefs == other.allRefRefs &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            email
                                                                                .hashCode),
                                                                        uid
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                displayName
                                                                    .hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    bi.hashCode),
                                                morada.hashCode),
                                            tpcliente.hashCode),
                                        bankName.hashCode),
                                    beneficiaryName.hashCode),
                                bankValidate.hashCode),
                            cvc.hashCode),
                        cardNumber.hashCode),
                    totalSpent.hashCode),
                myrent.hashCode),
            allRefRefs.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('displayName', displayName)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('bi', bi)
          ..add('morada', morada)
          ..add('tpcliente', tpcliente)
          ..add('bankName', bankName)
          ..add('beneficiaryName', beneficiaryName)
          ..add('bankValidate', bankValidate)
          ..add('cvc', cvc)
          ..add('cardNumber', cardNumber)
          ..add('totalSpent', totalSpent)
          ..add('myrent', myrent)
          ..add('allRefRefs', allRefRefs)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _bi;
  String get bi => _$this._bi;
  set bi(String bi) => _$this._bi = bi;

  String _morada;
  String get morada => _$this._morada;
  set morada(String morada) => _$this._morada = morada;

  String _tpcliente;
  String get tpcliente => _$this._tpcliente;
  set tpcliente(String tpcliente) => _$this._tpcliente = tpcliente;

  String _bankName;
  String get bankName => _$this._bankName;
  set bankName(String bankName) => _$this._bankName = bankName;

  String _beneficiaryName;
  String get beneficiaryName => _$this._beneficiaryName;
  set beneficiaryName(String beneficiaryName) =>
      _$this._beneficiaryName = beneficiaryName;

  String _bankValidate;
  String get bankValidate => _$this._bankValidate;
  set bankValidate(String bankValidate) => _$this._bankValidate = bankValidate;

  int _cvc;
  int get cvc => _$this._cvc;
  set cvc(int cvc) => _$this._cvc = cvc;

  int _cardNumber;
  int get cardNumber => _$this._cardNumber;
  set cardNumber(int cardNumber) => _$this._cardNumber = cardNumber;

  int _totalSpent;
  int get totalSpent => _$this._totalSpent;
  set totalSpent(int totalSpent) => _$this._totalSpent = totalSpent;

  DocumentReference<Object> _myrent;
  DocumentReference<Object> get myrent => _$this._myrent;
  set myrent(DocumentReference<Object> myrent) => _$this._myrent = myrent;

  DocumentReference<Object> _allRefRefs;
  DocumentReference<Object> get allRefRefs => _$this._allRefRefs;
  set allRefRefs(DocumentReference<Object> allRefRefs) =>
      _$this._allRefRefs = allRefRefs;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _displayName = $v.displayName;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _bi = $v.bi;
      _morada = $v.morada;
      _tpcliente = $v.tpcliente;
      _bankName = $v.bankName;
      _beneficiaryName = $v.beneficiaryName;
      _bankValidate = $v.bankValidate;
      _cvc = $v.cvc;
      _cardNumber = $v.cardNumber;
      _totalSpent = $v.totalSpent;
      _myrent = $v.myrent;
      _allRefRefs = $v.allRefRefs;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            uid: uid,
            photoUrl: photoUrl,
            displayName: displayName,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            bi: bi,
            morada: morada,
            tpcliente: tpcliente,
            bankName: bankName,
            beneficiaryName: beneficiaryName,
            bankValidate: bankValidate,
            cvc: cvc,
            cardNumber: cardNumber,
            totalSpent: totalSpent,
            myrent: myrent,
            allRefRefs: allRefRefs,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
