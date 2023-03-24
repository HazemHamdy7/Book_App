import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBook();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();
}
