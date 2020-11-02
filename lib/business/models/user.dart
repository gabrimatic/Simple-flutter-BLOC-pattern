import 'package:simple_flutter_bloc/data/repository.dart';

class UserModel {
  final int id;
  final String name;
  final int number;

  UserModel({this.id, this.name, this.number});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    if (map == null) return null;
    return UserModel(
      id: map['id'],
      name: map['name'],
      number: map['number'],
    );
  }

  UserModel copyWith({
    int id,
    String name,
    String number,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      number: number ?? this.number,
    );
  }

  static Future<List<UserModel>> getAllUsers() async {
    var data = await Data.getData();
    var list = List<UserModel>();

    data.forEach((element) {
      list.add(UserModel.fromJson(element));
    });

    return list;
  }
}
