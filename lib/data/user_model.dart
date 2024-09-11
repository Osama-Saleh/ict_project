// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String? image;
  String? name;
  String? titleJop;
  int? age;

  UserModel({
    this.image,
    this.name,
    this.titleJop,
    this.age,
  });

  static List<UserModel> userModelList = [
    UserModel(
        image: 'assets/image/person1.jpg',
        name: 'kareem',
        titleJop: 'Programer1',
        age: 20,
        ),
    UserModel(
        image: 'assets/image/person2.jpg',
        name: 'adham',
        titleJop: 'Programer2',
        age: 21,
        ),
    UserModel(
        image: 'assets/image/person3.jpg',
        name: 'mark',
        titleJop: 'Programer3',
        age: 22,
        ),
  ];
}
