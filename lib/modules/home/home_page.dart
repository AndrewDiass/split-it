import 'package:flutter/material.dart';

import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  temp() {}

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180.0),
          child: Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(gradient: AppTheme.gradients.background),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 48,
                      width: 48,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(user.photoUrl!),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Olá, ",
                          style: AppTheme.textStyles.helloAppBar),
                      TextSpan(
                          text: user.name!,
                          style: AppTheme.textStyles.nameAppBar)
                    ])),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1,
                        color: Colors.white.withOpacity(.25),
                        style: BorderStyle.solid),
                  ),
                  width: 48,
                  height: 48,
                  child: Image.asset(
                    "assets/images/plus.png",
                    width: 6,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
