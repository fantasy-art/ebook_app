import 'package:ebook_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ebook_app/features/home/data/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) => emit(FeaturedBooksFailure(failure.errMessage)),
        (books) => emit(FeaturedBooksSuccess(books)));
  }
}
