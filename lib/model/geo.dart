library geo;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'geo.g.dart';

abstract class Geo implements Built<Geo, GeoBuilder> {
  Geo._();

  factory Geo([updates(GeoBuilder b)]) = _$Geo;

  @BuiltValueField(wireName: 'lat')
  String get lat;
  @BuiltValueField(wireName: 'lng')
  String get lng;

  String toJson() {
    return json.encode(serializers.serializeWith(Geo.serializer, this));
  }

  static Geo fromJson(String jsonString) {
    return serializers.deserializeWith(Geo.serializer, json.decode(jsonString));
  }

  static Serializer<Geo> get serializer => _$geoSerializer;
}
