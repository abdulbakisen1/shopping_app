import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';
import 'package:provider_shopping/src/data/utils/routes/app_routes.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              ColorConstants.screencolor,
              ColorConstants.logincolor1
            ],
          ),
        ),
        child: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: size.height * 0.03),
           const Text(
              "Tekrar merhaba!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 37,
                color:  ColorConstants.background,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Tekrar hoş geldiniz,\n özlendiniz!",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: ColorConstants.black,
                height: 1.2,
                fontWeight: FontWeight.bold,
              ),
              /*style: TextStyle(fontSize: 27, color: AppColor.black,
              //  height: 1.2,
               fontWeight: FontWeight.w500,
               ),*/
            ),
            SizedBox(height: size.height * 0.04),
            // for username and password
            myTextField("Kullanıcı Adı", Colors.white),
            myTextField("Şifre", Colors.black26),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Şifremi unuttum     ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // for sign in button
                  InkWell(
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: ColorConstants.primaryColor,
                        boxShadow: const[BoxShadow(offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                        )],
                        borderRadius: BorderRadius.circular(20),//giriş yap butonun oval oluşumu sağlıyor.
                      ),
                      child: const Center(
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.home, (route) => false
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: size.width * 0.2,
                        color: Colors.black12,
                      ),
                      const Text(
                        "  Veya ile devam edin   ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  ColorConstants.background,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: size.width * 0.2,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      socialIcon("assets/google.png"),
                      socialIcon("assets/apple.png"),
                      socialIcon("assets/facebook.png"),
                    ],
                  ),
                  SizedBox(height: size.height * 0.07),
                  const Text.rich(
                    TextSpan(
                      text: "Üye değil? ",
                      style: TextStyle(
                        color: ColorConstants.background,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      children:  [ TextSpan(
                      text: "Şimdi üye Ol",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),)]
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Container socialIcon(image) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }

  Container myTextField(String hint, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 22,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 19,
            ),
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: color,
            )),
      ),
    );
  }
}