import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatalogoRecord extends FirestoreRecord {
  CatalogoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "qtd" field.
  double? _qtd;
  double get qtd => _qtd ?? 0.0;
  bool hasQtd() => _qtd != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _desc = snapshotData['desc'] as String?;
    _qtd = castToType<double>(snapshotData['qtd']);
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Catalogo');

  static Stream<CatalogoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatalogoRecord.fromSnapshot(s));

  static Future<CatalogoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatalogoRecord.fromSnapshot(s));

  static CatalogoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CatalogoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatalogoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatalogoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatalogoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatalogoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatalogoRecordData({
  String? img,
  double? preco,
  String? desc,
  double? qtd,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'preco': preco,
      'desc': desc,
      'qtd': qtd,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class CatalogoRecordDocumentEquality implements Equality<CatalogoRecord> {
  const CatalogoRecordDocumentEquality();

  @override
  bool equals(CatalogoRecord? e1, CatalogoRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.preco == e2?.preco &&
        e1?.desc == e2?.desc &&
        e1?.qtd == e2?.qtd &&
        e1?.name == e2?.name;
  }

  @override
  int hash(CatalogoRecord? e) =>
      const ListEquality().hash([e?.img, e?.preco, e?.desc, e?.qtd, e?.name]);

  @override
  bool isValidKey(Object? o) => o is CatalogoRecord;
}
