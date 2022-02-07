import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cars_record.g.dart';

abstract class CarsRecord implements Built<CarsRecord, CarsRecordBuilder> {
  static Serializer<CarsRecord> get serializer => _$carsRecordSerializer;

  @nullable
  String get name;

  @nullable
  int get price;

  @nullable
  @BuiltValueField(wireName: 'apolice_number')
  String get apoliceNumber;

  @nullable
  String get availability;

  @nullable
  String get maintenance;

  @nullable
  String get inspection;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CarsRecordBuilder builder) => builder
    ..name = ''
    ..price = 0
    ..apoliceNumber = ''
    ..availability = ''
    ..maintenance = ''
    ..inspection = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars');

  static Stream<CarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CarsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static CarsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => CarsRecord(
        (c) => c
          ..name = snapshot.data['name']
          ..price = snapshot.data['price']
          ..apoliceNumber = snapshot.data['apolice_number']
          ..availability = snapshot.data['availability']
          ..maintenance = snapshot.data['maintenance']
          ..inspection = snapshot.data['inspection']
          ..image = snapshot.data['image']
          ..reference = CarsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<CarsRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'cars',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  CarsRecord._();
  factory CarsRecord([void Function(CarsRecordBuilder) updates]) = _$CarsRecord;

  static CarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCarsRecordData({
  String name,
  int price,
  String apoliceNumber,
  String availability,
  String maintenance,
  String inspection,
  String image,
}) =>
    serializers.toFirestore(
        CarsRecord.serializer,
        CarsRecord((c) => c
          ..name = name
          ..price = price
          ..apoliceNumber = apoliceNumber
          ..availability = availability
          ..maintenance = maintenance
          ..inspection = inspection
          ..image = image));
