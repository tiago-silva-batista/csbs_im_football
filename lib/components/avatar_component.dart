import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarComponent extends StatefulWidget {
  const AvatarComponent({Function? callback, required String avatar})
      : _callback = callback,
        _avatar = avatar;

  final Function? _callback;
  final String _avatar;

  @override
  State<AvatarComponent> createState() => _AvatarComponentState();
}

class _AvatarComponentState extends State<AvatarComponent> {
  void OnTap() {
    widget._callback != null
        ? print("Está funcionando")
        : print('Não habilitado');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        radius: 16,
        backgroundImage: AssetImage(widget._avatar),
      ),
      onTap: () => OnTap(),
    );
  }
}
