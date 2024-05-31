class Reportes {
  Reportes({
    ///id, score, desc, name, horastart, duracipon
    required this.id,
    required this.fecha,
    required this.cliente,
    required this.soporte,
    required this.reportid,
    required this.descripcion,
    required this.calificacion,
  });

  int id;
  String fecha;
  String cliente;
  String soporte;
  int reportid;
  String descripcion;
  int calificacion;

  factory Reportes.fromJson(Map<String, dynamic> json) => Reportes(
        id: json["id"],
        fecha: json["fecha"],
        cliente: json["cliente"],
        soporte: json["soporte"],
        reportid: json["reportid"],
        descripcion: json["descripcion"],
        calificacion: json["calificacion"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fecha": fecha,
        "cliente": cliente,
        "soporte": soporte,
        "reportid": reportid,
        "descripcion": descripcion,
        "calificacion": calificacion,
      };
}
