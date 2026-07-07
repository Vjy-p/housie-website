import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class CommonFunctions {
  Future<void> openPlayStore() async {
    const playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.game.thambola';

    //  const playStoreUrl ="https://play.google.com/apps/testing/com.game.thambola";

    // const appStoreUrl = 'https://apps.apple.com/app/id=com.game.thambola';
    // final String storeUrl;
    // if (defaultTargetPlatform == TargetPlatform.iOS ||
    //     defaultTargetPlatform == TargetPlatform.macOS) {
    //   storeUrl = appStoreUrl;
    // } else {
    //   storeUrl = playStoreUrl;
    // }

    final uri = Uri.parse(playStoreUrl);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open app store');
    }
  }

  // Future<void> sendEmail() async {
  //   const email = 'housieconnect@gmail.com';
  //   const subject = 'Support';

  //   final bool isMobile =
  //       defaultTargetPlatform == TargetPlatform.android ||
  //       defaultTargetPlatform == TargetPlatform.iOS;

  //   final Uri emailUri;

  //   if (kIsWeb && !isMobile) {
  //     // Desktop / laptop browser → Gmail web
  //     emailUri = Uri.https('mail.google.com', '/mail/', {
  //       'view': 'cm',
  //       'fs': '1',
  //       'to': email,
  //       'su': subject,
  //     });
  //   } else {
  //     // Android / iPhone → default email app
  //     emailUri = Uri(
  //       scheme: 'mailto',
  //       path: email,
  //       queryParameters: {'subject': subject},
  //     );
  //   }

  //   try {
  //     await launchUrl(
  //       emailUri,
  //       mode: kIsWeb && !isMobile
  //           ? LaunchMode.platformDefault
  //           : LaunchMode.externalApplication,
  //       webOnlyWindowName: kIsWeb && !isMobile ? '_blank' : null,
  //     );

  //     log('Opening email');
  //   } catch (e) {
  //     log("Can't open email: $e");
  //   }
  // }
  Future<void> sendEmail() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map(
            (MapEntry<String, String> e) =>
                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
          )
          .join('&');
    }

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'housieconnect@gmail.com',
      query: encodeQueryParameters(<String, String>{'subject': 'Support'}),
    );

    try {
      await launchUrl(emailUri);
      log("sending an email");
    } catch (e) {
      log("\nCan't make a send an email $e");
      // customToast(message: "Can't make a send an email");
    }
  }
}
