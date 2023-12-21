import 'package:flutter/material.dart';
import 'package:jps/constant/constant.dart';
import 'package:jps/views/home/home.dart';
import 'package:jps/views/login/provider/login_provider.dart';
import 'package:jps/views/widgets/textform.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: textStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextFormWidget(
                  controller: nameController,
                  title: 'UserName',
                ),
              ),
            ),
            kHeight,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextFormWidget(
                    controller: passController,
                    title: 'Pass',
                  )),
            ),
            TextButton(
                onPressed: () {},
                child: RichText(
                    text: TextSpan(text: 'Forgot Password?', style: fText))),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                50,
              )),
              child: TextButton(
                  onPressed: () async {
                    await provider.postLogin(
                        nameController.text, passController.text);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
                  },
                  style: TextButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width / 1.5,
                          MediaQuery.sizeOf(context).height / 14.5),
                      backgroundColor: buttonColor,
                      foregroundColor: kwhiteColor,
                      side: const BorderSide(style: BorderStyle.solid)),
                  child: Text(
                    'SignIn',
                    style: signInText,
                  )),
            ),
            kHeight,
            const Divider(
              color: colorgrey,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            const Text('Or SignIn With'),
            kHeight,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey.withOpacity(0.4),
                  height: 50,
                  child: IconButton(
                      onPressed: () async {},
                      icon: const Icon(
                        Icons.face_unlock_outlined,
                        size: 30,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.grey.withOpacity(0.4),
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fingerprint,
                        size: 30,
                      )),
                ),
              ],
            ),
            kHeight,
            Container(
              width: MediaQuery.sizeOf(context).width * 0.30,
              height: MediaQuery.sizeOf(context).height / 17,
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'English',
                    style: signInText,
                  ),
                  const Icon(
                    Icons.arrow_drop_down_outlined,
                    color: kwhiteColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
