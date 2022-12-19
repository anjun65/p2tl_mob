part of 'services.dart';

class baPemeriksaanServices {
  static Future<ApiReturnValue<List<baPemeriksaan>>> getbaPemeriksaans(
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

    List<baPemeriksaan> works = (data['data'] as Iterable)
        .map((e) => baPemeriksaan.fromJson(e))
        .toList();

    return ApiReturnValue(value: works);
  }

  static Future<ApiReturnValue<baPemeriksaan>> submitbaPemeriksaan(int works_id,
      {File uploadFile, http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'ba-pemeriksaan';

    var response = await client.post(url,
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${User.token}"
        },
        body: jsonEncode(<String, dynamic>{
          'works_id': works_id,
        }));

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    baPemeriksaan value = baPemeriksaan.fromJson(data['data']);

    if (uploadFile != null) {
      print('RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR');
      ApiReturnValue<String> result = await uploadbaFile(uploadFile);
      if (result.value != null) {
        value = value.copyWith(
            path_ba_pemeriksaan:
                "https://p2tl.momen-kita.com/storage/" + result.value);
      }
    }

    return ApiReturnValue(value: value);
  }

  static Future<ApiReturnValue<String>> uploadbaFile(File pictureFile,
      {http.MultipartRequest request}) async {
    String url = baseURL + 'ba-pemeriksaan';
    var uri = Uri.parse(url);

    if (request == null) {
      request = http.MultipartRequest("POST", uri)
        ..headers["Content-Type"] = "application/json"
        ..headers["Authorization"] = "Bearer ${User.token}";
    }

    var multipartFile =
        await http.MultipartFile.fromPath('file', pictureFile.path);
    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      var data = jsonDecode(responseBody);

      String imagePath = data['data'][0];

      return ApiReturnValue(value: imagePath);
    } else {
      return ApiReturnValue(message: 'Uploading Profile Picture Failed');
    }
  }
}
