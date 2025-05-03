import 'package:flutter/material.dart';
import 'package:meditrack/Core/utils/app_routers.dart';

void main()
{
  runApp(const MediTrack());
}


class MediTrack extends StatelessWidget {
  const MediTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
    );
  }
}