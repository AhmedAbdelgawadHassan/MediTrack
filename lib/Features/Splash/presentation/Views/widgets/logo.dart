import 'package:flutter/widgets.dart';
import 'package:meditrack/Core/utils/app_assets.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Center(
            child: Image(
              fit: BoxFit.fill,
              height: 300,
              image: AssetImage(AppAssets.logo),   // logo for Application
            ),
          );
  }
}