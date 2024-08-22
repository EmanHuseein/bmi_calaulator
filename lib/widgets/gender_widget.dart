import 'package:flutter/cupertino.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key, required this.image, required this.gentype, required this.isSelect, required this.onTap});

  final String image;
  final String gentype;
  final bool isSelect;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelect? const Color(0xff333244) : const Color(0xff24263B),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              height: 96,
              width: 96,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              gentype,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff8B8C9E),
              ),
            )
          ],
        ),
      ),
    );
  }
}
