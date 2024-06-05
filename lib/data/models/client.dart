class Client {
  Client({
    required this.id,
    required this.iduser,
    required this.nombre,
  });
  
  int id;
  String iduser;
  String nombre;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json["id"],
        iduser: json["iduser"] ?? "somefulltID", 
        nombre: json["nombre"] ?? "somefulltName",
      );


  Map<String, dynamic> toJson() => {
        "id": id,
        "iduser": iduser,
        "nombre": nombre,
      };
}