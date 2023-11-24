import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/usecases/use_case.dart';
import 'package:either_dart/src/either.dart';

class NewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  NewestBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failrue, List<BookEntity>>> call([NoParam? param]) async {
    // future edits 
    return await homeRepo.fetchNewestBooks();
  }
}
