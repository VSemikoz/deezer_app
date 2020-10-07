import 'package:deezer_app/data/models/play_list.dart';
import 'package:injectable/injectable.dart';

abstract class DeezerRepository {
  Future<List<PlayList>> get playList;
}

@Injectable(as: DeezerRepository)
class LocalDeezerRepository implements DeezerRepository {
  @override
  Future<List<PlayList>> get playList async {
    await Future.delayed(Duration(milliseconds: 1500));
    return [//TODO
      PlayList(
          "Pop musicoll",
          13234,
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/56x56-000000-80-0-0.jpg",
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/500x500-000000-80-0-0.jpg"
      ),
      PlayList(
          "Pop musicoll",
          13234,
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/56x56-000000-80-0-0.jpg",
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/500x500-000000-80-0-0.jpg"
      ),
      PlayList(
          "Pop musicoll",
          13234,
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/56x56-000000-80-0-0.jpg",
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/500x500-000000-80-0-0.jpg"
      ),
      PlayList(
          "Pop musicoll",
          13234,
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/56x56-000000-80-0-0.jpg",
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/500x500-000000-80-0-0.jpg"
      ),
      PlayList(
          "Pop musicoll",
          13234,
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/56x56-000000-80-0-0.jpg",
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/500x500-000000-80-0-0.jpg"
      ),
      PlayList(
          "Pop musicoll",
          13234,
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/56x56-000000-80-0-0.jpg",
          "https://e-cdns-images.dzcdn.net/images/cover/067527f35604f3e062b191c574d7b392-2e018122cb56986277102d2041a592c8-39fe38574c7af3181d1e56ad7c03fce3-d73255cfd075311925c3b19be1f490f8/500x500-000000-80-0-0.jpg"
      ),
    ];
  }

  LocalDeezerRepository();
}
