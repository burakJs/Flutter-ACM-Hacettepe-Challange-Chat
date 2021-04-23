class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance => _instance ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toJpg('ben');

  String toJpg(String name) => 'assets/images/$name.jpg';
}
