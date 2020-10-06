import 'package:deezer_app/common/utils/result.dart';
import 'package:deezer_app/data/models/play_list.dart';
import 'package:deezer_app/data/repository/deezer_repository.dart';

abstract class GetPlayListUseCase {
  Future<Result<List<PlayList>>> call();
}

class GetPlayListUseCaseImpl implements GetPlayListUseCase {
  DeezerRepository repository;

  @override
  Future<Result<List<PlayList>>> call() async {
    return Result.success(await repository.playList);
  }

  GetPlayListUseCaseImpl(this.repository);
}
