import 'package:url_launcher/url_launcher.dart';

Future<void> launchStringUrl(String urlString) async {
  Uri url = Uri.parse(urlString);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    print('Could not launch $url');
  }
}