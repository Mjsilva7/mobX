import 'package:mobx/mobx.dart';
import 'package:xlomobX/models/category.dart';
import 'package:xlomobX/repositories/category_repository.dart';

part 'category_store.g.dart';

class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore with Store {
  _CategoryStore() {
    _loadCategory();
  }

  ObservableList<Category> categoryList = ObservableList();

  @computed
  List<Category> get allCategoryList => List.from(categoryList)
    ..insert(
      0,
      Category(id: '*', description: 'Todas'),
    );

  @action
  void setCategories(List<Category> categories) {
    categoryList.clear();
    categoryList.addAll(categories);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadCategory() async {
    try {
      final categories = await CategoryRepository().getList();
      setCategories(categories);
    } catch (e) {
      setError(e);
    }
  }
}
