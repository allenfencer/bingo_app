class LoginModel {
  String id;
  String name;
  String email;
  String phone;
  String password;
  String address;
  String v;

  LoginModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.address,
      required this.v});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      address: json['address'],
      v: json['__v'],
    );
  }
}
