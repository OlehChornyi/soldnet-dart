import 'package:path/path.dart' as p;

String extentionGet(String path) {
  return p.extension(path).toLowerCase();
}
