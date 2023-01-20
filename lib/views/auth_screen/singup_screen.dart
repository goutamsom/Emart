import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textwidget.dart';
import 'package:get/get.dart';
import '../../widgets_common/our_button.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "join the  $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, titile: name),
                customTextField(hint: emailHint, titile: email),
                customTextField(hint: passwordHint, titile: password),
                customTextField(hint: retypePassword, titile: retypePassword),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                //ourButton().box.width(context.screenWidth - 50).make(),

                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: ischeck,
                      onChanged: (newValue) {
                        setState(() {
                          ischeck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              )),
                          TextSpan(
                              text: "&",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              ))
                        ],
                      )),
                    ),
                  ],
                ),
                ourButton(
                        color: ischeck == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(fontFamily: bold, color: fontGrey),
                  ),
                  TextSpan(
                    text: login,
                    style: TextStyle(fontFamily: bold, color: redColor),
                  )
                ])).onTap(() {
                  Get.back();
                }),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
