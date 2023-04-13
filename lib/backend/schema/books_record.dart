import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'books_record.g.dart';

abstract class BooksRecord implements Built<BooksRecord, BooksRecordBuilder> {
  static Serializer<BooksRecord> get serializer => _$booksRecordSerializer;

  String? get judul;

  String? get penulis;

  String? get penerbit;

  String? get kategori;

  int? get jumlahHalaman;

  double? get harga;

  String? get sinopsis;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BooksRecordBuilder builder) => builder
    ..judul = ''
    ..penulis = ''
    ..penerbit = ''
    ..kategori = ''
    ..jumlahHalaman = 0
    ..harga = 0.0
    ..sinopsis = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BooksRecord._();
  factory BooksRecord([void Function(BooksRecordBuilder) updates]) =
      _$BooksRecord;

  static BooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBooksRecordData({
  String? judul,
  String? penulis,
  String? penerbit,
  String? kategori,
  int? jumlahHalaman,
  double? harga,
  String? sinopsis,
}) {
  final firestoreData = serializers.toFirestore(
    BooksRecord.serializer,
    BooksRecord(
      (b) => b
        ..judul = judul
        ..penulis = penulis
        ..penerbit = penerbit
        ..kategori = kategori
        ..jumlahHalaman = jumlahHalaman
        ..harga = harga
        ..sinopsis = sinopsis,
    ),
  );

  return firestoreData;
}
