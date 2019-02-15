library address;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'address.g.dart';

abstract class Address<T> implements Built<Address<T>, AddressBuilder<T>> {
  Address._();

  factory Address([updates(AddressBuilder<T> b)]) = _$Address<T>;

  @BuiltValueField(wireName: 'street')
  String get street;
  @BuiltValueField(wireName: 'suite')
  String get suite;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'zipcode')
  String get zipcode;
  @BuiltValueField(wireName: 'geo')
  T get geo;

  String toJson() {
    return json.encode(serializers.serializeWith(Address.serializer, this));
  }

  static Address fromJson(String jsonString) {
    return serializers.deserializeWith(
        Address.serializer, json.decode(jsonString));
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
