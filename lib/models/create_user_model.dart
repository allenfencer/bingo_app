class CreateUserModel {
  String name;
  String email;
  String phone;
  String password;
  String address;

  CreateUserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.address,
  });

  factory CreateUserModel.fromJson(Map<String, dynamic> json) {
    return CreateUserModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'address': address,
      };
}
