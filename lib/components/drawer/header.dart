import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  final bool isColapsed;

  const CustomDrawerHeader({
    Key? key,
    required this.isColapsed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(size: 30),
          if (isColapsed) const SizedBox(width: 10),
          if (isColapsed)
            const Expanded(
              flex: 3,
              child: Text(
                'FlyCompany',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                maxLines: 1,
              ),
            ),
          if (isColapsed) const Spacer(),
          if (isColapsed)
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
