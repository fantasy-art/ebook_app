import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ebook_app/features/home/data/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
