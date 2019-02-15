# flutter_json_generic_with_built_value

a sample about: deserialize Json string to generic Json model with 'built_value'

## Getting Started

As we know, 'built_value' is a powerful json serialize/deserialize lib, this sample mainly shows how to deal with generic deserialize, especially the nested generic. To tell the truth, it's very inconvenient compared with TypeScript\Java etc.

Step 1: add dependencies
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^0.1.2
  http: ^0.12.0+1
  built_value: ^6.3.0
dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^1.0.0
  built_value_generator: ^6.3.0
  
 Step 2: create json model, here is just a partial data from https://jsonplaceholder.typicode.com/users/2 
 {
  "id": 2,
  "name": "Ervin Howell",
  "email": "Shanna@melissa.tv",
  "address": {
    "street": "Victor Plains",
    "suite": "Suite 879",
    "city": "Wisokyburgh",
    "zipcode": "90566-7771",
    "geo": {
      "lat": "-43.9509",
      "lng": "-34.4618"
    }
  },
  "phone": "010-692-6593 x09125"
}
In this sample, the generic can be similar to User<Address<Geo>>.
Thanx to https://charafau.github.io/json2builtvalue/   we can convert json string to 'built_value' json model with it, and then edit related model to generics type. 

Step 3: add build factory for generics in serializers.
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
  
Step 4: fetch data and deserialize
Future<User<Address<Geo>>> getUser() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/users/2');
  if (response.statusCode == 200) {
    User user = serializers.deserialize(json.decode(response.body),
        specifiedType: FullType(User, const [
          const FullType(Address, const [const FullType(Geo)])
        ]));
    return user;
  } else {
    throw Exception('Failed to get user');
  }
}
