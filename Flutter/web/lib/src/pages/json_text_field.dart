import 'package:flutter_web/material.dart';
import 'package:json_to_dart/src/utils/provider/provider.dart';


class JsonTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TextEditingController>(
      builder: (context, controller, _) {
        return Container(
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0)),
          child: TextField(
              controller: controller,
              maxLines: null,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "输入你的Json，然后点击格式化按钮",
                  hintStyle: TextStyle(color: Colors.grey))),
        );
      },
    );
  }
}
