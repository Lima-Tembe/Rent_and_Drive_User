import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'all_ref_count_record.g.dart';

abstract class AllRefCountRecord
    implements Built<AllRefCountRecord, AllRefCountRecordBuilder> {
  static Serializer<AllRefCountRecord> get serializer =>
      _$allRefCountRecordSerializer;

  @nullable
  int get carRefCount;

  @nullable
  int get reserveRefCount;

  @nullable
  int get usersRefCount;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AllRefCountRecordBuilder builder) => builder
    ..carRefCount = 0
    ..reserveRefCount = 0
    ..usersRefCount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allRefCount');

  static Stream<AllRefCountRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AllRefCountRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AllRefCountRecord._();
  factory AllRefCountRecord([void Function(AllRefCountRecordBuilder) updates]) =
      _$AllRefCountRecord;

  static AllRefCountRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAllRefCountRecordData({
  int carRefCount,
  int reserveRefCount,
  int usersRefCount,
}) =>
    serializers.toFirestore(
        AllRefCountRecord.serializer,
        AllRefCountRecord((a) => a
          ..carRefCount = carRefCount
          ..reserveRefCount = reserveRefCount
          ..usersRefCount = usersRefCount));
