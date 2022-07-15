import 'package:csbs_im_football/components/app_bar_component.dart';
import 'package:flutter/material.dart';

class PerfilPages extends StatefulWidget {
  const PerfilPages({Key? key}) : super(key: key);

  @override
  State<PerfilPages> createState() => _PerfilPagesState();
}

class _PerfilPagesState extends State<PerfilPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBarComponent(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Image.asset("assets/images/stadium.jpg"),
                ),
              ),
            ],
          ),
        ));
  }
}
