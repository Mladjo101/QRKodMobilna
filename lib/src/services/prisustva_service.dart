import 'package:dio/dio.dart';
import 'package:starter_project_flutter/src/services/base_service.dart';

import '../data/models/response/base/postavke/postavke_model.dart';
import '../data/models/response/predavanje/predavanje_historija_item.dart';
import '../helpers/shared_preferences.dart';
import '../startup.dart';

class PrisustvaService extends BaseService {
  Future<PredavanjeHistorijaItem> getPrisustva() async {
    var model =  singleton.get<SharedPreferencesHelper>().getIdentity();
    var korisnikId = model!.id ?? '';
    try {
      final response = await dio.get('api/user/predavanja/$korisnikId');
      return PredavanjeHistorijaItem.fromJson(response.data);
    } on DioError catch (err) {
      throw err;
    } catch (e) {
      throw e.toString();
    }
  }
}
