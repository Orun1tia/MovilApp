// ignore_for_file: override_on_non_overriding_member

import 'dart:convert';
import 'package:loggy/loggy.dart';
import '../../../domain/models/user.dart';
import '../../../domain/models/client.dart';
import '../../../domain/models/report.dart';
import 'package:http/http.dart' as http;


class IUserDataSource{
  final http.Client httpClient;
  final String apiKeyUser = '0QSKzi';
  final String apiKeyClient = 'N9pMJ6';
  final String apiKeyReport = '7ZRgRY';

  IUserDataSource({http.Client? client}) : httpClient = client ?? http.Client();

  @override
  Future<List<User>> getUsers() async {
    List<User> users = [];
    var request = Uri.parse("https://retoolapi.dev/$apiKeyUser/data")

        .resolveUri(Uri(queryParameters: {
      "format": 'json',
    }));

    var response = await httpClient.get(request);

    if (response.statusCode == 200) {
      //logInfo(response.body);
      final data = jsonDecode(response.body);
   
      users = List<User>.from(data.skip(0).map((x) => User.fromJson(x)));
      //users.removeAt(1);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.error('Error code ${response.statusCode}');
    }

    return Future.value(users);
  }

  Future<bool> addUser(User user) async {
    logInfo("Web service, Adding user");

    final response = await httpClient.post(
      Uri.parse("https://retoolapi.dev/$apiKeyUser/data"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 201) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  Future<bool> updateUser(User user) async {
    final response = await httpClient.put(
      Uri.parse("https://retoolapi.dev/$apiKeyUser/data/${user.id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  Future<bool> deleteUser(int id) async {
    final response = await httpClient.delete(
      Uri.parse("https://retoolapi.dev/$apiKeyUser/data/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    logInfo("Deleting user with id $id status code ${response.statusCode}");
    if (response.statusCode == 200) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  Future<bool> addClient(Client client) async {
    logInfo("Web service, Adding client");

    final response = await httpClient.post(
      Uri.parse("https://retoolapi.dev/$apiKeyClient/data"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(client.toJson()),
    );

    if (response.statusCode == 201) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  Future<bool> updateClient(Client client) async {
    final response = await httpClient.put(
      Uri.parse("https://retoolapi.dev/$apiKeyClient/data/${client.id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(client.toJson()),
    );

    if (response.statusCode == 200) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  Future<bool> deleteClient(int id) async {
    final response = await httpClient.delete(
      Uri.parse("https://retoolapi.dev/$apiKeyClient/data/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    logInfo("Deleting client with id $id status code ${response.statusCode}");
    if (response.statusCode == 200) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  Future<List<Client>> getClients() async {
    List<Client> clients = [];
    var request = Uri.parse("https://retoolapi.dev/$apiKeyClient/data")
        .resolveUri(Uri(queryParameters: {
      "format": 'json',
    }));

    var response = await httpClient.get(request);

    if (response.statusCode == 200) {
      //logInfo(response.body);
      final data = jsonDecode(response.body);

      clients = List<Client>.from(data.skip(0).map((x) => Client.fromJson(x)));
      //users.removeAt(1);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.error('Error code ${response.statusCode}');
    }

    return Future.value(clients);
  }

  @override
  Future<bool> addReport(Reportes report) async {
    logInfo("Web service, Adding report");

    final response = await httpClient.post(
      Uri.parse("https://retoolapi.dev/$apiKeyReport/data"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(report.toJson()),
    );

    if (response.statusCode == 201) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  @override
  Future<bool> updateReport(Reportes report) async {
    final response = await httpClient.put(
      Uri.parse("https://retoolapi.dev/$apiKeyReport/data/${report.id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(report.toJson()),
    );

    if (response.statusCode == 200) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  @override
  Future<bool> deleteReport(int id) async {
    final response = await httpClient.delete(
      Uri.parse("https://retoolapi.dev/$apiKeyReport/data/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    logInfo("Deleting report with id $id status code ${response.statusCode}");
    if (response.statusCode == 200) {
      //logInfo(response.body);
      return Future.value(true);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.value(false);
    }
  }

  @override
  Future<List<Reportes>> getReports() async {
    List<Reportes> reports = [];
    var request = Uri.parse("https://retoolapi.dev/$apiKeyReport/data")
        .resolveUri(Uri(queryParameters: {
      "format": 'json',
    }));

    var response = await httpClient.get(request);

    if (response.statusCode == 200) {
      //logInfo(response.body);
      final data = jsonDecode(response.body);

      reports = List<Reportes>.from(data.skip(0).map((x) => Reportes.fromJson(x)));
      //users.removeAt(1);
    } else {
      logError("Got error code ${response.statusCode}");
      return Future.error('Error code ${response.statusCode}');
    }

    return Future.value(reports);
  }
}
