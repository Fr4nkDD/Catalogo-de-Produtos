import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardRecord extends FirestoreRecord {
  CardRecord._(
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

  // "qtd" field.
  double? _qtd;
  double get qtd => _qtd ?? 0.0;
  bool hasQtd() => _qtd != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _img = snapshotData['img'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qtd = castToType<double>(snapshotData['qtd']);
    _name = snapshotData['name'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('card');

  static Stream<CardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardRecord.fromSnapshot(s));

  static Future<CardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardRecord.fromSnapshot(s));

  static CardRecord fromSnapshot(DocumentSnapshot snapshot) => CardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardRecordData({
  String? img,
  double? preco,
  double? qtd,
  String? name,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img': img,
      'preco': preco,
      'qtd': qtd,
      'name': name,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardRecordDocumentEquality implements Equality<CardRecord> {
  const CardRecordDocumentEquality();

  @override
  bool equals(CardRecord? e1, CardRecord? e2) {
    return e1?.img == e2?.img &&
        e1?.preco == e2?.preco &&
        e1?.qtd == e2?.qtd &&
        e1?.name == e2?.name &&
        e1?.users == e2?.users;
  }

  @override
  int hash(CardRecord? e) =>
      const ListEquality().hash([e?.img, e?.preco, e?.qtd, e?.name, e?.users]);

  @override
  bool isValidKey(Object? o) => o is CardRecord;
}
