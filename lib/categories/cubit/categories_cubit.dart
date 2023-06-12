import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../categories_exports.dart';
import '../data/category_rep.dart';

part 'categories_state.dart';

part 'categories_cubit.freezed.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.categoryRep) : super(const CategoriesState()){
    _getCategories();
  }

  final CategoryRep categoryRep;

  Future<void> _getCategories() async{

    final list = await categoryRep.getCategories();

    emit(state.copyWith(categories: list));
  }
}
