import 'package:deezer_app/common/utils/result.dart';
import 'package:deezer_app/data/models/play_list.dart';
import 'package:deezer_app/data/repository/deezer_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetPlayListUseCase {
  Future<Result<List<PlayList>>> call();
}

@Injectable(as: GetPlayListUseCase)
class GetPlayListUseCaseImpl implements GetPlayListUseCase {
  final DeezerRepository repository;

  @override
  Future<Result<List<PlayList>>> call() async {
    return Result.success(await repository.playList);
  }

  GetPlayListUseCaseImpl(this.repository);
}
