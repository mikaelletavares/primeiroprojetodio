import 'package:url_launcher/url_launcher.dart';

class OpenLinkedin {
  static Future<void> openLinkedin() async {
    var url = 'https://www.linkedin.com/in/mikaelle-tavares/';
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw "Não foi possível abrir o LinkedIn.";
    }
  }
}
