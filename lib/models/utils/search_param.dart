enum SearchParam {
  name("Ім'я"),
  rank("Військове звання"),
  profession("Цивільна професія"),
  hobby("Хоббі"),
  none("Скинути фільтр");

  const SearchParam(this.label);

  final String label;
}
