import 'package:ecommerce_app_with_admin_panel/core/utils/functions/show_custom_btn_sheet.dart';
import 'package:flutter/material.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
          onPressed: () {
            showCustomBottomSheet(context);
          },
          child: const Text(
            "Buy Now",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
