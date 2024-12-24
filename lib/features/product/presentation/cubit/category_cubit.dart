import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<String> {
  final List<String> categories = [
    "all",
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing",
  ];

  CategoryCubit() : super("all"); // Default to "all"

  void selectCategory(int index) {
    emit(categories[index]);
  }
}
