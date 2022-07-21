import 'package:csbs_im_football/theme/ui_color.dart';
import 'package:csbs_im_football/theme/ui_text.dart';
import 'package:flutter/cupertino.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent({required Function callback, required String label})
      : _callback = callback,
        _label = label;

  final Function _callback;
  final String _label;

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  void OnTap() {
    print('Botão funcionando');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => OnTap(),
      child: Container(
        width: 120,
        height: 36,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget._label,
            style: UiTextStyle.textButton,
          ),
        ),
        decoration: const BoxDecoration(
          color: UiColor.first,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
