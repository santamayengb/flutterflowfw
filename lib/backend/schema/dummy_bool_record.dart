import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dummy_bool_record.g.dart';

abstract class DummyBoolRecord
    implements Built<DummyBoolRecord, DummyBoolRecordBuilder> {
  static Serializer<DummyBoolRecord> get serializer =>
      _$dummyBoolRecordSerializer;

  @nullable
  bool get dummybool;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DummyBoolRecordBuilder builder) =>
      builder..dummybool = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dummyBool');

  static Stream<DummyBoolRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DummyBoolRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DummyBoolRecord._();
  factory DummyBoolRecord([void Function(DummyBoolRecordBuilder) updates]) =
      _$DummyBoolRecord;

  static DummyBoolRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDummyBoolRecordData({
  bool dummybool,
}) =>
    serializers.toFirestore(DummyBoolRecord.serializer,
        DummyBoolRecord((d) => d..dummybool = dummybool));
