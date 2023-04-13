// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooksRecord> _$booksRecordSerializer = new _$BooksRecordSerializer();

class _$BooksRecordSerializer implements StructuredSerializer<BooksRecord> {
  @override
  final Iterable<Type> types = const [BooksRecord, _$BooksRecord];
  @override
  final String wireName = 'BooksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BooksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.judul;
    if (value != null) {
      result
        ..add('judul')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.penulis;
    if (value != null) {
      result
        ..add('penulis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.penerbit;
    if (value != null) {
      result
        ..add('penerbit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kategori;
    if (value != null) {
      result
        ..add('kategori')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jumlahHalaman;
    if (value != null) {
      result
        ..add('jumlahHalaman')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.harga;
    if (value != null) {
      result
        ..add('harga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sinopsis;
    if (value != null) {
      result
        ..add('sinopsis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BooksRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'judul':
          result.judul = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'penulis':
          result.penulis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'penerbit':
          result.penerbit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'kategori':
          result.kategori = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jumlahHalaman':
          result.jumlahHalaman = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'harga':
          result.harga = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'sinopsis':
          result.sinopsis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BooksRecord extends BooksRecord {
  @override
  final String? judul;
  @override
  final String? penulis;
  @override
  final String? penerbit;
  @override
  final String? kategori;
  @override
  final int? jumlahHalaman;
  @override
  final double? harga;
  @override
  final String? sinopsis;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BooksRecord([void Function(BooksRecordBuilder)? updates]) =>
      (new BooksRecordBuilder()..update(updates))._build();

  _$BooksRecord._(
      {this.judul,
      this.penulis,
      this.penerbit,
      this.kategori,
      this.jumlahHalaman,
      this.harga,
      this.sinopsis,
      this.ffRef})
      : super._();

  @override
  BooksRecord rebuild(void Function(BooksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksRecordBuilder toBuilder() => new BooksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksRecord &&
        judul == other.judul &&
        penulis == other.penulis &&
        penerbit == other.penerbit &&
        kategori == other.kategori &&
        jumlahHalaman == other.jumlahHalaman &&
        harga == other.harga &&
        sinopsis == other.sinopsis &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, judul.hashCode);
    _$hash = $jc(_$hash, penulis.hashCode);
    _$hash = $jc(_$hash, penerbit.hashCode);
    _$hash = $jc(_$hash, kategori.hashCode);
    _$hash = $jc(_$hash, jumlahHalaman.hashCode);
    _$hash = $jc(_$hash, harga.hashCode);
    _$hash = $jc(_$hash, sinopsis.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BooksRecord')
          ..add('judul', judul)
          ..add('penulis', penulis)
          ..add('penerbit', penerbit)
          ..add('kategori', kategori)
          ..add('jumlahHalaman', jumlahHalaman)
          ..add('harga', harga)
          ..add('sinopsis', sinopsis)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BooksRecordBuilder implements Builder<BooksRecord, BooksRecordBuilder> {
  _$BooksRecord? _$v;

  String? _judul;
  String? get judul => _$this._judul;
  set judul(String? judul) => _$this._judul = judul;

  String? _penulis;
  String? get penulis => _$this._penulis;
  set penulis(String? penulis) => _$this._penulis = penulis;

  String? _penerbit;
  String? get penerbit => _$this._penerbit;
  set penerbit(String? penerbit) => _$this._penerbit = penerbit;

  String? _kategori;
  String? get kategori => _$this._kategori;
  set kategori(String? kategori) => _$this._kategori = kategori;

  int? _jumlahHalaman;
  int? get jumlahHalaman => _$this._jumlahHalaman;
  set jumlahHalaman(int? jumlahHalaman) =>
      _$this._jumlahHalaman = jumlahHalaman;

  double? _harga;
  double? get harga => _$this._harga;
  set harga(double? harga) => _$this._harga = harga;

  String? _sinopsis;
  String? get sinopsis => _$this._sinopsis;
  set sinopsis(String? sinopsis) => _$this._sinopsis = sinopsis;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BooksRecordBuilder() {
    BooksRecord._initializeBuilder(this);
  }

  BooksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _judul = $v.judul;
      _penulis = $v.penulis;
      _penerbit = $v.penerbit;
      _kategori = $v.kategori;
      _jumlahHalaman = $v.jumlahHalaman;
      _harga = $v.harga;
      _sinopsis = $v.sinopsis;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BooksRecord;
  }

  @override
  void update(void Function(BooksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BooksRecord build() => _build();

  _$BooksRecord _build() {
    final _$result = _$v ??
        new _$BooksRecord._(
            judul: judul,
            penulis: penulis,
            penerbit: penerbit,
            kategori: kategori,
            jumlahHalaman: jumlahHalaman,
            harga: harga,
            sinopsis: sinopsis,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
