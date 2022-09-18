class HomePageViewMode {
  static HomePageViewMode? _instance;

  HomePageViewMode._();

  static HomePageViewMode get instance => _instance ??= HomePageViewMode._();
}
