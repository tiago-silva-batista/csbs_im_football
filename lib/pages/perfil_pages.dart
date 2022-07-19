import 'package:csbs_im_football/components/app_bar_component.dart';
import 'package:csbs_im_football/theme/ui_text.dart';
import 'package:flutter/material.dart';

class PerfilPages extends StatefulWidget {
  const PerfilPages({Key? key}) : super(key: key);

  @override
  State<PerfilPages> createState() => _PerfilPagesState();
}

class _PerfilPagesState extends State<PerfilPages> {
  get width => null;

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
                  child: Image.asset("assets/images/stadium.jpg"),
                ),
              ),
              Column(
                children: [
                  const Text("Número de jogos frequentados: 32"),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage("assets/images/perfil.jpeg"),
                      ),
                      Text(
                        'Seu Nome',
                        style: UiTextStyle.text1,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
