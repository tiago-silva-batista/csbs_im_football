import 'package:csbs_im_football/components/app_bar_component.dart';
import 'package:csbs_im_football/components/avatar_component.dart';
import 'package:csbs_im_football/components/button_component.dart';
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
  final String userName = "Tiago Silva Batista";
  final String userImage = "assets/images/perfil.jpeg";
  final String userCover =
      "https://placar.abril.com.br/wp-content/uploads/2021/09/arenacorinthians.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(6),
                image: DecorationImage(
                  image: NetworkImage(userCover),
                  fit: BoxFit.cover,
                ),
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
                  const SizedBox(height: UiSize.spaceDefault - 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AvatarComponent(
                            avatar: userImage,
                            callback: (value) {},
                          ),
                          const SizedBox(width: UiSize.spaceDefault),
                          Text(
                            userName,
                            style: UiTextStyle.text1,
                          ),
                        ],
                      ),
                      ButtonComponent(
                        label: 'Adicionar',
                        callback: (value) {},
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
