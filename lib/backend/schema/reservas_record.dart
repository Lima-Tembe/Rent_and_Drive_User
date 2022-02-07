import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reservas_record.g.dart';

abstract class ReservasRecord
    implements Built<ReservasRecord, ReservasRecordBuilder> {
  static Serializer<ReservasRecord> get serializer =>
      _$reservasRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'start_day')
  DateTime get startDay;

  @nullable
  @BuiltValueField(wireName: 'end_day')
  DateTime get endDay;

  @nullable
  @BuiltValueField(wireName: 'car_reference')
  DocumentReference get carReference;

  @nullable
  double get paid;

  @nullable
  @BuiltValueField(wireName: 'user_ref')
  DocumentReference get userRef;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReservasRecordBuilder builder) =>
      builder..paid = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservas');

  static Stream<ReservasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReservasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReservasRecord._();
  factory ReservasRecord([void Function(ReservasRecordBuilder) updates]) =
      _$ReservasRecord;

  static ReservasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReservasRecordData({
  DateTime startDay,
  DateTime endDay,
  DocumentReference carReference,
  double paid,
  DocumentReference userRef,
}) =>
    serializers.toFirestore(
        ReservasRecord.serializer,
        ReservasRecord((r) => r
          ..startDay = startDay
          ..endDay = endDay
          ..carReference = carReference
          ..paid = paid
          ..userRef = userRef));
