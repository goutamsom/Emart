import 'package:emart_app/consts/consts.dart';

Widget bgWidget({
  Widget? child,
}) {
  return Container(
    decoration: BoxDecoration(
        image: const DecorationImage(
            fit: BoxFit.fill, image: AssetImage(imgBackground)),
        color: Colors.white),
    child: child,
  );
}
