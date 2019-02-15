// GENERATED CODE - DO NOT MODIFY BY HAND

part of user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address, specifiedType: parameterT),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new UserBuilder<Object>()
        : serializers.newBuilder(specifiedType) as UserBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User<T> extends User<T> {
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final T address;
  @override
  final String phone;

  factory _$User([void updates(UserBuilder<T> b)]) =>
      (new UserBuilder<T>()..update(updates)).build();

  _$User._({this.id, this.name, this.email, this.address, this.phone})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('User', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('User', 'name');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('User', 'email');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('User', 'address');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('User', 'phone');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('User', 'T');
    }
  }

  @override
  User<T> rebuild(void updates(UserBuilder<T> b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder<T> toBuilder() => new UserBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        address == other.address &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), email.hashCode),
            address.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('address', address)
          ..add('phone', phone))
        .toString();
  }
}

class UserBuilder<T> implements Builder<User<T>, UserBuilder<T>> {
  _$User<T> _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  T _address;
  T get address => _$this._address;
  set address(T address) => _$this._address = address;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  UserBuilder();

  UserBuilder<T> get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _email = _$v.email;
      _address = _$v.address;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User<T>;
  }

  @override
  void update(void updates(UserBuilder<T> b)) {
    if (updates != null) updates(this);
  }

  @override
  _$User<T> build() {
    final _$result = _$v ??
        new _$User<T>._(
            id: id, name: name, email: email, address: address, phone: phone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
