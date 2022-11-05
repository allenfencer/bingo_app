class CreateUserModel {
  String name;
  String email;
  String phone;
  String password;
  String address;
  String id;
  String v;

  CreateUserModel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.address,
      required this.id,
      required this.v});


  factory CreateUserModel.fromJson(Map<String,dynamic> json){
    return CreateUserModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      address: json['address'],
      id: json['_id'],
      v: json['__v'],
    );
  }
}
