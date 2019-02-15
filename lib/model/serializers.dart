import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'user.dart';
import 'address.dart';
import 'geo.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  User,
  Address,
  Geo,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          FullType(User, const [
            const FullType(Address, const [const FullType(Geo)])
          ]),
          () => new UserBuilder<Address<Geo>>())
      ..addBuilderFactory(FullType(Address, const [const FullType(Geo)]),
          () => new AddressBuilder<Geo>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
