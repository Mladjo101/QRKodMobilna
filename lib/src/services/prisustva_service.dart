import 'package:dio/dio.dart';
import 'package:starter_project_flutter/src/modules/feature1/lecture.dart';
import 'package:starter_project_flutter/src/modules/feature2/subject.dart';
import 'package:starter_project_flutter/src/modules/feature3/user_profile.dart';
import 'package:starter_project_flutter/src/services/base_service.dart';

import '../data/models/response/base/postavke/postavke_model.dart';
import '../data/models/response/predavanje/predavanje_historija_item.dart';
import '../helpers/shared_preferences.dart';
import '../startup.dart';

class PrisustvaService extends BaseService {
  Future<List<PredavanjeHistorijaItem>> getPrisustva() async {
    var model = await singleton.get<SharedPreferencesHelper>().getIdentity();
    var korisnikId = model!.id ?? '';
    try {
      final response = await dio.get('api/user/predavanja/$korisnikId');
      var list = response.data as List;
      List<PredavanjeHistorijaItem> prisustvaList =
          list.map((item) => PredavanjeHistorijaItem.fromJson(item)).toList();
      return prisustvaList;
    } on DioError catch (err) {
      throw err;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<Subject>> fetchSubjects() async {
    var model = await singleton.get<SharedPreferencesHelper>().getIdentity();
    var korisnikId = model!.id ?? '';
    final response = await dio.get('api/user/predavanja/predmet/$korisnikId');
    List<dynamic> data = response.data;
    return data.map((json) => Subject.fromJson(json)).toList();
  }

  Future<UserProfile> fetchUserProfile() async {
    var model = await singleton.get<SharedPreferencesHelper>().getIdentity();
    var korisnikId = model!.id ?? '';

    final response = await dio.get('api/user/profil/$korisnikId');
    return UserProfile.fromJson(response.data);
  }

  Future<UserProfile> scanCode(String code) async {
    var model = await singleton.get<SharedPreferencesHelper>().getIdentity();
    var korisnikId = model!.id ?? '';
    var imePrezime = model.punoIme ?? '';
    final response = await dio.post('api/predavanje/korisnik',
        data: new Lecture(
            predavanjeId: code,
            korisnikId: korisnikId,
            imePrezime: imePrezime,
            nazivPredavanja: " "));
    return UserProfile.fromJson(response.data);
  }
}
