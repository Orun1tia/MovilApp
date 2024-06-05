class User {
  User({
    required this.id,
    required this.email,
    required this.password,
    required this.nombre,
    required this.reportes,
  });

  int id;
  String email;
  int password;
  String nombre;
  int reportes;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"] ?? "someemail",
        password: json["password"] ?? "somepassword",
        nombre: json["nombre"] ?? "someNombre",
        reportes: json["reportes"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "password": password,
        "nombre": nombre,
        "reportes":reportes,
      };
}
