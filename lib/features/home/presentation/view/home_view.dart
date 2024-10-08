import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:ecommerce_app_with_admin_panel/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: HomeViewBody(),
    );
  }
}
