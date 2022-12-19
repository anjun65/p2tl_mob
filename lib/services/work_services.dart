part of 'services.dart';

class WorkServices {
  static Future<ApiReturnValue<List<WorkModel>>> getWorks(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'work-order';
    var response = await client.get(url);
    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    print(response);
    var data = jsonDecode(response.body);

    print(data);

    List<WorkModel> works =
        (data['data'] as Iterable).map((e) => WorkModel.fromJson(e)).toList();

    return ApiReturnValue(value: works);
  }

  static Future<ApiReturnValue<WorkModel>> submitWork(WorkModel transaction,
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'work-order';

    var response = await client.post(url,
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${User.token}"
        },
        body: jsonEncode(<String, dynamic>{
          'id': transaction.id,
          'keterangan_p2tl': transaction.keteranganP2tl,
        }));

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    WorkModel value = WorkModel.fromJson(data['data']);

    return ApiReturnValue(value: value);
  }
}
