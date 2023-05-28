import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourtsRecord extends FirestoreRecord {
  CourtsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "is_indoor" field.
  bool? _isIndoor;
  bool get isIndoor => _isIndoor ?? false;
  bool hasIsIndoor() => _isIndoor != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _likes = snapshotData['likes'] as int?;
    _value = castToType<double>(snapshotData['value']);
    _imageUrl = snapshotData['image_url'] as String?;
    _isIndoor = snapshotData['is_indoor'] as bool?;
    _videoUrl = snapshotData['video_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courts');

  static Stream<CourtsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourtsRecord.fromSnapshot(s));

  static Future<CourtsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourtsRecord.fromSnapshot(s));

  static CourtsRecord fromSnapshot(DocumentSnapshot snapshot) => CourtsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourtsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourtsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourtsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCourtsRecordData({
  String? name,
  LatLng? location,
  DateTime? createdAt,
  DocumentReference? user,
  String? description,
  int? likes,
  double? value,
  String? imageUrl,
  bool? isIndoor,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'created_at': createdAt,
      'user': user,
      'description': description,
      'likes': likes,
      'value': value,
      'image_url': imageUrl,
      'is_indoor': isIndoor,
      'video_url': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}
