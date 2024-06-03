class Reportes {
  Reportes({
    ///id, score, desc, name, horastart, duracipon
    required this.id,
    required this.horaI,
    required this.horaF,
    required this.nombreCliente,
    required this.idCliente,
    required this.resumen,
    required this.calificacion,
    required this.nombreUS,
  });

  int id;
  String horaI;
  String horaF;
  String nombreCliente;
  int idCliente;
  String resumen;
  int calificacion;
  String nombreUS;

  factory Reportes.fromJson(Map<String, dynamic> json) => Reportes(
        id: json["id"],
        horaI: json["horaI"],
        horaF: json["horaF"],
        resumen:  json["resumen"],
        nombreCliente: json["nombreCliente"],
        idCliente: json["idCliente"],
        calificacion: json["calificacion"],
        nombreUS: json["nombreUS"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "horaI": horaI,
        "horaF": horaF,
        "nombreCliente": nombreCliente,
        "idCliente": idCliente,
        "resumen": resumen,
        "calificacion": calificacion,
        "nombreUS": nombreUS,
      };
}
