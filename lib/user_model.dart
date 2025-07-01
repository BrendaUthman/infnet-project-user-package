class User {
  final int id;
  final String fullName;
  final String email;
  final String phone;

  User({required this.id, required this.fullName, required this.email, required this.phone});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      fullName: '${json['name']['firstname']} ${json['name']['lastname']}',
      email: json['email'],
      phone: json['phone'],
    );
  }
}