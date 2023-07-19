import 'package:dartz/dartz.dart';
import 'package:ebook_app/core/errors/failures.dart';
import 'package:ebook_app/features/home/data/models/book_models/book_models.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModels>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModels>>> fetchFeatureBooks();
}
