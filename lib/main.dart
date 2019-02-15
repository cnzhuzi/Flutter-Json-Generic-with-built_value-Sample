import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;

import 'model/serializers.dart';
import 'model/user.dart';
import 'model/address.dart';
import 'model/geo.dart';

void main() => runApp(MyApp(
      user: getUser(),
    ));

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

class MyApp extends StatelessWidget {
  final Future<User<Address<Geo>>> user;

  const MyApp({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Json Generic with built_value Sample'),
        ),
        body: Center(
          child: FutureBuilder<User<Address<Geo>>>(
            future: user,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                    'Name: ${snapshot.data.name}\n\nAddress-Street: ${snapshot.data.address.street}\nAddress-City:${snapshot.data.address.city}\n\nLongitude: ${snapshot.data.address.geo.lng}\nLatitude: ${snapshot.data.address.geo.lat}');
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
