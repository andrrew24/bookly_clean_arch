

import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  Future<Either<Failrue,List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failrue,List<BookEntity>>> fetchNewestBooks();
}
