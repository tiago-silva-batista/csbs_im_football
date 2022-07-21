import 'package:csbs_im_football/components/app_bar_component.dart';
import 'package:csbs_im_football/theme/ui_size.dart';
import 'package:csbs_im_football/theme/ui_text.dart';
import 'package:flutter/material.dart';

class PerfilPages extends StatefulWidget {
  const PerfilPages({Key? key}) : super(key: key);

  @override
  State<PerfilPages> createState() => _PerfilPagesState();
}

class _PerfilPagesState extends State<PerfilPages> {
  get width => null;
  final int matchNumber = 32;
  final String userName = "Tiago Silva";
  final String userImage = "assets/images/perfil.jpeg";
  final String userCover = "assets/images/stadium.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBarComponent(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Image.asset(userCover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      matchNumber.toString() + " jogos",
                      style: UiTextStyle.text2,
                    ),
                    const SizedBox(height: UiSize.spaceDefault),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(userImage),
                        ),
                        const SizedBox(width: UiSize.spaceDefault),
                        Text(
                          userName,
                          style: UiTextStyle.text1,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
