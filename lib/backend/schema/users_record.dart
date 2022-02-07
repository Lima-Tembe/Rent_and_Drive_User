import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get bi;

  @nullable
  String get morada;

  @nullable
  String get tpcliente;

  @nullable
  @BuiltValueField(wireName: 'bank_name')
  String get bankName;

  @nullable
  @BuiltValueField(wireName: 'beneficiary_name')
  String get beneficiaryName;

  @nullable
  @BuiltValueField(wireName: 'bank_validate')
  String get bankValidate;

  @nullable
  @BuiltValueField(wireName: 'CVC')
  int get cvc;

  @nullable
  @BuiltValueField(wireName: 'card_number')
  int get cardNumber;

  @nullable
  @BuiltValueField(wireName: 'total_spent')
  int get totalSpent;

  @nullable
  DocumentReference get myrent;

  @nullable
  DocumentReference get allRefRefs;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..photoUrl = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..bi = ''
    ..morada = ''
    ..tpcliente = ''
    ..bankName = ''
    ..beneficiaryName = ''
    ..bankValidate = ''
    ..cvc = 0
    ..cardNumber = 0
    ..totalSpent = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String uid,
  String photoUrl,
  String displayName,
  DateTime createdTime,
  String phoneNumber,
  String bi,
  String morada,
  String tpcliente,
  String bankName,
  String beneficiaryName,
  String bankValidate,
  int cvc,
  int cardNumber,
  int totalSpent,
  DocumentReference myrent,
  DocumentReference allRefRefs,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..uid = uid
          ..photoUrl = photoUrl
          ..displayName = displayName
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..bi = bi
          ..morada = morada
          ..tpcliente = tpcliente
          ..bankName = bankName
          ..beneficiaryName = beneficiaryName
          ..bankValidate = bankValidate
          ..cvc = cvc
          ..cardNumber = cardNumber
          ..totalSpent = totalSpent
          ..myrent = myrent
          ..allRefRefs = allRefRefs));
