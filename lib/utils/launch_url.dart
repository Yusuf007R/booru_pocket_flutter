import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchStringUrl(String urlString) async {
  Uri url = Uri.parse(urlString);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    Sentry.captureMessage(
      'Could not launch url',
      withScope: (scope) => scope.setExtra('url', urlString),
    );
  }
}
