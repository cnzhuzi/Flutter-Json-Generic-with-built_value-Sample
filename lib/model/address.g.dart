// GENERATED CODE - DO NOT MODIFY BY HAND

part of address;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Address> _$addressSerializer = new _$AddressSerializer();

class _$AddressSerializer implements StructuredSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];
  @override
  final String wireName = 'Address';

  @override
  Iterable serialize(Serializers serializers, Address object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'suite',
      serializers.serialize(object.suite,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'zipcode',
      serializers.serialize(object.zipcode,
          specifiedType: const FullType(String)),
      'geo',
      serializers.serialize(object.geo, specifiedType: parameterT),
    ];

    return result;
  }

  @override
  Address deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new AddressBuilder<Object>()
        : serializers.newBuilder(specifiedType) as AddressBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'suite':
          result.suite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geo':
          result.geo =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
      }
    }

    return result.build();
  }
}

class _$Address<T> extends Address<T> {
  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final T geo;

  factory _$Address([void updates(AddressBuilder<T> b)]) =>
      (new AddressBuilder<T>()..update(updates)).build();

  _$Address._({this.street, this.suite, this.city, this.zipcode, this.geo})
      : super._() {
    if (street == null) {
      throw new BuiltValueNullFieldError('Address', 'street');
    }
    if (suite == null) {
      throw new BuiltValueNullFieldError('Address', 'suite');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('Address', 'city');
    }
    if (zipcode == null) {
      throw new BuiltValueNullFieldError('Address', 'zipcode');
    }
    if (geo == null) {
      throw new BuiltValueNullFieldError('Address', 'geo');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('Address', 'T');
    }
  }

  @override
  Address<T> rebuild(void updates(AddressBuilder<T> b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder<T> toBuilder() => new AddressBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        street == other.street &&
        suite == other.suite &&
        city == other.city &&
        zipcode == other.zipcode &&
        geo == other.geo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, street.hashCode), suite.hashCode), city.hashCode),
            zipcode.hashCode),
        geo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Address')
          ..add('street', street)
          ..add('suite', suite)
          ..add('city', city)
          ..add('zipcode', zipcode)
          ..add('geo', geo))
        .toString();
  }
}

class AddressBuilder<T> implements Builder<Address<T>, AddressBuilder<T>> {
  _$Address<T> _$v;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _suite;
  String get suite => _$this._suite;
  set suite(String suite) => _$this._suite = suite;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _zipcode;
  String get zipcode => _$this._zipcode;
  set zipcode(String zipcode) => _$this._zipcode = zipcode;

  T _geo;
  T get geo => _$this._geo;
  set geo(T geo) => _$this._geo = geo;

  AddressBuilder();

  AddressBuilder<T> get _$this {
    if (_$v != null) {
      _street = _$v.street;
      _suite = _$v.suite;
      _city = _$v.city;
      _zipcode = _$v.zipcode;
      _geo = _$v.geo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Address<T>;
  }

  @override
  void update(void updates(AddressBuilder<T> b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Address<T> build() {
    final _$result = _$v ??
        new _$Address<T>._(
            street: street,
            suite: suite,
            city: city,
            zipcode: zipcode,
            geo: geo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
